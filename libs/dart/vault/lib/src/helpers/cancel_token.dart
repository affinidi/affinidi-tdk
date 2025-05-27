import 'dart:async';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import '../exceptions/tdk_exception_type.dart';
import 'cancel_token_interface.dart' as cancel_token_interface;

class VaultCancelToken implements cancel_token_interface.VaultCancelToken {
  final Completer<TdkException> _completer = Completer<TdkException>();
  TdkException? _cancelError;
  final String _defaultCancelMessage = 'Request has been cancelled';

  @override
  void cancel({String? reason}) {
    if (!_completer.isCompleted) {
      _cancelError = TdkException(
        message: reason ?? _defaultCancelMessage,
        code: TdkExceptionType.requestCancelled.code,
      );
      _completer.complete(_cancelError);
    }
  }

  @override
  TdkException? get cancelError => _cancelError;

  @override
  bool get isCancelled => _completer.isCompleted;

  @override
  Future<TdkException> get whenCancel => _completer.future;
}
