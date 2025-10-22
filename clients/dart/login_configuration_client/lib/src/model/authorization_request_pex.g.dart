// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authorization_request_pex.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthorizationRequestPex extends AuthorizationRequestPex {
  @override
  final String state;
  @override
  final String presentationDefinition;
  @override
  final String? ari;
  @override
  final String? clientId;
  @override
  final String? nonce;

  factory _$AuthorizationRequestPex(
          [void Function(AuthorizationRequestPexBuilder)? updates]) =>
      (AuthorizationRequestPexBuilder()..update(updates))._build();

  _$AuthorizationRequestPex._(
      {required this.state,
      required this.presentationDefinition,
      this.ari,
      this.clientId,
      this.nonce})
      : super._();
  @override
  AuthorizationRequestPex rebuild(
          void Function(AuthorizationRequestPexBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationRequestPexBuilder toBuilder() =>
      AuthorizationRequestPexBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthorizationRequestPex &&
        state == other.state &&
        presentationDefinition == other.presentationDefinition &&
        ari == other.ari &&
        clientId == other.clientId &&
        nonce == other.nonce;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, presentationDefinition.hashCode);
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, nonce.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthorizationRequestPex')
          ..add('state', state)
          ..add('presentationDefinition', presentationDefinition)
          ..add('ari', ari)
          ..add('clientId', clientId)
          ..add('nonce', nonce))
        .toString();
  }
}

class AuthorizationRequestPexBuilder
    implements
        Builder<AuthorizationRequestPex, AuthorizationRequestPexBuilder> {
  _$AuthorizationRequestPex? _$v;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _presentationDefinition;
  String? get presentationDefinition => _$this._presentationDefinition;
  set presentationDefinition(String? presentationDefinition) =>
      _$this._presentationDefinition = presentationDefinition;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _nonce;
  String? get nonce => _$this._nonce;
  set nonce(String? nonce) => _$this._nonce = nonce;

  AuthorizationRequestPexBuilder() {
    AuthorizationRequestPex._defaults(this);
  }

  AuthorizationRequestPexBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _presentationDefinition = $v.presentationDefinition;
      _ari = $v.ari;
      _clientId = $v.clientId;
      _nonce = $v.nonce;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthorizationRequestPex other) {
    _$v = other as _$AuthorizationRequestPex;
  }

  @override
  void update(void Function(AuthorizationRequestPexBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthorizationRequestPex build() => _build();

  _$AuthorizationRequestPex _build() {
    final _$result = _$v ??
        _$AuthorizationRequestPex._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'AuthorizationRequestPex', 'state'),
          presentationDefinition: BuiltValueNullFieldError.checkNotNull(
              presentationDefinition,
              r'AuthorizationRequestPex',
              'presentationDefinition'),
          ari: ari,
          clientId: clientId,
          nonce: nonce,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
