import 'package:dio/dio.dart' as dio;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';

part 'network_error.freezed.dart';

class NetworkError extends Error {
  final int statusCode;
  final String message;
  final dio.Response<dynamic> response;
  final NetworkErrorType errorType;

  NetworkError({
    this.errorType,
    this.statusCode,
    this.message,
    this.response,
  });

  /// Create no network error. Usually for test
  factory NetworkError.noNetwork() => NetworkError(
        errorType: const NetworkErrorType.noNetwork(),
        statusCode: -1,
      );

  factory NetworkError.timeOut() => NetworkError(
        errorType: const NetworkErrorType.timeout(),
      );

  bool isServer5xxError() {
    if (statusCode >= 500 && statusCode < 599) {
      return true;
    } else {
      return false;
    }
  }

  bool isNoNetwork() => statusCode == -1;

  bool isUnauthorisedError() {
    throw UnimplementedError();
  }

  bool needReAuthenticate() {
    throw UnimplementedError();
  }
}

@freezed
abstract class NetworkErrorType with _$NetworkErrorType {
  const factory NetworkErrorType.unknown() = _Unknown;

  const factory NetworkErrorType.noNetwork() = _NoNetwork;

  const factory NetworkErrorType.timeout() = _Timeout;
}
