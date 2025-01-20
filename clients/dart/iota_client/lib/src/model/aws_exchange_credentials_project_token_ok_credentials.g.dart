// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_exchange_credentials_project_token_ok_credentials.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsExchangeCredentialsProjectTokenOKCredentials
    extends AwsExchangeCredentialsProjectTokenOKCredentials {
  @override
  final String identityId;
  @override
  final String token;

  factory _$AwsExchangeCredentialsProjectTokenOKCredentials(
          [void Function(
                  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder)?
              updates]) =>
      (new AwsExchangeCredentialsProjectTokenOKCredentialsBuilder()
            ..update(updates))
          ._build();

  _$AwsExchangeCredentialsProjectTokenOKCredentials._(
      {required this.identityId, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(identityId,
        r'AwsExchangeCredentialsProjectTokenOKCredentials', 'identityId');
    BuiltValueNullFieldError.checkNotNull(
        token, r'AwsExchangeCredentialsProjectTokenOKCredentials', 'token');
  }

  @override
  AwsExchangeCredentialsProjectTokenOKCredentials rebuild(
          void Function(AwsExchangeCredentialsProjectTokenOKCredentialsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder toBuilder() =>
      new AwsExchangeCredentialsProjectTokenOKCredentialsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsExchangeCredentialsProjectTokenOKCredentials &&
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
    return (newBuiltValueToStringHelper(
            r'AwsExchangeCredentialsProjectTokenOKCredentials')
          ..add('identityId', identityId)
          ..add('token', token))
        .toString();
  }
}

class AwsExchangeCredentialsProjectTokenOKCredentialsBuilder
    implements
        Builder<AwsExchangeCredentialsProjectTokenOKCredentials,
            AwsExchangeCredentialsProjectTokenOKCredentialsBuilder> {
  _$AwsExchangeCredentialsProjectTokenOKCredentials? _$v;

  String? _identityId;
  String? get identityId => _$this._identityId;
  set identityId(String? identityId) => _$this._identityId = identityId;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder() {
    AwsExchangeCredentialsProjectTokenOKCredentials._defaults(this);
  }

  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _identityId = $v.identityId;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsExchangeCredentialsProjectTokenOKCredentials other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AwsExchangeCredentialsProjectTokenOKCredentials;
  }

  @override
  void update(
      void Function(AwsExchangeCredentialsProjectTokenOKCredentialsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsExchangeCredentialsProjectTokenOKCredentials build() => _build();

  _$AwsExchangeCredentialsProjectTokenOKCredentials _build() {
    final _$result = _$v ??
        new _$AwsExchangeCredentialsProjectTokenOKCredentials._(
          identityId: BuiltValueNullFieldError.checkNotNull(identityId,
              r'AwsExchangeCredentialsProjectTokenOKCredentials', 'identityId'),
          token: BuiltValueNullFieldError.checkNotNull(token,
              r'AwsExchangeCredentialsProjectTokenOKCredentials', 'token'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
