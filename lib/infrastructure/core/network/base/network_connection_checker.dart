import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:github_user_search_app/infrastructure/core/network/base/i_network_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:rxdart/rxdart.dart';

@prod
@dev
@LazySingleton(as: INetworkConnectionChecker)
class NetworkConnectionChecker extends INetworkConnectionChecker {
  @override
  Future<bool> hasConnection() => DataConnectionChecker().hasConnection;

  @override
  Stream<NetworkConnectionStatus> get onStatusChange =>
      DataConnectionChecker().onStatusChange.flatMap((value) => Stream.value(_convertDataConnectionStatus(value)));
}

@test
@LazySingleton(as: INetworkConnectionChecker)
class MockNetworkConnectionChecker extends Mock implements INetworkConnectionChecker {}

NetworkConnectionStatus _convertDataConnectionStatus(DataConnectionStatus status) {
  switch (status) {
    case DataConnectionStatus.disconnected:
      return NetworkConnectionStatus.disconnected;
    case DataConnectionStatus.connected:
      return NetworkConnectionStatus.connected;
    default:
      return NetworkConnectionStatus.disconnected;
  }
}
