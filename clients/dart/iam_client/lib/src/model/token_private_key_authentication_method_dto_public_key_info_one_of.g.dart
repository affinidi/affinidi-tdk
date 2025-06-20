// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_private_key_authentication_method_dto_public_key_info_one_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf
    extends TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf {
  @override
  final JsonWebKeySetDto jwks;

  factory _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf(
          [void Function(
                  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder)?
              updates]) =>
      (new TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder()
            ..update(updates))
          ._build();

  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf._(
      {required this.jwks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(jwks,
        r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf', 'jwks');
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf rebuild(
          void Function(
                  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder toBuilder() =>
      new TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf &&
        jwks == other.jwks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jwks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf')
          ..add('jwks', jwks))
        .toString();
  }
}

class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder
    implements
        Builder<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf,
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder> {
  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf? _$v;

  JsonWebKeySetDtoBuilder? _jwks;
  JsonWebKeySetDtoBuilder get jwks =>
      _$this._jwks ??= new JsonWebKeySetDtoBuilder();
  set jwks(JsonWebKeySetDtoBuilder? jwks) => _$this._jwks = jwks;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder() {
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf._defaults(this);
  }

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jwks = $v.jwks.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf;
  }

  @override
  void update(
      void Function(
              TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf build() => _build();

  _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf _build() {
    _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf _$result;
    try {
      _$result = _$v ??
          new _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf._(
            jwks: jwks.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'jwks';
        jwks.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
