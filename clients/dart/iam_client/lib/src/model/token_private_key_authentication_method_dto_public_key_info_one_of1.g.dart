// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_private_key_authentication_method_dto_public_key_info_one_of1.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1
    extends TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 {
  @override
  final String jwksUri;

  factory _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1(
          [void Function(
                  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder)?
              updates]) =>
      (TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder()
            ..update(updates))
          ._build();

  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1._(
      {required this.jwksUri})
      : super._();
  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 rebuild(
          void Function(
                  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder
      toBuilder() =>
          TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 &&
        jwksUri == other.jwksUri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwksUri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1')
          ..add('jwksUri', jwksUri))
        .toString();
  }
}

class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder
    implements
        Builder<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1,
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder> {
  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1? _$v;

  String? _jwksUri;
  String? get jwksUri => _$this._jwksUri;
  set jwksUri(String? jwksUri) => _$this._jwksUri = jwksUri;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder() {
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1._defaults(this);
  }

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwksUri = $v.jwksUri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 other) {
    _$v = other as _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1;
  }

  @override
  void update(
      void Function(
              TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 build() => _build();

  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 _build() {
    final _$result = _$v ??
        _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1._(
          jwksUri: BuiltValueNullFieldError.checkNotNull(
              jwksUri,
              r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1',
              'jwksUri'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
