import 'package:dio/dio.dart' as dio;
import 'package:github_user_search_app/infrastructure/core/log/logger.dart';
import 'package:github_user_search_app/infrastructure/core/network/dio/dio_github_interceptors.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/core/network/network_config.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

abstract class GithubClientDelegate {
  void didRefreshToken(String accessToken, String refreshToken, int accessTokenExpiresIn);
}

abstract class INetworkExecutor {
  String baseURL;

  void clearTokenAndClearRequests();

  void setToken({String accessToken, String refreshToken});

  void setDefaultHeader(String key, String value);

  Future<dio.Response> requestWith(Request request);
}

@prod
@dev
@Injectable(as: INetworkExecutor)
class GithubApiClient extends ApiClient implements DioGithubInterceptorsDidRefreshToken, INetworkExecutor {
  DioGithubInterceptors oauth2Interceptor;
  final INetworkConfig _networkConfig;

  // CacheInterceptors _cacheInterceptors;

  @override
  void setToken({String accessToken, String refreshToken}) {
    oauth2Interceptor.accessToken = accessToken;
    oauth2Interceptor.refreshToken = refreshToken;
    oauth2Interceptor.previous = client;
    oauth2Interceptor.delegate = this;
  }

  @override
  void clearTokenAndClearRequests() {
    cancelRequests();
    _clearToken();
  }

  void _clearToken() {
    oauth2Interceptor.accessToken = null;
    oauth2Interceptor.refreshToken = null;
  }

  GithubApiClient(this._networkConfig)
      : super(
          baseURL: _networkConfig.baseURL,
          requestTimeout: _networkConfig.requestTimeout,
          interceptors: _networkConfig.interceptors,
          defaultHeaders: _networkConfig.defaultHeaders,
        );

  @override
  void didRefreshToken(String accessToken, String refreshToken, int accessTokenExpiresIn) {
    Logger.logInfo("AccessToken did refresh: $accessToken");
    // TODO: implement didRefreshToken
  }

  @override
  set baseURL(String _baseURL) {
    // TODO: implement baseURL
  }

  @override
  void setDefaultHeader(String key, String value) {
    // TODO: implement setDefaultHeader
  }
}

@test
@Injectable(as: INetworkExecutor)
class MockApiClient extends Mock implements INetworkExecutor {}
