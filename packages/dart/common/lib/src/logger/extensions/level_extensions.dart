import 'package:logging/logging.dart';

import '../log_level.dart';

final Map<LogLevel, Level> _levels = {
  LogLevel.all: Level.ALL,
  LogLevel.finest: Level.FINEST,
  LogLevel.finer: Level.FINER,
  LogLevel.fine: Level.FINE,
  LogLevel.config: Level.CONFIG,
  LogLevel.info: Level.INFO,
  LogLevel.warning: Level.WARNING,
  LogLevel.severe: Level.SEVERE,
  LogLevel.shout: Level.SHOUT,
  LogLevel.off: Level.OFF,
};

/// Extension that provides conversion from [LogLevel] to Dart's [Level].
extension LevelExtensions on LogLevel {
  /// Converts this [LogLevel] to the corresponding Dart [Level].
  Level toLevel() => _levels[this] ?? Level.OFF;
}
