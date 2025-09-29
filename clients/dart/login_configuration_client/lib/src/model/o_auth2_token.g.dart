// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2Token extends OAuth2Token {
  @override
  final String? accessToken;
  @override
  final int? expiresIn;
  @override
  final int? idToken;
  @override
  final String? refreshToken;
  @override
  final String? scope;
  @override
  final String? tokenType;

  factory _$OAuth2Token([void Function(OAuth2TokenBuilder)? updates]) =>
      (OAuth2TokenBuilder()..update(updates))._build();

  _$OAuth2Token._(
      {this.accessToken,
      this.expiresIn,
      this.idToken,
      this.refreshToken,
      this.scope,
      this.tokenType})
      : super._();
  @override
  OAuth2Token rebuild(void Function(OAuth2TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OAuth2TokenBuilder toBuilder() => OAuth2TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2Token &&
        accessToken == other.accessToken &&
        expiresIn == other.expiresIn &&
        idToken == other.idToken &&
        refreshToken == other.refreshToken &&
        scope == other.scope &&
        tokenType == other.tokenType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jc(_$hash, idToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2Token')
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn)
          ..add('idToken', idToken)
          ..add('refreshToken', refreshToken)
          ..add('scope', scope)
          ..add('tokenType', tokenType))
        .toString();
  }
}

class OAuth2TokenBuilder implements Builder<OAuth2Token, OAuth2TokenBuilder> {
  _$OAuth2Token? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  int? _idToken;
  int? get idToken => _$this._idToken;
  set idToken(int? idToken) => _$this._idToken = idToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  OAuth2TokenBuilder() {
    OAuth2Token._defaults(this);
  }

  OAuth2TokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _expiresIn = $v.expiresIn;
      _idToken = $v.idToken;
      _refreshToken = $v.refreshToken;
      _scope = $v.scope;
      _tokenType = $v.tokenType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2Token other) {
    _$v = other as _$OAuth2Token;
  }

  @override
  void update(void Function(OAuth2TokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2Token build() => _build();

  _$OAuth2Token _build() {
    final _$result = _$v ??
        _$OAuth2Token._(
          accessToken: accessToken,
          expiresIn: expiresIn,
          idToken: idToken,
          refreshToken: refreshToken,
          scope: scope,
          tokenType: tokenType,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
