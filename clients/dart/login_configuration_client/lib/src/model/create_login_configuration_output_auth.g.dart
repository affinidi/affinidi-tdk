// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_login_configuration_output_auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLoginConfigurationOutputAuth
    extends CreateLoginConfigurationOutputAuth {
  @override
  final String clientId;
  @override
  final String? clientSecret;
  @override
  final String? scope;
  @override
  final String? issuer;

  factory _$CreateLoginConfigurationOutputAuth(
          [void Function(CreateLoginConfigurationOutputAuthBuilder)?
              updates]) =>
      (CreateLoginConfigurationOutputAuthBuilder()..update(updates))._build();

  _$CreateLoginConfigurationOutputAuth._(
      {required this.clientId, this.clientSecret, this.scope, this.issuer})
      : super._();
  @override
  CreateLoginConfigurationOutputAuth rebuild(
          void Function(CreateLoginConfigurationOutputAuthBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLoginConfigurationOutputAuthBuilder toBuilder() =>
      CreateLoginConfigurationOutputAuthBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLoginConfigurationOutputAuth &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        scope == other.scope &&
        issuer == other.issuer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, issuer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateLoginConfigurationOutputAuth')
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('scope', scope)
          ..add('issuer', issuer))
        .toString();
  }
}

class CreateLoginConfigurationOutputAuthBuilder
    implements
        Builder<CreateLoginConfigurationOutputAuth,
            CreateLoginConfigurationOutputAuthBuilder> {
  _$CreateLoginConfigurationOutputAuth? _$v;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  String? _issuer;
  String? get issuer => _$this._issuer;
  set issuer(String? issuer) => _$this._issuer = issuer;

  CreateLoginConfigurationOutputAuthBuilder() {
    CreateLoginConfigurationOutputAuth._defaults(this);
  }

  CreateLoginConfigurationOutputAuthBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clientId = $v.clientId;
      _clientSecret = $v.clientSecret;
      _scope = $v.scope;
      _issuer = $v.issuer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLoginConfigurationOutputAuth other) {
    _$v = other as _$CreateLoginConfigurationOutputAuth;
  }

  @override
  void update(
      void Function(CreateLoginConfigurationOutputAuthBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLoginConfigurationOutputAuth build() => _build();

  _$CreateLoginConfigurationOutputAuth _build() {
    final _$result = _$v ??
        _$CreateLoginConfigurationOutputAuth._(
          clientId: BuiltValueNullFieldError.checkNotNull(
              clientId, r'CreateLoginConfigurationOutputAuth', 'clientId'),
          clientSecret: clientSecret,
          scope: scope,
          issuer: issuer,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
