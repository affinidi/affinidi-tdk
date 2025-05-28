// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_response_immediate_c_nonce_expires_in.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialResponseImmediateCNonceExpiresIn
    extends CredentialResponseImmediateCNonceExpiresIn {
  @override
  final OneOf oneOf;

  factory _$CredentialResponseImmediateCNonceExpiresIn(
          [void Function(CredentialResponseImmediateCNonceExpiresInBuilder)?
              updates]) =>
      (CredentialResponseImmediateCNonceExpiresInBuilder()..update(updates))
          ._build();

  _$CredentialResponseImmediateCNonceExpiresIn._({required this.oneOf})
      : super._();
  @override
  CredentialResponseImmediateCNonceExpiresIn rebuild(
          void Function(CredentialResponseImmediateCNonceExpiresInBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialResponseImmediateCNonceExpiresInBuilder toBuilder() =>
      CredentialResponseImmediateCNonceExpiresInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialResponseImmediateCNonceExpiresIn &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CredentialResponseImmediateCNonceExpiresIn')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CredentialResponseImmediateCNonceExpiresInBuilder
    implements
        Builder<CredentialResponseImmediateCNonceExpiresIn,
            CredentialResponseImmediateCNonceExpiresInBuilder> {
  _$CredentialResponseImmediateCNonceExpiresIn? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CredentialResponseImmediateCNonceExpiresInBuilder() {
    CredentialResponseImmediateCNonceExpiresIn._defaults(this);
  }

  CredentialResponseImmediateCNonceExpiresInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialResponseImmediateCNonceExpiresIn other) {
    _$v = other as _$CredentialResponseImmediateCNonceExpiresIn;
  }

  @override
  void update(
      void Function(CredentialResponseImmediateCNonceExpiresInBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialResponseImmediateCNonceExpiresIn build() => _build();

  _$CredentialResponseImmediateCNonceExpiresIn _build() {
    final _$result = _$v ??
        _$CredentialResponseImmediateCNonceExpiresIn._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CredentialResponseImmediateCNonceExpiresIn', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
