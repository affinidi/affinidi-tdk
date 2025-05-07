import 'dart:async';

import 'package:logging/logging.dart';

import '../environment.dart';
import 'extensions/level_extensions.dart';
import 'log_level.dart';
import 'logging.dart';

/// An implementation of the [Logging] interface
class DartLogger implements Logging {
  late Logger _logger;

  /// The minimum log level that will be output, based on the environment configuration.
  late Level environmentLevel;

  /// Creates a new instance of [DartLogger].
  ///
  /// The [environment] parameter is required and determines the minimum log level
  /// that will be output.
  ///
  /// If the environment's log level is set to [Level.OFF], no logging will occur.
  DartLogger({required Environment environment}) {
    environmentLevel = environment.logLevel.toLevel();
    Logger.root.level = environmentLevel;

    if (environmentLevel != Level.OFF) {
      Logger.root.onRecord.listen((record) {
        if (record.level < environmentLevel) return;

        // ignore: avoid_print
        print('${record.level.name}: ${record.time}: ${record.message}');
      });
    }

    _logger = Logger('AffinidiTDK.Logger');
  }

  @override
  void log(LogLevel logLevel, Object? message,
      [Object? error, StackTrace? stackTrace, Zone? zone]) {
    final level = logLevel.toLevel();
    if (level < environmentLevel) return;

    _logger.log(level, message, error, stackTrace, zone);
  }
}
