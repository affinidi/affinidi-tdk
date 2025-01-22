// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_exchange_credentials_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsExchangeCredentialsOK extends AwsExchangeCredentialsOK {
  @override
  final String connectionClientId;
  @override
  final AwsExchangeCredentialsProjectTokenOKCredentials credentials;

  factory _$AwsExchangeCredentialsOK(
          [void Function(AwsExchangeCredentialsOKBuilder)? updates]) =>
      (new AwsExchangeCredentialsOKBuilder()..update(updates))._build();

  _$AwsExchangeCredentialsOK._(
      {required this.connectionClientId, required this.credentials})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        connectionClientId, r'AwsExchangeCredentialsOK', 'connectionClientId');
    BuiltValueNullFieldError.checkNotNull(
        credentials, r'AwsExchangeCredentialsOK', 'credentials');
  }

  @override
  AwsExchangeCredentialsOK rebuild(
          void Function(AwsExchangeCredentialsOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsExchangeCredentialsOKBuilder toBuilder() =>
      new AwsExchangeCredentialsOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsExchangeCredentialsOK &&
        connectionClientId == other.connectionClientId &&
        credentials == other.credentials;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connectionClientId.hashCode);
    _$hash = $jc(_$hash, credentials.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AwsExchangeCredentialsOK')
          ..add('connectionClientId', connectionClientId)
          ..add('credentials', credentials))
        .toString();
  }
}

class AwsExchangeCredentialsOKBuilder
    implements
        Builder<AwsExchangeCredentialsOK, AwsExchangeCredentialsOKBuilder> {
  _$AwsExchangeCredentialsOK? _$v;

  String? _connectionClientId;
  String? get connectionClientId => _$this._connectionClientId;
  set connectionClientId(String? connectionClientId) =>
      _$this._connectionClientId = connectionClientId;

  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder? _credentials;
  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder get credentials =>
      _$this._credentials ??=
          new AwsExchangeCredentialsProjectTokenOKCredentialsBuilder();
  set credentials(
          AwsExchangeCredentialsProjectTokenOKCredentialsBuilder?
              credentials) =>
      _$this._credentials = credentials;

  AwsExchangeCredentialsOKBuilder() {
    AwsExchangeCredentialsOK._defaults(this);
  }

  AwsExchangeCredentialsOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionClientId = $v.connectionClientId;
      _credentials = $v.credentials.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsExchangeCredentialsOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AwsExchangeCredentialsOK;
  }

  @override
  void update(void Function(AwsExchangeCredentialsOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsExchangeCredentialsOK build() => _build();

  _$AwsExchangeCredentialsOK _build() {
    _$AwsExchangeCredentialsOK _$result;
    try {
      _$result = _$v ??
          new _$AwsExchangeCredentialsOK._(
            connectionClientId: BuiltValueNullFieldError.checkNotNull(
                connectionClientId,
                r'AwsExchangeCredentialsOK',
                'connectionClientId'),
            credentials: credentials.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        credentials.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AwsExchangeCredentialsOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
