// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_request_dcql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationRequestDcql extends AuthorizationRequestDcql {
  @override
  final String state;
  @override
  final String dcqlQuery;
  @override
  final String? ari;
  @override
  final String? clientId;
  @override
  final String? nonce;

  factory _$AuthorizationRequestDcql(
          [void Function(AuthorizationRequestDcqlBuilder)? updates]) =>
      (AuthorizationRequestDcqlBuilder()..update(updates))._build();

  _$AuthorizationRequestDcql._(
      {required this.state,
      required this.dcqlQuery,
      this.ari,
      this.clientId,
      this.nonce})
      : super._();
  @override
  AuthorizationRequestDcql rebuild(
          void Function(AuthorizationRequestDcqlBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationRequestDcqlBuilder toBuilder() =>
      AuthorizationRequestDcqlBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizationRequestDcql &&
        state == other.state &&
        dcqlQuery == other.dcqlQuery &&
        ari == other.ari &&
        clientId == other.clientId &&
        nonce == other.nonce;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, dcqlQuery.hashCode);
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, nonce.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorizationRequestDcql')
          ..add('state', state)
          ..add('dcqlQuery', dcqlQuery)
          ..add('ari', ari)
          ..add('clientId', clientId)
          ..add('nonce', nonce))
        .toString();
  }
}

class AuthorizationRequestDcqlBuilder
    implements
        Builder<AuthorizationRequestDcql, AuthorizationRequestDcqlBuilder> {
  _$AuthorizationRequestDcql? _$v;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _dcqlQuery;
  String? get dcqlQuery => _$this._dcqlQuery;
  set dcqlQuery(String? dcqlQuery) => _$this._dcqlQuery = dcqlQuery;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _nonce;
  String? get nonce => _$this._nonce;
  set nonce(String? nonce) => _$this._nonce = nonce;

  AuthorizationRequestDcqlBuilder() {
    AuthorizationRequestDcql._defaults(this);
  }

  AuthorizationRequestDcqlBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _dcqlQuery = $v.dcqlQuery;
      _ari = $v.ari;
      _clientId = $v.clientId;
      _nonce = $v.nonce;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationRequestDcql other) {
    _$v = other as _$AuthorizationRequestDcql;
  }

  @override
  void update(void Function(AuthorizationRequestDcqlBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationRequestDcql build() => _build();

  _$AuthorizationRequestDcql _build() {
    final _$result = _$v ??
        _$AuthorizationRequestDcql._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'AuthorizationRequestDcql', 'state'),
          dcqlQuery: BuiltValueNullFieldError.checkNotNull(
              dcqlQuery, r'AuthorizationRequestDcql', 'dcqlQuery'),
          ari: ari,
          clientId: clientId,
          nonce: nonce,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
