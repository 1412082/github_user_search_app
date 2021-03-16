import 'package:github_user_search_app/infrastructure/core/network/network.dart';
import 'package:uuid/uuid.dart';

abstract class INetworkRequestLoaderObserver {
  void networkError(NetworkError e);
  String get networkRequestObserverId => Uuid().v1().toString();
}

abstract class INetworkRequestLoader {
  Stream<T> loadRequest<T>(NetworkRequest<T> api);
  void registerObserver(INetworkRequestLoaderObserver observer);
  void unregisterObserver(INetworkRequestLoaderObserver observer);
}