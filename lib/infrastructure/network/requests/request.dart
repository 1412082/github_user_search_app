import 'package:dio/dio.dart' as dio;
import 'package:github_user_search_app/infrastructure/network/base/api_client.dart';

/// Wrapper of [dio.ResponseType]
enum ResponseType {
  bytes,
  json,
  plain,
}
/// Http request config directly use by [ApiClient]
class Request {
  final String url;
  final Map<String, dynamic> parameters;
  final Map<String, String> queries;
  final HttpMethod method;
  final Map<String, String> headers;
  final ResponseType type;

  Request({
    this.url,
    this.method,
    this.queries,
    this.parameters,
    this.headers,
    this.type = ResponseType.json,
  });
}
