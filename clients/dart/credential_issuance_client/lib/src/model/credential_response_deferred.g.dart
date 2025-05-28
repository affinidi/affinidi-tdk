// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_response_deferred.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialResponseDeferred extends CredentialResponseDeferred {
  @override
  final String transactionId;
  @override
  final String cNonce;
  @override
  final int cNonceExpiresIn;

  factory _$CredentialResponseDeferred(
          [void Function(CredentialResponseDeferredBuilder)? updates]) =>
      (CredentialResponseDeferredBuilder()..update(updates))._build();

  _$CredentialResponseDeferred._(
      {required this.transactionId,
      required this.cNonce,
      required this.cNonceExpiresIn})
      : super._();
  @override
  CredentialResponseDeferred rebuild(
          void Function(CredentialResponseDeferredBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialResponseDeferredBuilder toBuilder() =>
      CredentialResponseDeferredBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialResponseDeferred &&
        transactionId == other.transactionId &&
        cNonce == other.cNonce &&
        cNonceExpiresIn == other.cNonceExpiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transactionId.hashCode);
    _$hash = $jc(_$hash, cNonce.hashCode);
    _$hash = $jc(_$hash, cNonceExpiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialResponseDeferred')
          ..add('transactionId', transactionId)
          ..add('cNonce', cNonce)
          ..add('cNonceExpiresIn', cNonceExpiresIn))
        .toString();
  }
}

class CredentialResponseDeferredBuilder
    implements
        Builder<CredentialResponseDeferred, CredentialResponseDeferredBuilder> {
  _$CredentialResponseDeferred? _$v;

  String? _transactionId;
  String? get transactionId => _$this._transactionId;
  set transactionId(String? transactionId) =>
      _$this._transactionId = transactionId;

  String? _cNonce;
  String? get cNonce => _$this._cNonce;
  set cNonce(String? cNonce) => _$this._cNonce = cNonce;

  int? _cNonceExpiresIn;
  int? get cNonceExpiresIn => _$this._cNonceExpiresIn;
  set cNonceExpiresIn(int? cNonceExpiresIn) =>
      _$this._cNonceExpiresIn = cNonceExpiresIn;

  CredentialResponseDeferredBuilder() {
    CredentialResponseDeferred._defaults(this);
  }

  CredentialResponseDeferredBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionId = $v.transactionId;
      _cNonce = $v.cNonce;
      _cNonceExpiresIn = $v.cNonceExpiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialResponseDeferred other) {
    _$v = other as _$CredentialResponseDeferred;
  }

  @override
  void update(void Function(CredentialResponseDeferredBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialResponseDeferred build() => _build();

  _$CredentialResponseDeferred _build() {
    final _$result = _$v ??
        _$CredentialResponseDeferred._(
          transactionId: BuiltValueNullFieldError.checkNotNull(
              transactionId, r'CredentialResponseDeferred', 'transactionId'),
          cNonce: BuiltValueNullFieldError.checkNotNull(
              cNonce, r'CredentialResponseDeferred', 'cNonce'),
          cNonceExpiresIn: BuiltValueNullFieldError.checkNotNull(
              cNonceExpiresIn,
              r'CredentialResponseDeferred',
              'cNonceExpiresIn'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
