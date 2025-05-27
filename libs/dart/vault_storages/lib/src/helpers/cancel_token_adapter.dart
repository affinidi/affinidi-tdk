import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:dio/dio.dart';

/// An adapter that converts a [VaultCancelToken] to a [CancelToken].
class CancelTokenAdapter implements CancelToken {
  final CancelToken _cancelToken;
  final VaultCancelToken _vaultCancelToken;

  CancelTokenAdapter._(this._cancelToken, this._vaultCancelToken) {
    _vaultCancelToken.whenCancel.then((_) {
      cancel(_vaultCancelToken.cancelError);
    });
  }

  /// Creates a [CancelTokenAdapter] from a [VaultCancelToken].
  factory CancelTokenAdapter.from(VaultCancelToken vaultCancelToken) {
    final cancelToken = CancelToken();
    return CancelTokenAdapter._(cancelToken, vaultCancelToken);
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
