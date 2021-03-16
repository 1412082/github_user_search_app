import 'package:dio/dio.dart' as dio;

class NetworkError extends Error {
  int statusCode;
  String message;
  dio.Response<dynamic> response;

  NetworkError({this.statusCode, this.message, this.response});

  bool isServer5xxError() {
    if (statusCode >= 500 && statusCode < 599) {
      return true;
    } else {
      return false;
    }
  }

  bool isNoNetwork() {
    return statusCode == -1;
  }

  bool isUnauthorisedError() {
    throw UnimplementedError();
  }

  bool needReAuthenticate() {
    throw UnimplementedError();
  }
}