// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_login_configuration_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateLoginConfigurationInput extends UpdateLoginConfigurationInput {
  @override
  final String? name;
  @override
  final BuiltList<String>? redirectUris;
  @override
  final BuiltList<String>? postLogoutRedirectUris;
  @override
  final String? clientSecret;
  @override
  final String? vpDefinition;
  @override
  final JsonObject? presentationDefinition;
  @override
  final BuiltList<IdTokenMappingItem>? idTokenMapping;
  @override
  final LoginConfigurationClientMetadataInput? clientMetadata;
  @override
  final TokenEndpointAuthMethod? tokenEndpointAuthMethod;
  @override
  final bool? failOnMappingConflict;

  factory _$UpdateLoginConfigurationInput(
          [void Function(UpdateLoginConfigurationInputBuilder)? updates]) =>
      (UpdateLoginConfigurationInputBuilder()..update(updates))._build();

  _$UpdateLoginConfigurationInput._(
      {this.name,
      this.redirectUris,
      this.postLogoutRedirectUris,
      this.clientSecret,
      this.vpDefinition,
      this.presentationDefinition,
      this.idTokenMapping,
      this.clientMetadata,
      this.tokenEndpointAuthMethod,
      this.failOnMappingConflict})
      : super._();
  @override
  UpdateLoginConfigurationInput rebuild(
          void Function(UpdateLoginConfigurationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLoginConfigurationInputBuilder toBuilder() =>
      UpdateLoginConfigurationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLoginConfigurationInput &&
        name == other.name &&
        redirectUris == other.redirectUris &&
        postLogoutRedirectUris == other.postLogoutRedirectUris &&
        clientSecret == other.clientSecret &&
        vpDefinition == other.vpDefinition &&
        presentationDefinition == other.presentationDefinition &&
        idTokenMapping == other.idTokenMapping &&
        clientMetadata == other.clientMetadata &&
        tokenEndpointAuthMethod == other.tokenEndpointAuthMethod &&
        failOnMappingConflict == other.failOnMappingConflict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, postLogoutRedirectUris.hashCode);
    _$hash = $jc(_$hash, clientSecret.hashCode);
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jc(_$hash, presentationDefinition.hashCode);
    _$hash = $jc(_$hash, idTokenMapping.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, tokenEndpointAuthMethod.hashCode);
    _$hash = $jc(_$hash, failOnMappingConflict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateLoginConfigurationInput')
          ..add('name', name)
          ..add('redirectUris', redirectUris)
          ..add('postLogoutRedirectUris', postLogoutRedirectUris)
          ..add('clientSecret', clientSecret)
          ..add('vpDefinition', vpDefinition)
          ..add('presentationDefinition', presentationDefinition)
          ..add('idTokenMapping', idTokenMapping)
          ..add('clientMetadata', clientMetadata)
          ..add('tokenEndpointAuthMethod', tokenEndpointAuthMethod)
          ..add('failOnMappingConflict', failOnMappingConflict))
        .toString();
  }
}

class UpdateLoginConfigurationInputBuilder
    implements
        Builder<UpdateLoginConfigurationInput,
            UpdateLoginConfigurationInputBuilder> {
  _$UpdateLoginConfigurationInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  ListBuilder<String>? _postLogoutRedirectUris;
  ListBuilder<String> get postLogoutRedirectUris =>
      _$this._postLogoutRedirectUris ??= ListBuilder<String>();
  set postLogoutRedirectUris(ListBuilder<String>? postLogoutRedirectUris) =>
      _$this._postLogoutRedirectUris = postLogoutRedirectUris;

  String? _clientSecret;
  String? get clientSecret => _$this._clientSecret;
  set clientSecret(String? clientSecret) => _$this._clientSecret = clientSecret;

  String? _vpDefinition;
  String? get vpDefinition => _$this._vpDefinition;
  set vpDefinition(String? vpDefinition) => _$this._vpDefinition = vpDefinition;

  JsonObject? _presentationDefinition;
  JsonObject? get presentationDefinition => _$this._presentationDefinition;
  set presentationDefinition(JsonObject? presentationDefinition) =>
      _$this._presentationDefinition = presentationDefinition;

  ListBuilder<IdTokenMappingItem>? _idTokenMapping;
  ListBuilder<IdTokenMappingItem> get idTokenMapping =>
      _$this._idTokenMapping ??= ListBuilder<IdTokenMappingItem>();
  set idTokenMapping(ListBuilder<IdTokenMappingItem>? idTokenMapping) =>
      _$this._idTokenMapping = idTokenMapping;

  LoginConfigurationClientMetadataInputBuilder? _clientMetadata;
  LoginConfigurationClientMetadataInputBuilder get clientMetadata =>
      _$this._clientMetadata ??= LoginConfigurationClientMetadataInputBuilder();
  set clientMetadata(
          LoginConfigurationClientMetadataInputBuilder? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  TokenEndpointAuthMethod? _tokenEndpointAuthMethod;
  TokenEndpointAuthMethod? get tokenEndpointAuthMethod =>
      _$this._tokenEndpointAuthMethod;
  set tokenEndpointAuthMethod(
          TokenEndpointAuthMethod? tokenEndpointAuthMethod) =>
      _$this._tokenEndpointAuthMethod = tokenEndpointAuthMethod;

  bool? _failOnMappingConflict;
  bool? get failOnMappingConflict => _$this._failOnMappingConflict;
  set failOnMappingConflict(bool? failOnMappingConflict) =>
      _$this._failOnMappingConflict = failOnMappingConflict;

  UpdateLoginConfigurationInputBuilder() {
    UpdateLoginConfigurationInput._defaults(this);
  }

  UpdateLoginConfigurationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _redirectUris = $v.redirectUris?.toBuilder();
      _postLogoutRedirectUris = $v.postLogoutRedirectUris?.toBuilder();
      _clientSecret = $v.clientSecret;
      _vpDefinition = $v.vpDefinition;
      _presentationDefinition = $v.presentationDefinition;
      _idTokenMapping = $v.idTokenMapping?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _tokenEndpointAuthMethod = $v.tokenEndpointAuthMethod;
      _failOnMappingConflict = $v.failOnMappingConflict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLoginConfigurationInput other) {
    _$v = other as _$UpdateLoginConfigurationInput;
  }

  @override
  void update(void Function(UpdateLoginConfigurationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLoginConfigurationInput build() => _build();

  _$UpdateLoginConfigurationInput _build() {
    _$UpdateLoginConfigurationInput _$result;
    try {
      _$result = _$v ??
          _$UpdateLoginConfigurationInput._(
            name: name,
            redirectUris: _redirectUris?.build(),
            postLogoutRedirectUris: _postLogoutRedirectUris?.build(),
            clientSecret: clientSecret,
            vpDefinition: vpDefinition,
            presentationDefinition: presentationDefinition,
            idTokenMapping: _idTokenMapping?.build(),
            clientMetadata: _clientMetadata?.build(),
            tokenEndpointAuthMethod: tokenEndpointAuthMethod,
            failOnMappingConflict: failOnMappingConflict,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirectUris';
        _redirectUris?.build();
        _$failedField = 'postLogoutRedirectUris';
        _postLogoutRedirectUris?.build();

        _$failedField = 'idTokenMapping';
        _idTokenMapping?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UpdateLoginConfigurationInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
