import 'dart:async';

import 'package:meta/meta.dart';

import '../environment.dart';
import 'dart_logger.dart';
import 'extensions/level_extensions.dart';
import 'log_level.dart';
import 'logging.dart';

/// A class to log debug information even in release mode
///
/// The loggers are controlled via the environment variable `AFFINIDI_TDK_LOG_LEVEL`
/// This can be set to:
/// - 'ALL'
/// - 'FINEST'
/// - 'FINER'
/// - 'FINE'
/// - 'CONFIG'
/// - 'INFO'
/// - 'WARNING'
/// - 'SEVERE'
/// - 'SHOUT'
/// - 'OFF'
class Logger {
  static final Logger _instance = Logger._();

  /// Returns the singleton instance of [Logger].
  static Logger get instance => _instance;

  Logger._({Environment? environment})
      : _environment = environment ?? Environment.fetchEnvironment();

  @visibleForTesting

  /// Creates a new instance of [Logger] with the specified [_environment].
  Logger(this._environment);

  final Environment _environment;

  late final List<Logging> _loggers = [
    DartLogger(environment: _environment),
  ];

  /// Adds a log record for a [message] at a particular [logLevel] if logging is enabled via the environment variable `AFFINIDI_TDK_LOG_LEVEL`.
  ///
  /// Use this method to create log entries for user-defined levels. To record a message at a predefined level (e.g. [LogLevel.info], [LogLevel.warning], etc)
  /// Optional [component] parameter can be provided to add context about which component is generating the log.
  void log(
    LogLevel logLevel,
    Object? message, {
    String? component,
    Object? error,
    StackTrace? stackTrace,
    Zone? zone,
  }) {
    if (logLevel.toLevel() < _environment.logLevel.toLevel()) return;

    final formattedMessage =
        component != null ? '[$component] $message' : message;

    for (final logger in _loggers) {
      logger.log(logLevel, formattedMessage, error, stackTrace, zone);
    }
  }

  /// Logs a message at INFO level
  void info(Object? message, {String? component}) {
    log(LogLevel.info, message, component: component);
  }

  /// Logs a message at SEVERE (ERROR) level
  void error(Object? message,
      {String? component, Object? error, StackTrace? stackTrace}) {
    log(LogLevel.severe, message,
        component: component, error: error, stackTrace: stackTrace);
  }

  /// Logs a message at WARNING level
  void warning(Object? message, {String? component}) {
    log(LogLevel.warning, message, component: component);
  }

  /// Logs a message at FINE (DEBUG) level
  void debug(Object? message, {String? component}) {
    log(LogLevel.fine, message, component: component);
  }

  /// Logs a message at FINEST (TRACE) level
  void trace(Object? message, {String? component}) {
    log(LogLevel.finest, message, component: component);
  }

  /// Logs a message at CONFIG level
  void config(Object? message, {String? component}) {
    log(LogLevel.config, message, component: component);
  }
}
