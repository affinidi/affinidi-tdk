// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_configuration_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginConfigurationObject extends LoginConfigurationObject {
  @override
  final String ari;
  @override
  final String? configurationId;
  @override
  final String projectId;
  @override
  final String name;
  @override
  final BuiltList<String>? redirectUris;
  @override
  final BuiltList<String>? postLogoutRedirectUris;
  @override
  final String? scope;
  @override
  final String clientId;
  @override
  final String creationDate;
  @override
  final String vpDefinition;
  @override
  final JsonObject? presentationDefinition;
  @override
  final BuiltList<IdTokenMappingItem> idTokenMapping;
  @override
  final LoginConfigurationClientMetadataOutput clientMetadata;
  @override
  final TokenEndpointAuthMethod tokenEndpointAuthMethod;

  factory _$LoginConfigurationObject(
          [void Function(LoginConfigurationObjectBuilder)? updates]) =>
      (LoginConfigurationObjectBuilder()..update(updates))._build();

  _$LoginConfigurationObject._(
      {required this.ari,
      this.configurationId,
      required this.projectId,
      required this.name,
      this.redirectUris,
      this.postLogoutRedirectUris,
      this.scope,
      required this.clientId,
      required this.creationDate,
      required this.vpDefinition,
      this.presentationDefinition,
      required this.idTokenMapping,
      required this.clientMetadata,
      required this.tokenEndpointAuthMethod})
      : super._();
  @override
  LoginConfigurationObject rebuild(
          void Function(LoginConfigurationObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginConfigurationObjectBuilder toBuilder() =>
      LoginConfigurationObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginConfigurationObject &&
        ari == other.ari &&
        configurationId == other.configurationId &&
        projectId == other.projectId &&
        name == other.name &&
        redirectUris == other.redirectUris &&
        postLogoutRedirectUris == other.postLogoutRedirectUris &&
        scope == other.scope &&
        clientId == other.clientId &&
        creationDate == other.creationDate &&
        vpDefinition == other.vpDefinition &&
        presentationDefinition == other.presentationDefinition &&
        idTokenMapping == other.idTokenMapping &&
        clientMetadata == other.clientMetadata &&
        tokenEndpointAuthMethod == other.tokenEndpointAuthMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, postLogoutRedirectUris.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jc(_$hash, presentationDefinition.hashCode);
    _$hash = $jc(_$hash, idTokenMapping.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, tokenEndpointAuthMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginConfigurationObject')
          ..add('ari', ari)
          ..add('configurationId', configurationId)
          ..add('projectId', projectId)
          ..add('name', name)
          ..add('redirectUris', redirectUris)
          ..add('postLogoutRedirectUris', postLogoutRedirectUris)
          ..add('scope', scope)
          ..add('clientId', clientId)
          ..add('creationDate', creationDate)
          ..add('vpDefinition', vpDefinition)
          ..add('presentationDefinition', presentationDefinition)
          ..add('idTokenMapping', idTokenMapping)
          ..add('clientMetadata', clientMetadata)
          ..add('tokenEndpointAuthMethod', tokenEndpointAuthMethod))
        .toString();
  }
}

class LoginConfigurationObjectBuilder
    implements
        Builder<LoginConfigurationObject, LoginConfigurationObjectBuilder> {
  _$LoginConfigurationObject? _$v;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

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

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

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

  LoginConfigurationClientMetadataOutputBuilder? _clientMetadata;
  LoginConfigurationClientMetadataOutputBuilder get clientMetadata =>
      _$this._clientMetadata ??=
          LoginConfigurationClientMetadataOutputBuilder();
  set clientMetadata(
          LoginConfigurationClientMetadataOutputBuilder? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  TokenEndpointAuthMethod? _tokenEndpointAuthMethod;
  TokenEndpointAuthMethod? get tokenEndpointAuthMethod =>
      _$this._tokenEndpointAuthMethod;
  set tokenEndpointAuthMethod(
          TokenEndpointAuthMethod? tokenEndpointAuthMethod) =>
      _$this._tokenEndpointAuthMethod = tokenEndpointAuthMethod;

  LoginConfigurationObjectBuilder() {
    LoginConfigurationObject._defaults(this);
  }

  LoginConfigurationObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ari = $v.ari;
      _configurationId = $v.configurationId;
      _projectId = $v.projectId;
      _name = $v.name;
      _redirectUris = $v.redirectUris?.toBuilder();
      _postLogoutRedirectUris = $v.postLogoutRedirectUris?.toBuilder();
      _scope = $v.scope;
      _clientId = $v.clientId;
      _creationDate = $v.creationDate;
      _vpDefinition = $v.vpDefinition;
      _presentationDefinition = $v.presentationDefinition;
      _idTokenMapping = $v.idTokenMapping.toBuilder();
      _clientMetadata = $v.clientMetadata.toBuilder();
      _tokenEndpointAuthMethod = $v.tokenEndpointAuthMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginConfigurationObject other) {
    _$v = other as _$LoginConfigurationObject;
  }

  @override
  void update(void Function(LoginConfigurationObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginConfigurationObject build() => _build();

  _$LoginConfigurationObject _build() {
    _$LoginConfigurationObject _$result;
    try {
      _$result = _$v ??
          _$LoginConfigurationObject._(
            ari: BuiltValueNullFieldError.checkNotNull(
                ari, r'LoginConfigurationObject', 'ari'),
            configurationId: configurationId,
            projectId: BuiltValueNullFieldError.checkNotNull(
                projectId, r'LoginConfigurationObject', 'projectId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'LoginConfigurationObject', 'name'),
            redirectUris: _redirectUris?.build(),
            postLogoutRedirectUris: _postLogoutRedirectUris?.build(),
            scope: scope,
            clientId: BuiltValueNullFieldError.checkNotNull(
                clientId, r'LoginConfigurationObject', 'clientId'),
            creationDate: BuiltValueNullFieldError.checkNotNull(
                creationDate, r'LoginConfigurationObject', 'creationDate'),
            vpDefinition: BuiltValueNullFieldError.checkNotNull(
                vpDefinition, r'LoginConfigurationObject', 'vpDefinition'),
            presentationDefinition: presentationDefinition,
            idTokenMapping: idTokenMapping.build(),
            clientMetadata: clientMetadata.build(),
            tokenEndpointAuthMethod: BuiltValueNullFieldError.checkNotNull(
                tokenEndpointAuthMethod,
                r'LoginConfigurationObject',
                'tokenEndpointAuthMethod'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirectUris';
        _redirectUris?.build();
        _$failedField = 'postLogoutRedirectUris';
        _postLogoutRedirectUris?.build();

        _$failedField = 'idTokenMapping';
        idTokenMapping.build();
        _$failedField = 'clientMetadata';
        clientMetadata.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LoginConfigurationObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
