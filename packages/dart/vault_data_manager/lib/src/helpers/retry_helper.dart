import 'dart:async';
import 'dart:math';

/// A typedef that defines a predicate function used to determine whether
/// a retry should be attempted based on the provided error.
///
/// The function takes an [Object] representing the error as input and
/// returns a [bool] indicating whether the operation should be retried.
typedef RetryPredicate = bool Function(Object error);

/// A helper class that provides functionality for retrying operations.
class RetryHelper {
  /// A utility method to retry an asynchronous operation with exponential backoff.
  ///
  /// - [operation] (required) - asynchronous function to be executed.
  /// - [maxAttempts] (optional) - maximum number of attempts to execute the operation. Must be >= 1. Default is 5.
  /// - [initialDelay] (optional) - initial delay before retrying the operation. Defaults to 1 second.
  /// - [multiplier]: The factor by which the delay increases after each attempt. Defaults to 2.
  /// - [maxDelay]: The maximum delay between attempts. Defaults to 30 seconds.
  /// - [retryIf]: An optional predicate function that determines whether to retry based on the exception.
  ///
  /// Returns the result of the [operation] if it succeeds.
  ///
  /// Throws:
  /// - [ArgumentError] if [maxAttempts] is less than 1.
  /// - The last exception thrown by the [operation] if all attempts fail.
  static Future<T> retry<T>(
    Future<T> Function() operation, {
    int maxAttempts = 5,
    Duration initialDelay = const Duration(seconds: 1),
    double multiplier = 2,
    Duration maxDelay = const Duration(seconds: 30),
    RetryPredicate? retryIf,
  }) async {
    if (maxAttempts < 1) {
      throw ArgumentError.value(maxAttempts, 'maxAttempts', 'Must be >= 1');
    }

    var attempt = 0;
    var delay = initialDelay;

    while (true) {
      attempt++;

      try {
        return await operation();
      } catch (e) {
        final canRetry =
            attempt < maxAttempts && (retryIf == null || retryIf(e));
        if (!canRetry) {
          rethrow;
        }

        await Future<void>.delayed(delay);

        final nextDelayMs = (delay.inMilliseconds * multiplier).round();
        delay = Duration(
          milliseconds: min(nextDelayMs, maxDelay.inMilliseconds),
        );
      }
    }
  }
}
