import 'dart:async';

import 'package:dio/dio.dart';
import 'package:github_user_search_app/infrastructure/core/log/logger.dart';
import 'package:github_user_search_app/infrastructure/core/network/github_api_client.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/core/network/requests/i_network_request_loader.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@prod
@dev
@LazySingleton(as: INetworkRequestLoader)
class NetworkRequestLoader implements INetworkRequestLoader {
  final INetworkExecutor _executor;
  final Map<String, INetworkRequestLoaderObserver> _observers = <String, INetworkRequestLoaderObserver>{};

  NetworkRequestLoader(this._executor);

  @override
  Stream<T> loadRequest<T>(NetworkRequest api) {
    final controller = StreamController<T>();
    api.makeRequest().then((request) {
      _executor.requestWith(request).asStream().listen((response) {
        _parseResponse(response, api, controller);
      }, onError: (e) {
        try {
          _parseResponse(e.response as Response, api, controller);
        } catch (exception) {
          _parseResponse(null, api, controller);
        }
      });
    });
    return controller.stream;
  }

  void _parseResponse<T>(Response<dynamic> response, NetworkRequest api, StreamController<T> controller) {
    try {
      if (response != null) {
        if (response.statusCode >= 200 && response.statusCode < 300) {
          // TODO: check type cast safety.
          api.parseData(response.data as Map<String, dynamic>).then((value) {
            controller.add(value as T);
            controller.close();
          });
        } else if (response.statusCode >= 500 && response.statusCode < 600) {
          final networkError = NetworkError(statusCode: response.statusCode);
          controller.addError(networkError);
          controller.close();
          _notifyObserver(networkError);
        } else if (response.statusCode == 401) {
          final networkError = NetworkError(
            statusCode: response.statusCode,
            response: response,
            message: response.statusMessage,
          );
          controller.addError(networkError);
          controller.close();
          _notifyObserver(networkError);
        } else {
          final networkError = NetworkError(
            statusCode: response.statusCode,
            response: response,
            message: response.statusMessage,
          );
          controller.addError(networkError);
          controller.close();
          _notifyObserver(networkError);
        }
      } else {
        final networkError = NetworkError.noNetwork();
        controller.addError(networkError);
        _notifyObserver(networkError);
      }
    } catch (e) {
      Logger.logInfo("[NetworkRequestLoader] parseResponse failed with error $e");
    }
  }

  /// Notify all [_observers] if error occurred.
  void _notifyObserver(NetworkError e) {
    _observers.forEach((key, value) {
      value.networkError(e);
    });
  }

  @override
  void registerObserver(INetworkRequestLoaderObserver observer) {
    _observers[observer.networkRequestObserverId] = observer;
  }

  @override
  void unregisterObserver(INetworkRequestLoaderObserver observer) {
    _observers.remove(observer.networkRequestObserverId);
  }
}

@test
@LazySingleton(as: INetworkRequestLoader)
class MockNetworkLoader extends Mock implements NetworkRequestLoader {}
