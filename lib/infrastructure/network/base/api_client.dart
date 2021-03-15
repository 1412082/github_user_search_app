import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';
import 'package:github_user_search_app/infrastructure/log/logger.dart';
import 'package:github_user_search_app/infrastructure/network/requests/request.dart';
import 'package:injectable/injectable.dart';

enum HttpMethod { get, post }

/// Http client wrapper.
@injectable
class ApiClient {
  /// Base url to server.
  ///
  /// E.x: https://api.github.com
  final String baseURL;

  /// Dio client to request http.
  final dio.Dio client;

  /// Default empty for all request.
  final Map<String, String> _defaultHeaders;

  /// Token for canceling request.
  dio.CancelToken _cancelToken;

  ApiClient({
    this.baseURL,
    List<dio.Interceptor> interceptors,
    Map<String, String> defaultHeaders,
    Duration requestTimeout = const Duration(seconds: 30),
  })  : _defaultHeaders = defaultHeaders ?? {},
        _cancelToken = dio.CancelToken(),
        client = dio.Dio()
          ..interceptors.addAll(interceptors)
          ..options.connectTimeout = requestTimeout.inMilliseconds
          ..options.baseUrl = baseURL;

  Future<dio.Response> _request({
    String url,
    HttpMethod method,
    Map<String, dynamic> parameters,
    Map<String, String> additionalHeaders,
    @required dio.CancelToken cancelToken,
    dio.Options options,
  }) {
    if (additionalHeaders != null) {
      additionalHeaders.forEach((key, value) {
        options.headers[key] = value;
      });
    }
    _defaultHeaders.forEach((key, value) {
      options.headers[key] = value;
    });

    final requestURL = url;
    Future<dio.Response> futureResponse;
    switch (method) {
      case HttpMethod.get:
        futureResponse =
            client.get(requestURL, queryParameters: parameters, options: options, cancelToken: cancelToken);
        break;
      case HttpMethod.post:
        futureResponse = client.post(requestURL, data: parameters, options: options, cancelToken: cancelToken);
        break;
      default:
        futureResponse =
            client.get(requestURL, queryParameters: parameters, options: options, cancelToken: cancelToken);
    }
    return futureResponse;
  }

  Future<dio.Response> requestWith(Request request) async {
    dio.Options options;
    switch (request.type) {
      case ResponseType.bytes:
        options = dio.Options(responseType: dio.ResponseType.bytes);
        break;
      case ResponseType.json:
        options = dio.Options(responseType: dio.ResponseType.json);
        break;
      case ResponseType.plain:
        options = dio.Options(responseType: dio.ResponseType.plain);
        break;
    }

    return _request(
            url: request.url,
            method: request.method,
            parameters: request.parameters,
            additionalHeaders: request.headers,
            cancelToken: _cancelToken,
            options: options)
        .catchError((e) {
      Logger.logError('Request fail to api ${request.url}');
      return Future.error(e);
    });
  }

  /// Cancel all requests called from current client.
  void cancelRequests() {
    _cancelToken.cancel("Cancel requests");
    // recreate cancel token.
    _cancelToken = dio.CancelToken();
  }
}
