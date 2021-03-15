import 'package:dio/dio.dart';

abstract class DioGithubInterceptorsDidRefreshToken {
  void didRefreshToken(String accessToken, String refreshToken, int accessTokenExpiresIn);
}

class DioGithubInterceptors extends InterceptorsWrapper {
  String _accessToken;
  String _refreshToken;
  Dio previous;
  Dio refreshDio = Dio();

  // ignore: avoid_setters_without_getters
  set refreshToken(String value) {
    _refreshToken = value;
  }

  // ignore: avoid_setters_without_getters
  set accessToken(String value) {
    _accessToken = value;
  }

  DioGithubInterceptorsDidRefreshToken delegate;

  @override
  Future onRequest(RequestOptions options) async {
    if (!options.uri.toString().contains("auth/register-anonymous") &&
        !options.uri.toString().contains("v2.1/rpc/auth/token/refresh") &&
        !options.uri.toString().contains("logs-int.linkplatforms.com") &&
        _accessToken != null) {
      options.headers["Authorization"] = "Bearer $_accessToken";
    }
    return options;
  }

  @override
  Future onError(DioError err) async {
    // Assume 401 stands for token expired
    if (err.response?.statusCode == 401 && err.response?.data["_error"] == 401011) {
      RequestOptions options = err.request;
      // If the token has been updated, repeat directly.
      String token = "Bearer $_accessToken";
      if (token != options.headers["Authorization"]) {
        options.headers["Authorization"] = token;
        return previous.request(options.path, options: options);
      }

      // Lock to block the incoming request until the token updated
      previous.lock();
      previous.interceptors.responseLock.lock();
      previous.interceptors.errorLock.lock();
      try {
        final Response responseRefresh = await refreshDio.post(
          "${options.baseUrl}/v2.1/rpc/auth/token/refresh",
          data: {"refreshToken": _refreshToken ?? ""},
        );

        final json = responseRefresh.data;
        final String accessToken = json["accessToken"] as String;
        final String refreshToken = json["refreshToken"] as String;
        final int accessTokenExpiresIn = json["accessTokenExpiresIn"] as int;
        _refreshToken = refreshToken;
        _accessToken = accessToken;
        if (delegate != null) {
          delegate.didRefreshToken(accessToken, refreshToken, accessTokenExpiresIn);
        }
        //update token based on the new refresh token
        options.headers["Authorization"] = "Bearer $_accessToken";
        previous.unlock();
        previous.interceptors.responseLock.unlock();
        previous.interceptors.errorLock.unlock();

        // repeat the request with a new options
        return previous.request(options.path, options: options);
      } catch (e) {
        return e;
      }
    }
    return err;
  }
}
