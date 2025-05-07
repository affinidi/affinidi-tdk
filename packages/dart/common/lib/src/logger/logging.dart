import 'dart:async';

import 'log_level.dart';

/// A logging interface that defines the logging functionality in the Affinidi TDK.
///
/// This interface provides a standardized way to log messages with different severity levels,
/// along with optional error message and stack trace.
///
/// Example usage:
/// ```dart
/// final logger = DartLogger(environment: environment);
/// logger.log(LogLevel.info, 'Application started');
/// logger.log(LogLevel.error, 'Failed to connect', error, stackTrace);
/// ```
abstract interface class Logging {
  /// Logs a message with the specified log level.
  ///
  /// The [logLevel] determines the severity of the message.
  /// The [message] is the main content to be logged.
  /// Optionally, an [error] object and [stackTrace] can be provided for error logging.
  /// The [zone] parameter can be used to specify the zone in which the logging occurred.
  void log(LogLevel logLevel, Object? message,
      [Object? error, StackTrace? stackTrace, Zone? zone]);
}
