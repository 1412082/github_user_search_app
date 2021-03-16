import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

abstract class INetworkConfig {
  String get baseURL;

  Duration get requestTimeout;

  List<Interceptor> get interceptors;

  Map<String, String> get defaultHeaders;
}

@prod
@Injectable(as: INetworkConfig)
class ProductionNetworkConfig implements INetworkConfig {
  @override
  String get baseURL => 'https://api.github.com';

  @override
  List<Interceptor> get interceptors => [];

  @override
  Duration get requestTimeout => const Duration(seconds: 10);

  @override
  Map<String, String> get defaultHeaders => {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptCharsetHeader: 'utf-8',
        HttpHeaders.userAgentHeader: 'flutter',
        HttpHeaders.acceptHeader: 'application/vnd.github.v3.text-match+json',
      };
}

@dev
@Injectable(as: INetworkConfig)
class DevNetworkConfig implements INetworkConfig {
  @override
  String get baseURL => 'https://api.github.com';

  @override
  List<Interceptor> get interceptors => [];

  @override
  Duration get requestTimeout => const Duration(seconds: 30);

  @override
  Map<String, String> get defaultHeaders => {
        HttpHeaders.contentTypeHeader: 'application/json',
        HttpHeaders.acceptCharsetHeader: 'utf-8',
        HttpHeaders.userAgentHeader: 'flutter',
        HttpHeaders.acceptHeader: 'application/vnd.github.v3.text-match+json',
      };
}

@test
@Injectable(as: INetworkConfig)
class MockNetworkConfig extends Mock implements INetworkConfig {}
