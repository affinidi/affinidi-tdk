/// Defines the severity levels for logging in the Affinidi TDK.
enum LogLevel {
  /// All messages will be logged.
  all,

  /// Detailed tracing information.
  finest,

  /// Slightly detailed tracing information.
  finer,

  /// Tracing information.
  fine,

  /// Static configuration messages.
  config,

  /// General informational messages.
  info,

  /// Potentially harmful situations.
  warning,

  /// Serious failures.
  severe,

  /// Critical failures.
  shout,

  /// No messages will be logged.
  off,
  ;
}
