import 'package:injectable/injectable.dart';

/// Represents the status of the data connection.
///
/// Returned by [DataConnectionChecker.connectionStatus]
enum NetworkConnectionStatus {
  disconnected,
  connected,
}

abstract class INetworkConnectionChecker {
  /// Check if has connection to the internet.
  Future<bool> hasConnection();

  /// Stream of status changed
  Stream<NetworkConnectionStatus> get onStatusChange;
}
