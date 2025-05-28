// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_login_configuration_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLoginConfigurationOutput extends CreateLoginConfigurationOutput {
  @override
  final String ari;
  @override
  final String projectId;
  @override
  final String? configurationId;
  @override
  final String name;
  @override
  final CreateLoginConfigurationOutputAuth auth;
  @override
  final BuiltList<String> redirectUris;
  @override
  final LoginConfigurationClientMetadataOutput clientMetadata;
  @override
  final String creationDate;
  @override
  final BuiltList<String>? postLogoutRedirectUris;

  factory _$CreateLoginConfigurationOutput(
          [void Function(CreateLoginConfigurationOutputBuilder)? updates]) =>
      (CreateLoginConfigurationOutputBuilder()..update(updates))._build();

  _$CreateLoginConfigurationOutput._(
      {required this.ari,
      required this.projectId,
      this.configurationId,
      required this.name,
      required this.auth,
      required this.redirectUris,
      required this.clientMetadata,
      required this.creationDate,
      this.postLogoutRedirectUris})
      : super._();
  @override
  CreateLoginConfigurationOutput rebuild(
          void Function(CreateLoginConfigurationOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLoginConfigurationOutputBuilder toBuilder() =>
      CreateLoginConfigurationOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLoginConfigurationOutput &&
        ari == other.ari &&
        projectId == other.projectId &&
        configurationId == other.configurationId &&
        name == other.name &&
        auth == other.auth &&
        redirectUris == other.redirectUris &&
        clientMetadata == other.clientMetadata &&
        creationDate == other.creationDate &&
        postLogoutRedirectUris == other.postLogoutRedirectUris;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jc(_$hash, postLogoutRedirectUris.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateLoginConfigurationOutput')
          ..add('ari', ari)
          ..add('projectId', projectId)
          ..add('configurationId', configurationId)
          ..add('name', name)
          ..add('auth', auth)
          ..add('redirectUris', redirectUris)
          ..add('clientMetadata', clientMetadata)
          ..add('creationDate', creationDate)
          ..add('postLogoutRedirectUris', postLogoutRedirectUris))
        .toString();
  }
}

class CreateLoginConfigurationOutputBuilder
    implements
        Builder<CreateLoginConfigurationOutput,
            CreateLoginConfigurationOutputBuilder> {
  _$CreateLoginConfigurationOutput? _$v;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  CreateLoginConfigurationOutputAuthBuilder? _auth;
  CreateLoginConfigurationOutputAuthBuilder get auth =>
      _$this._auth ??= CreateLoginConfigurationOutputAuthBuilder();
  set auth(CreateLoginConfigurationOutputAuthBuilder? auth) =>
      _$this._auth = auth;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  LoginConfigurationClientMetadataOutputBuilder? _clientMetadata;
  LoginConfigurationClientMetadataOutputBuilder get clientMetadata =>
      _$this._clientMetadata ??=
          LoginConfigurationClientMetadataOutputBuilder();
  set clientMetadata(
          LoginConfigurationClientMetadataOutputBuilder? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  ListBuilder<String>? _postLogoutRedirectUris;
  ListBuilder<String> get postLogoutRedirectUris =>
      _$this._postLogoutRedirectUris ??= ListBuilder<String>();
  set postLogoutRedirectUris(ListBuilder<String>? postLogoutRedirectUris) =>
      _$this._postLogoutRedirectUris = postLogoutRedirectUris;

  CreateLoginConfigurationOutputBuilder() {
    CreateLoginConfigurationOutput._defaults(this);
  }

  CreateLoginConfigurationOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ari = $v.ari;
      _projectId = $v.projectId;
      _configurationId = $v.configurationId;
      _name = $v.name;
      _auth = $v.auth.toBuilder();
      _redirectUris = $v.redirectUris.toBuilder();
      _clientMetadata = $v.clientMetadata.toBuilder();
      _creationDate = $v.creationDate;
      _postLogoutRedirectUris = $v.postLogoutRedirectUris?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLoginConfigurationOutput other) {
    _$v = other as _$CreateLoginConfigurationOutput;
  }

  @override
  void update(void Function(CreateLoginConfigurationOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLoginConfigurationOutput build() => _build();

  _$CreateLoginConfigurationOutput _build() {
    _$CreateLoginConfigurationOutput _$result;
    try {
      _$result = _$v ??
          _$CreateLoginConfigurationOutput._(
            ari: BuiltValueNullFieldError.checkNotNull(
                ari, r'CreateLoginConfigurationOutput', 'ari'),
            projectId: BuiltValueNullFieldError.checkNotNull(
                projectId, r'CreateLoginConfigurationOutput', 'projectId'),
            configurationId: configurationId,
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateLoginConfigurationOutput', 'name'),
            auth: auth.build(),
            redirectUris: redirectUris.build(),
            clientMetadata: clientMetadata.build(),
            creationDate: BuiltValueNullFieldError.checkNotNull(creationDate,
                r'CreateLoginConfigurationOutput', 'creationDate'),
            postLogoutRedirectUris: _postLogoutRedirectUris?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'auth';
        auth.build();
        _$failedField = 'redirectUris';
        redirectUris.build();
        _$failedField = 'clientMetadata';
        clientMetadata.build();

        _$failedField = 'postLogoutRedirectUris';
        _postLogoutRedirectUris?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateLoginConfigurationOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
