// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_session_dto_authorization_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginSessionDtoAuthorizationRequest
    extends LoginSessionDtoAuthorizationRequest {
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

  factory _$LoginSessionDtoAuthorizationRequest(
          [void Function(LoginSessionDtoAuthorizationRequestBuilder)?
              updates]) =>
      (new LoginSessionDtoAuthorizationRequestBuilder()..update(updates))
          ._build();

  _$LoginSessionDtoAuthorizationRequest._(
      {required this.state,
      required this.presentationDefinition,
      this.ari,
      this.clientId,
      this.nonce})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        state, r'LoginSessionDtoAuthorizationRequest', 'state');
    BuiltValueNullFieldError.checkNotNull(presentationDefinition,
        r'LoginSessionDtoAuthorizationRequest', 'presentationDefinition');
  }

  @override
  LoginSessionDtoAuthorizationRequest rebuild(
          void Function(LoginSessionDtoAuthorizationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSessionDtoAuthorizationRequestBuilder toBuilder() =>
      new LoginSessionDtoAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSessionDtoAuthorizationRequest &&
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
    return (newBuiltValueToStringHelper(r'LoginSessionDtoAuthorizationRequest')
          ..add('state', state)
          ..add('presentationDefinition', presentationDefinition)
          ..add('ari', ari)
          ..add('clientId', clientId)
          ..add('nonce', nonce))
        .toString();
  }
}

class LoginSessionDtoAuthorizationRequestBuilder
    implements
        Builder<LoginSessionDtoAuthorizationRequest,
            LoginSessionDtoAuthorizationRequestBuilder> {
  _$LoginSessionDtoAuthorizationRequest? _$v;

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

  LoginSessionDtoAuthorizationRequestBuilder() {
    LoginSessionDtoAuthorizationRequest._defaults(this);
  }

  LoginSessionDtoAuthorizationRequestBuilder get _$this {
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
  void replace(LoginSessionDtoAuthorizationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginSessionDtoAuthorizationRequest;
  }

  @override
  void update(
      void Function(LoginSessionDtoAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginSessionDtoAuthorizationRequest build() => _build();

  _$LoginSessionDtoAuthorizationRequest _build() {
    final _$result = _$v ??
        new _$LoginSessionDtoAuthorizationRequest._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'LoginSessionDtoAuthorizationRequest', 'state'),
          presentationDefinition: BuiltValueNullFieldError.checkNotNull(
              presentationDefinition,
              r'LoginSessionDtoAuthorizationRequest',
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
