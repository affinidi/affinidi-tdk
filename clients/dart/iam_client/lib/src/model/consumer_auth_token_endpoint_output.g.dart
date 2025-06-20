// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_auth_token_endpoint_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAuthTokenEndpointOutput
    extends ConsumerAuthTokenEndpointOutput {
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

  factory _$ConsumerAuthTokenEndpointOutput(
          [void Function(ConsumerAuthTokenEndpointOutputBuilder)? updates]) =>
      (new ConsumerAuthTokenEndpointOutputBuilder()..update(updates))._build();

  _$ConsumerAuthTokenEndpointOutput._(
      {this.accessToken,
      this.expiresIn,
      this.idToken,
      this.refreshToken,
      this.scope,
      this.tokenType})
      : super._();

  @override
  ConsumerAuthTokenEndpointOutput rebuild(
          void Function(ConsumerAuthTokenEndpointOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAuthTokenEndpointOutputBuilder toBuilder() =>
      new ConsumerAuthTokenEndpointOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAuthTokenEndpointOutput &&
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
    return (newBuiltValueToStringHelper(r'ConsumerAuthTokenEndpointOutput')
          ..add('accessToken', accessToken)
          ..add('expiresIn', expiresIn)
          ..add('idToken', idToken)
          ..add('refreshToken', refreshToken)
          ..add('scope', scope)
          ..add('tokenType', tokenType))
        .toString();
  }
}

class ConsumerAuthTokenEndpointOutputBuilder
    implements
        Builder<ConsumerAuthTokenEndpointOutput,
            ConsumerAuthTokenEndpointOutputBuilder> {
  _$ConsumerAuthTokenEndpointOutput? _$v;

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

  ConsumerAuthTokenEndpointOutputBuilder() {
    ConsumerAuthTokenEndpointOutput._defaults(this);
  }

  ConsumerAuthTokenEndpointOutputBuilder get _$this {
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
  void replace(ConsumerAuthTokenEndpointOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsumerAuthTokenEndpointOutput;
  }

  @override
  void update(void Function(ConsumerAuthTokenEndpointOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAuthTokenEndpointOutput build() => _build();

  _$ConsumerAuthTokenEndpointOutput _build() {
    final _$result = _$v ??
        new _$ConsumerAuthTokenEndpointOutput._(
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
