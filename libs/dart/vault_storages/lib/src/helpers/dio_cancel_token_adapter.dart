import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';

/// An adapter that converts a [VaultCancelToken] to a [CancelToken].
class DioCancelTokenAdapter implements CancelToken {
  final CancelToken _cancelToken;
  final VaultCancelToken _vaultCancelToken;

  DioCancelTokenAdapter._(this._cancelToken, this._vaultCancelToken) {
    _vaultCancelToken.whenCancel.then((_) {
      cancel(_vaultCancelToken.cancelError);
    });
  }

  /// Creates a [DioCancelTokenAdapter] from a [VaultCancelToken].
  factory DioCancelTokenAdapter.from(VaultCancelToken vaultCancelToken) {
    final cancelToken = CancelToken();
    return DioCancelTokenAdapter._(cancelToken, vaultCancelToken);
  }

  /// Cancels the request associated with this token.
  @override
  void cancel([Object? reason]) {
    _cancelToken.cancel(reason);
  }

  @override
  DioException? get cancelError => _cancelToken.cancelError;

  @override
  bool get isCancelled => _cancelToken.isCancelled;

  @override
  Future<DioException> get whenCancel => _cancelToken.whenCancel;

  @override
  RequestOptions? requestOptions;
}
