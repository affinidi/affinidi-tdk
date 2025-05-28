// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_session_for_idp_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginSessionForIDPInput extends LoginSessionForIDPInput {
  @override
  final String loginChallenge;
  @override
  final String clientId;

  factory _$LoginSessionForIDPInput(
          [void Function(LoginSessionForIDPInputBuilder)? updates]) =>
      (LoginSessionForIDPInputBuilder()..update(updates))._build();

  _$LoginSessionForIDPInput._(
      {required this.loginChallenge, required this.clientId})
      : super._();
  @override
  LoginSessionForIDPInput rebuild(
          void Function(LoginSessionForIDPInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginSessionForIDPInputBuilder toBuilder() =>
      LoginSessionForIDPInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginSessionForIDPInput &&
        loginChallenge == other.loginChallenge &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loginChallenge.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginSessionForIDPInput')
          ..add('loginChallenge', loginChallenge)
          ..add('clientId', clientId))
        .toString();
  }
}

class LoginSessionForIDPInputBuilder
    implements
        Builder<LoginSessionForIDPInput, LoginSessionForIDPInputBuilder> {
  _$LoginSessionForIDPInput? _$v;

  String? _loginChallenge;
  String? get loginChallenge => _$this._loginChallenge;
  set loginChallenge(String? loginChallenge) =>
      _$this._loginChallenge = loginChallenge;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  LoginSessionForIDPInputBuilder() {
    LoginSessionForIDPInput._defaults(this);
  }

  LoginSessionForIDPInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginChallenge = $v.loginChallenge;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginSessionForIDPInput other) {
    _$v = other as _$LoginSessionForIDPInput;
  }

  @override
  void update(void Function(LoginSessionForIDPInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginSessionForIDPInput build() => _build();

  _$LoginSessionForIDPInput _build() {
    final _$result = _$v ??
        _$LoginSessionForIDPInput._(
          loginChallenge: BuiltValueNullFieldError.checkNotNull(
              loginChallenge, r'LoginSessionForIDPInput', 'loginChallenge'),
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'LoginSessionForIDPInput', 'clientId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
