import 'dart:typed_data';

import 'package:github_user_search_app/infrastructure/network/requests/request.dart';

/// General abstraction of http request.
abstract class NetworkRequest<T> {
  /// Creating request before send to server. This could throw exception on casting values.
  Future<Request> makeRequest();

  /// Checking whether response is bytes or not
  bool get isResponseWithBytes => false;

  Future<T> parseData(Map<String, dynamic> data);
}

abstract class JsonNetworkRequest<T> extends NetworkRequest<T> {
  T Function(Map<String, dynamic> data) _factory;

  JsonNetworkRequest(T Function(Map<String, dynamic> data) factory) {
    _factory = factory;
  }

  @override
  Future<T> parseData(Map<String, dynamic> data) {
    return Future.value(_factory(data));
  }
}

abstract class CustomDataNetworkRequest<T> extends NetworkRequest<T> {}

class NetworkListData<T> {
  List<T> items;

  NetworkListData({List<T> items}): items = List.from(items ?? []);

  void append(List<T> newResults) {
    items.addAll(newResults);
  }
}

abstract class ListNetworkRequest<T> extends NetworkRequest<NetworkListData<T>> {
  int get maxItemPerRequest => 100;

  T Function(Map<String, dynamic> data) _factory;

  ListNetworkRequest(T Function(Map<String, dynamic> data) factory) {
    _factory = factory;
  }

  @override
  Future<NetworkListData<T>> parseData(Map<String, dynamic> data) {
    final response = NetworkListData<T>();
    //TODO: handle parse data
    // final list = data["_items"];
    // try {
    //   if (list is List && list != null && list.isNotEmpty) {
    //     response.items = list.map((e) => _factory(e)).toList();
    //   }
    // } catch (e) {
    //   FSLog.fsLogError(() => "Parse response error: ${e}");
    // }
    return Future.value(response);
  }
}

abstract class JsonMapNetworkRequest extends NetworkRequest<Map<String, dynamic>> {
  JsonMapNetworkRequest();

  @override
  Future<Map<String, dynamic>> parseData(data) async {
    return data;
  }
}

