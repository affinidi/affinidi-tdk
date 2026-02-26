// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_exchange_credentials_ok_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsExchangeCredentialsOKCredentials
    extends AwsExchangeCredentialsOKCredentials {
  @override
  final String identityId;
  @override
  final String token;

  factory _$AwsExchangeCredentialsOKCredentials(
          [void Function(AwsExchangeCredentialsOKCredentialsBuilder)?
              updates]) =>
      (AwsExchangeCredentialsOKCredentialsBuilder()..update(updates))._build();

  _$AwsExchangeCredentialsOKCredentials._(
      {required this.identityId, required this.token})
      : super._();
  @override
  AwsExchangeCredentialsOKCredentials rebuild(
          void Function(AwsExchangeCredentialsOKCredentialsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsExchangeCredentialsOKCredentialsBuilder toBuilder() =>
      AwsExchangeCredentialsOKCredentialsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsExchangeCredentialsOKCredentials &&
        identityId == other.identityId &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, identityId.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AwsExchangeCredentialsOKCredentials')
          ..add('identityId', identityId)
          ..add('token', token))
        .toString();
  }
}

class AwsExchangeCredentialsOKCredentialsBuilder
    implements
        Builder<AwsExchangeCredentialsOKCredentials,
            AwsExchangeCredentialsOKCredentialsBuilder> {
  _$AwsExchangeCredentialsOKCredentials? _$v;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AwsExchangeCredentialsOKCredentialsBuilder() {
    AwsExchangeCredentialsOKCredentials._defaults(this);
  }

  AwsExchangeCredentialsOKCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityId = $v.identityId;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsExchangeCredentialsOKCredentials other) {
    _$v = other as _$AwsExchangeCredentialsOKCredentials;
  }

  @override
  void update(
      void Function(AwsExchangeCredentialsOKCredentialsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsExchangeCredentialsOKCredentials build() => _build();

  _$AwsExchangeCredentialsOKCredentials _build() {
    final _$result = _$v ??
        _$AwsExchangeCredentialsOKCredentials._(
          identityId: BuiltValueNullFieldError.checkNotNull(
              identityId, r'AwsExchangeCredentialsOKCredentials', 'identityId'),
          token: BuiltValueNullFieldError.checkNotNull(
              token, r'AwsExchangeCredentialsOKCredentials', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
