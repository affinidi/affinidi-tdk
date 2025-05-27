import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

//// An interface for cancel tokens used in Vault operations.
abstract interface class VaultCancelToken {
  /// Cancels the request with an optional reason.
  void cancel({String? reason});

  /// The error that occurred during cancellation, if any.
  TdkException? get cancelError;

  /// Indicates whether the request has been cancelled.
  bool get isCancelled;

  /// A future that completes when the cancellation occurs.
  Future<TdkException> get whenCancel;
}
