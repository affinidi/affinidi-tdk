// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_private_key_authentication_method_dto_public_key_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo
    extends TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo {
  @override
  final OneOf oneOf;

  factory _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo(
          [void Function(
                  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder)?
              updates]) =>
      (TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder()
            ..update(updates))
          ._build();

  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo._({required this.oneOf})
      : super._();
  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo rebuild(
          void Function(
                  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder toBuilder() =>
      TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo &&
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
            r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder
    implements
        Builder<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo,
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder> {
  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder() {
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo._defaults(this);
  }

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo other) {
    _$v = other as _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo;
  }

  @override
  void update(
      void Function(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo build() => _build();

  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo _build() {
    final _$result = _$v ??
        _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo._(
          oneOf: BuiltValueNullFieldError.checkNotNull(oneOf,
              r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
