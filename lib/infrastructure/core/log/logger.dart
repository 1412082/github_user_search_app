class Logger {
  Logger._();
  static void logInfo(String message) {
    print("[Info] $message");
  }

  static void logError(String message, {StackTrace stackTrace}) {
    print("[Error] $message, stack trace: $stackTrace");
  }
}