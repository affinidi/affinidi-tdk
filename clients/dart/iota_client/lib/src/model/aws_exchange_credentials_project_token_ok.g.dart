// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_exchange_credentials_project_token_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsExchangeCredentialsProjectTokenOK
    extends AwsExchangeCredentialsProjectTokenOK {
  @override
  final String connectionClientId;
  @override
  final AwsExchangeCredentialsProjectTokenOKCredentials credentials;

  factory _$AwsExchangeCredentialsProjectTokenOK(
          [void Function(AwsExchangeCredentialsProjectTokenOKBuilder)?
              updates]) =>
      (AwsExchangeCredentialsProjectTokenOKBuilder()..update(updates))._build();

  _$AwsExchangeCredentialsProjectTokenOK._(
      {required this.connectionClientId, required this.credentials})
      : super._();
  @override
  AwsExchangeCredentialsProjectTokenOK rebuild(
          void Function(AwsExchangeCredentialsProjectTokenOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsExchangeCredentialsProjectTokenOKBuilder toBuilder() =>
      AwsExchangeCredentialsProjectTokenOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsExchangeCredentialsProjectTokenOK &&
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
    return (newBuiltValueToStringHelper(r'AwsExchangeCredentialsProjectTokenOK')
          ..add('connectionClientId', connectionClientId)
          ..add('credentials', credentials))
        .toString();
  }
}

class AwsExchangeCredentialsProjectTokenOKBuilder
    implements
        Builder<AwsExchangeCredentialsProjectTokenOK,
            AwsExchangeCredentialsProjectTokenOKBuilder> {
  _$AwsExchangeCredentialsProjectTokenOK? _$v;

  String? _connectionClientId;
  String? get connectionClientId => _$this._connectionClientId;
  set connectionClientId(String? connectionClientId) =>
      _$this._connectionClientId = connectionClientId;

  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder? _credentials;
  AwsExchangeCredentialsProjectTokenOKCredentialsBuilder get credentials =>
      _$this._credentials ??=
          AwsExchangeCredentialsProjectTokenOKCredentialsBuilder();
  set credentials(
          AwsExchangeCredentialsProjectTokenOKCredentialsBuilder?
              credentials) =>
      _$this._credentials = credentials;

  AwsExchangeCredentialsProjectTokenOKBuilder() {
    AwsExchangeCredentialsProjectTokenOK._defaults(this);
  }

  AwsExchangeCredentialsProjectTokenOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionClientId = $v.connectionClientId;
      _credentials = $v.credentials.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsExchangeCredentialsProjectTokenOK other) {
    _$v = other as _$AwsExchangeCredentialsProjectTokenOK;
  }

  @override
  void update(
      void Function(AwsExchangeCredentialsProjectTokenOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsExchangeCredentialsProjectTokenOK build() => _build();

  _$AwsExchangeCredentialsProjectTokenOK _build() {
    _$AwsExchangeCredentialsProjectTokenOK _$result;
    try {
      _$result = _$v ??
          _$AwsExchangeCredentialsProjectTokenOK._(
            connectionClientId: BuiltValueNullFieldError.checkNotNull(
                connectionClientId,
                r'AwsExchangeCredentialsProjectTokenOK',
                'connectionClientId'),
            credentials: credentials.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentials';
        credentials.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AwsExchangeCredentialsProjectTokenOK',
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
