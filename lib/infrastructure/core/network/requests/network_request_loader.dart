import 'dart:async';

import 'package:dio/dio.dart';
import 'package:github_user_search_app/infrastructure/core/log/logger.dart';
import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:github_user_search_app/infrastructure/core/network/requests/i_network_request_loader.dart';
import 'package:github_user_search_app/infrastructure/core/network/github_api_client.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:mockito/mockito.dart';

@prod
@dev
@LazySingleton(as: INetworkRequestLoader)
class NetworkRequestLoader implements INetworkRequestLoader {
  final NetworkExecutor _executor;
  final Map<String, INetworkRequestLoaderObserver> _observers = <String, INetworkRequestLoaderObserver>{};

  NetworkRequestLoader(this._executor);

  @override
  Stream<T> loadRequest<T>(NetworkRequest api) {
    final controller = StreamController<T>();
    api.makeRequest().then((request) {
      //   this._logRequest(this._executor.baseURL + request.url, request.method, request.headers, request.parameters);
      _executor.requestWith(request).asStream().listen((response) {
        _parseResponse(response, api, controller);
      }, onError: (e) {
        _parseResponse(e.response as Response, api, controller);
      });
    });
    return controller.stream;
  }

  @override
  Stream<List<T>> loadMultiPageRequest<T>(ListNetworkRequest<T> api) {
    final results = NetworkListData<T>();
    return _loadDataRecursivePage(api, 1, api.maxItemPerRequest, results).flatMap((value) {
      return Stream.value(results.items);
    });
  }

  Stream<void> _loadDataRecursivePage<T>(
      ListNetworkRequest<T> api, int startPage, int limit, NetworkListData<T> results) {
    return _loadDataPage(api, startPage, api.maxItemPerRequest).flatMap((result) {
      results.append(result.items);
      if (result.items.length == api.maxItemPerRequest) {
        return _loadDataRecursivePage(api, startPage + 1, limit, results);
      } else {
        return Stream.value(null);
      }
    });
  }

  Stream<NetworkListData<T>> _loadDataPage<T>(ListNetworkRequest<T> api, int page, int limit) {
    final controller = StreamController<NetworkListData<T>>();
    api.makeRequest().then((request) {
      final parameters = request.parameters;
      parameters["limit"] = limit;
      parameters["offset"] = (page - 1) * limit;
      //   this._logRequest(this._executor.baseURL + request.url, request.method, request.headers, parameters);
      _executor.requestWith(request).asStream().listen((response) {
        _parseResponse(response, api, controller);
      }, onError: (e) {
        _parseResponse(e.response as Response, api, controller);
      });
    });
    return controller.stream;
  }

  @override
  Stream<T> loadExternalResource<T>(NetworkRequest api) {
    final controller = StreamController<T>();
    api.makeRequest().then((request) {
      //  this._logRequest(request.url, request.method, request.headers, request.parameters);
      _executor.requestWith(request).asStream().listen((response) {
        _parseResponse(response, api, controller);
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
        final networkError = NetworkError(statusCode: -1, message: "");
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