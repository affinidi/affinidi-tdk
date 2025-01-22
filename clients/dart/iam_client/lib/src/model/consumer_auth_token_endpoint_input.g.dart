// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consumer_auth_token_endpoint_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConsumerAuthTokenEndpointInput extends ConsumerAuthTokenEndpointInput {
  @override
  final String grantType;
  @override
  final String? code;
  @override
  final String? refreshToken;
  @override
  final String? redirectUri;
  @override
  final String? clientId;

  factory _$ConsumerAuthTokenEndpointInput(
          [void Function(ConsumerAuthTokenEndpointInputBuilder)? updates]) =>
      (new ConsumerAuthTokenEndpointInputBuilder()..update(updates))._build();

  _$ConsumerAuthTokenEndpointInput._(
      {required this.grantType,
      this.code,
      this.refreshToken,
      this.redirectUri,
      this.clientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        grantType, r'ConsumerAuthTokenEndpointInput', 'grantType');
  }

  @override
  ConsumerAuthTokenEndpointInput rebuild(
          void Function(ConsumerAuthTokenEndpointInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConsumerAuthTokenEndpointInputBuilder toBuilder() =>
      new ConsumerAuthTokenEndpointInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConsumerAuthTokenEndpointInput &&
        grantType == other.grantType &&
        code == other.code &&
        refreshToken == other.refreshToken &&
        redirectUri == other.redirectUri &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, grantType.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, redirectUri.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConsumerAuthTokenEndpointInput')
          ..add('grantType', grantType)
          ..add('code', code)
          ..add('refreshToken', refreshToken)
          ..add('redirectUri', redirectUri)
          ..add('clientId', clientId))
        .toString();
  }
}

class ConsumerAuthTokenEndpointInputBuilder
    implements
        Builder<ConsumerAuthTokenEndpointInput,
            ConsumerAuthTokenEndpointInputBuilder> {
  _$ConsumerAuthTokenEndpointInput? _$v;

  String? _grantType;
  String? get grantType => _$this._grantType;
  set grantType(String? grantType) => _$this._grantType = grantType;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _redirectUri;
  String? get redirectUri => _$this._redirectUri;
  set redirectUri(String? redirectUri) => _$this._redirectUri = redirectUri;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  ConsumerAuthTokenEndpointInputBuilder() {
    ConsumerAuthTokenEndpointInput._defaults(this);
  }

  ConsumerAuthTokenEndpointInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _grantType = $v.grantType;
      _code = $v.code;
      _refreshToken = $v.refreshToken;
      _redirectUri = $v.redirectUri;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConsumerAuthTokenEndpointInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConsumerAuthTokenEndpointInput;
  }

  @override
  void update(void Function(ConsumerAuthTokenEndpointInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConsumerAuthTokenEndpointInput build() => _build();

  _$ConsumerAuthTokenEndpointInput _build() {
    final _$result = _$v ??
        new _$ConsumerAuthTokenEndpointInput._(
          grantType: BuiltValueNullFieldError.checkNotNull(
              grantType, r'ConsumerAuthTokenEndpointInput', 'grantType'),
          code: code,
          refreshToken: refreshToken,
          redirectUri: redirectUri,
          clientId: clientId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
