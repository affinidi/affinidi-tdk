// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iota_exchange_credentials_ok.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IotaExchangeCredentialsOK extends IotaExchangeCredentialsOK {
  @override
  final String connectionClientId;
  @override
  final IotaExchangeCredentialsOKCredentials credentials;

  factory _$IotaExchangeCredentialsOK(
          [void Function(IotaExchangeCredentialsOKBuilder)? updates]) =>
      (new IotaExchangeCredentialsOKBuilder()..update(updates))._build();

  _$IotaExchangeCredentialsOK._(
      {required this.connectionClientId, required this.credentials})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        connectionClientId, r'IotaExchangeCredentialsOK', 'connectionClientId');
    BuiltValueNullFieldError.checkNotNull(
        credentials, r'IotaExchangeCredentialsOK', 'credentials');
  }

  @override
  IotaExchangeCredentialsOK rebuild(
          void Function(IotaExchangeCredentialsOKBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IotaExchangeCredentialsOKBuilder toBuilder() =>
      new IotaExchangeCredentialsOKBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IotaExchangeCredentialsOK &&
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
    return (newBuiltValueToStringHelper(r'IotaExchangeCredentialsOK')
          ..add('connectionClientId', connectionClientId)
          ..add('credentials', credentials))
        .toString();
  }
}

class IotaExchangeCredentialsOKBuilder
    implements
        Builder<IotaExchangeCredentialsOK, IotaExchangeCredentialsOKBuilder> {
  _$IotaExchangeCredentialsOK? _$v;

  String? _connectionClientId;
  String? get connectionClientId => _$this._connectionClientId;
  set connectionClientId(String? connectionClientId) =>
      _$this._connectionClientId = connectionClientId;

  IotaExchangeCredentialsOKCredentialsBuilder? _credentials;
  IotaExchangeCredentialsOKCredentialsBuilder get credentials =>
      _$this._credentials ??= new IotaExchangeCredentialsOKCredentialsBuilder();
  set credentials(IotaExchangeCredentialsOKCredentialsBuilder? credentials) =>
      _$this._credentials = credentials;

  IotaExchangeCredentialsOKBuilder() {
    IotaExchangeCredentialsOK._defaults(this);
  }

  IotaExchangeCredentialsOKBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionClientId = $v.connectionClientId;
      _credentials = $v.credentials.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IotaExchangeCredentialsOK other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IotaExchangeCredentialsOK;
  }

  @override
  void update(void Function(IotaExchangeCredentialsOKBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IotaExchangeCredentialsOK build() => _build();

  _$IotaExchangeCredentialsOK _build() {
    _$IotaExchangeCredentialsOK _$result;
    try {
      _$result = _$v ??
          new _$IotaExchangeCredentialsOK._(
            connectionClientId: BuiltValueNullFieldError.checkNotNull(
                connectionClientId,
                r'IotaExchangeCredentialsOK',
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
            r'IotaExchangeCredentialsOK', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
