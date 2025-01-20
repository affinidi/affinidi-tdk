// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iota_exchange_credentials_ok_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IotaExchangeCredentialsOKCredentials
    extends IotaExchangeCredentialsOKCredentials {
  @override
  final String accessKeyId;
  @override
  final String secretKey;
  @override
  final String sessionToken;
  @override
  final String expiration;

  factory _$IotaExchangeCredentialsOKCredentials(
          [void Function(IotaExchangeCredentialsOKCredentialsBuilder)?
              updates]) =>
      (new IotaExchangeCredentialsOKCredentialsBuilder()..update(updates))
          ._build();

  _$IotaExchangeCredentialsOKCredentials._(
      {required this.accessKeyId,
      required this.secretKey,
      required this.sessionToken,
      required this.expiration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessKeyId, r'IotaExchangeCredentialsOKCredentials', 'accessKeyId');
    BuiltValueNullFieldError.checkNotNull(
        secretKey, r'IotaExchangeCredentialsOKCredentials', 'secretKey');
    BuiltValueNullFieldError.checkNotNull(
        sessionToken, r'IotaExchangeCredentialsOKCredentials', 'sessionToken');
    BuiltValueNullFieldError.checkNotNull(
        expiration, r'IotaExchangeCredentialsOKCredentials', 'expiration');
  }

  @override
  IotaExchangeCredentialsOKCredentials rebuild(
          void Function(IotaExchangeCredentialsOKCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IotaExchangeCredentialsOKCredentialsBuilder toBuilder() =>
      new IotaExchangeCredentialsOKCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IotaExchangeCredentialsOKCredentials &&
        accessKeyId == other.accessKeyId &&
        secretKey == other.secretKey &&
        sessionToken == other.sessionToken &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, secretKey.hashCode);
    _$hash = $jc(_$hash, sessionToken.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IotaExchangeCredentialsOKCredentials')
          ..add('accessKeyId', accessKeyId)
          ..add('secretKey', secretKey)
          ..add('sessionToken', sessionToken)
          ..add('expiration', expiration))
        .toString();
  }
}

class IotaExchangeCredentialsOKCredentialsBuilder
    implements
        Builder<IotaExchangeCredentialsOKCredentials,
            IotaExchangeCredentialsOKCredentialsBuilder> {
  _$IotaExchangeCredentialsOKCredentials? _$v;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  String? _secretKey;
  String? get secretKey => _$this._secretKey;
  set secretKey(String? secretKey) => _$this._secretKey = secretKey;

  String? _sessionToken;
  String? get sessionToken => _$this._sessionToken;
  set sessionToken(String? sessionToken) => _$this._sessionToken = sessionToken;

  String? _expiration;
  String? get expiration => _$this._expiration;
  set expiration(String? expiration) => _$this._expiration = expiration;

  IotaExchangeCredentialsOKCredentialsBuilder() {
    IotaExchangeCredentialsOKCredentials._defaults(this);
  }

  IotaExchangeCredentialsOKCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessKeyId = $v.accessKeyId;
      _secretKey = $v.secretKey;
      _sessionToken = $v.sessionToken;
      _expiration = $v.expiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IotaExchangeCredentialsOKCredentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IotaExchangeCredentialsOKCredentials;
  }

  @override
  void update(
      void Function(IotaExchangeCredentialsOKCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IotaExchangeCredentialsOKCredentials build() => _build();

  _$IotaExchangeCredentialsOKCredentials _build() {
    final _$result = _$v ??
        new _$IotaExchangeCredentialsOKCredentials._(
          accessKeyId: BuiltValueNullFieldError.checkNotNull(accessKeyId,
              r'IotaExchangeCredentialsOKCredentials', 'accessKeyId'),
          secretKey: BuiltValueNullFieldError.checkNotNull(
              secretKey, r'IotaExchangeCredentialsOKCredentials', 'secretKey'),
          sessionToken: BuiltValueNullFieldError.checkNotNull(sessionToken,
              r'IotaExchangeCredentialsOKCredentials', 'sessionToken'),
          expiration: BuiltValueNullFieldError.checkNotNull(expiration,
              r'IotaExchangeCredentialsOKCredentials', 'expiration'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
