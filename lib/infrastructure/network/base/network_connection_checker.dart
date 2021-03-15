import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:rxdart/rxdart.dart';

/// Represents the status of the data connection.
/// Returned by [DataConnectionChecker.connectionStatus]
enum NetworkConnectionStatus {
  disconnected,
  connected,
}

abstract class NetworkConnectionProtocol {
  /// Check if has connection to the internet.
  Future<bool> hasConnection();

  /// Stream of status changed
  Stream<NetworkConnectionStatus> get onStatusChange;
}

class NetworkConnection extends NetworkConnectionProtocol {
  @override
  Future<bool> hasConnection() => DataConnectionChecker().hasConnection;

  @override
  Stream<NetworkConnectionStatus> get onStatusChange =>
      DataConnectionChecker().onStatusChange.flatMap((value) => Stream.value(_convertDataConnectionStatus(value)));
}

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