// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_exchange_credentials_project_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsExchangeCredentialsProjectToken
    extends AwsExchangeCredentialsProjectToken {
  @override
  final String sessionId;
  @override
  final String configurationId;
  @override
  final String did;

  factory _$AwsExchangeCredentialsProjectToken(
          [void Function(AwsExchangeCredentialsProjectTokenBuilder)?
              updates]) =>
      (AwsExchangeCredentialsProjectTokenBuilder()..update(updates))._build();

  _$AwsExchangeCredentialsProjectToken._(
      {required this.sessionId,
      required this.configurationId,
      required this.did})
      : super._();
  @override
  AwsExchangeCredentialsProjectToken rebuild(
          void Function(AwsExchangeCredentialsProjectTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsExchangeCredentialsProjectTokenBuilder toBuilder() =>
      AwsExchangeCredentialsProjectTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsExchangeCredentialsProjectToken &&
        sessionId == other.sessionId &&
        configurationId == other.configurationId &&
        did == other.did;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jc(_$hash, did.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AwsExchangeCredentialsProjectToken')
          ..add('sessionId', sessionId)
          ..add('configurationId', configurationId)
          ..add('did', did))
        .toString();
  }
}

class AwsExchangeCredentialsProjectTokenBuilder
    implements
        Builder<AwsExchangeCredentialsProjectToken,
            AwsExchangeCredentialsProjectTokenBuilder> {
  _$AwsExchangeCredentialsProjectToken? _$v;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  String? _did;
  String? get did => _$this._did;
  set did(String? did) => _$this._did = did;

  AwsExchangeCredentialsProjectTokenBuilder() {
    AwsExchangeCredentialsProjectToken._defaults(this);
  }

  AwsExchangeCredentialsProjectTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionId = $v.sessionId;
      _configurationId = $v.configurationId;
      _did = $v.did;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsExchangeCredentialsProjectToken other) {
    _$v = other as _$AwsExchangeCredentialsProjectToken;
  }

  @override
  void update(
      void Function(AwsExchangeCredentialsProjectTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsExchangeCredentialsProjectToken build() => _build();

  _$AwsExchangeCredentialsProjectToken _build() {
    final _$result = _$v ??
        _$AwsExchangeCredentialsProjectToken._(
          sessionId: BuiltValueNullFieldError.checkNotNull(
              sessionId, r'AwsExchangeCredentialsProjectToken', 'sessionId'),
          configurationId: BuiltValueNullFieldError.checkNotNull(
              configurationId,
              r'AwsExchangeCredentialsProjectToken',
              'configurationId'),
          did: BuiltValueNullFieldError.checkNotNull(
              did, r'AwsExchangeCredentialsProjectToken', 'did'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
