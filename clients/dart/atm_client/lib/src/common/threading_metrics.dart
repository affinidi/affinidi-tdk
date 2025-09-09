/// Metrics for DIDComm threading implementation.
class ThreadingMetrics {
  int _messagesWithThreadId = 0;
  int _messagesWithoutThreadId = 0;
  int _legacyFallbackUsage = 0;

  /// Increment count of messages with thread ID.
  void incrementWithThreadId() => _messagesWithThreadId++;

  /// Increment count of messages without thread ID.
  void incrementWithoutThreadId() => _messagesWithoutThreadId++;

  /// Increment count of legacy fallback usage.
  void incrementLegacyFallback() => _legacyFallbackUsage++;

  /// Get count of messages with thread ID.
  int get messagesWithThreadId => _messagesWithThreadId;

  /// Get count of messages without thread ID.
  int get messagesWithoutThreadId => _messagesWithoutThreadId;

  /// Get count of legacy fallback usage.
  int get legacyFallbackUsage => _legacyFallbackUsage;

  /// Reset all metrics.
  void reset() {
    _messagesWithThreadId = 0;
    _messagesWithoutThreadId = 0;
    _legacyFallbackUsage = 0;
  }
}
