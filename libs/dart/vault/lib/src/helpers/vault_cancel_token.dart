import 'dart:async';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import '../exceptions/tdk_exception_type.dart';

/// A cancel token implementation for Vault operations.
class VaultCancelToken {
  final Completer<TdkException> _completer = Completer<TdkException>();
  TdkException? _cancelError;
  final String _defaultCancelMessage = 'Request has been cancelled';

  /// Cancels the request with an optional reason.
  void cancel({String? reason}) {
    if (!_completer.isCompleted) {
      _cancelError = TdkException(
        message: reason ?? _defaultCancelMessage,
        code: TdkExceptionType.requestCancelled.code,
      );
      _completer.complete(_cancelError);
    }
  }

  /// The error that occurred during cancellation, if any.
  TdkException? get cancelError => _cancelError;

  /// Indicates whether the request has been cancelled.
  bool get isCancelled => _completer.isCompleted;

  /// A future that completes when the cancellation occurs.
  Future<TdkException> get whenCancel => _completer.future;
}
