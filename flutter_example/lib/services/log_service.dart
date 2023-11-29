import 'dart:developer' as dev;

class LoggingService {
  void logError<T>(T exception) {
    dev.log(exception.toString());
  }

  void logInfo<T>(T message) {
    dev.log(message.toString());
  }
}
