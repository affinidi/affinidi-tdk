// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_login_configuration_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateLoginConfigurationInputClaimFormatEnum
    _$createLoginConfigurationInputClaimFormatEnum_array =
    const CreateLoginConfigurationInputClaimFormatEnum._('array');
const CreateLoginConfigurationInputClaimFormatEnum
    _$createLoginConfigurationInputClaimFormatEnum_map =
    const CreateLoginConfigurationInputClaimFormatEnum._('map');

CreateLoginConfigurationInputClaimFormatEnum
    _$createLoginConfigurationInputClaimFormatEnumValueOf(String name) {
  switch (name) {
    case 'array':
      return _$createLoginConfigurationInputClaimFormatEnum_array;
    case 'map':
      return _$createLoginConfigurationInputClaimFormatEnum_map;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateLoginConfigurationInputClaimFormatEnum>
    _$createLoginConfigurationInputClaimFormatEnumValues = BuiltSet<
        CreateLoginConfigurationInputClaimFormatEnum>(const <CreateLoginConfigurationInputClaimFormatEnum>[
  _$createLoginConfigurationInputClaimFormatEnum_array,
  _$createLoginConfigurationInputClaimFormatEnum_map,
]);

Serializer<CreateLoginConfigurationInputClaimFormatEnum>
    _$createLoginConfigurationInputClaimFormatEnumSerializer =
    _$CreateLoginConfigurationInputClaimFormatEnumSerializer();

class _$CreateLoginConfigurationInputClaimFormatEnumSerializer
    implements
        PrimitiveSerializer<CreateLoginConfigurationInputClaimFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'array': 'array',
    'map': 'map',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'array': 'array',
    'map': 'map',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateLoginConfigurationInputClaimFormatEnum
  ];
  @override
  final String wireName = 'CreateLoginConfigurationInputClaimFormatEnum';

  @override
  Object serialize(Serializers serializers,
          CreateLoginConfigurationInputClaimFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateLoginConfigurationInputClaimFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateLoginConfigurationInputClaimFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateLoginConfigurationInput extends CreateLoginConfigurationInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final BuiltList<String> redirectUris;
  @override
  final BuiltList<String>? postLogoutRedirectUris;
  @override
  final String? vpDefinition;
  @override
  final JsonObject? presentationDefinition;
  @override
  final BuiltList<IdTokenMappingItem>? idTokenMapping;
  @override
  final LoginConfigurationClientMetadataInput? clientMetadata;
  @override
  final CreateLoginConfigurationInputClaimFormatEnum? claimFormat;
  @override
  final bool? failOnMappingConflict;
  @override
  final String? scope;
  @override
  final TokenEndpointAuthMethod? tokenEndpointAuthMethod;

  factory _$CreateLoginConfigurationInput(
          [void Function(CreateLoginConfigurationInputBuilder)? updates]) =>
      (CreateLoginConfigurationInputBuilder()..update(updates))._build();

  _$CreateLoginConfigurationInput._(
      {required this.name,
      this.description,
      required this.redirectUris,
      this.postLogoutRedirectUris,
      this.vpDefinition,
      this.presentationDefinition,
      this.idTokenMapping,
      this.clientMetadata,
      this.claimFormat,
      this.failOnMappingConflict,
      this.scope,
      this.tokenEndpointAuthMethod})
      : super._();
  @override
  CreateLoginConfigurationInput rebuild(
          void Function(CreateLoginConfigurationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLoginConfigurationInputBuilder toBuilder() =>
      CreateLoginConfigurationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLoginConfigurationInput &&
        name == other.name &&
        description == other.description &&
        redirectUris == other.redirectUris &&
        postLogoutRedirectUris == other.postLogoutRedirectUris &&
        vpDefinition == other.vpDefinition &&
        presentationDefinition == other.presentationDefinition &&
        idTokenMapping == other.idTokenMapping &&
        clientMetadata == other.clientMetadata &&
        claimFormat == other.claimFormat &&
        failOnMappingConflict == other.failOnMappingConflict &&
        scope == other.scope &&
        tokenEndpointAuthMethod == other.tokenEndpointAuthMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, postLogoutRedirectUris.hashCode);
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jc(_$hash, presentationDefinition.hashCode);
    _$hash = $jc(_$hash, idTokenMapping.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, claimFormat.hashCode);
    _$hash = $jc(_$hash, failOnMappingConflict.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jc(_$hash, tokenEndpointAuthMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateLoginConfigurationInput')
          ..add('name', name)
          ..add('description', description)
          ..add('redirectUris', redirectUris)
          ..add('postLogoutRedirectUris', postLogoutRedirectUris)
          ..add('vpDefinition', vpDefinition)
          ..add('presentationDefinition', presentationDefinition)
          ..add('idTokenMapping', idTokenMapping)
          ..add('clientMetadata', clientMetadata)
          ..add('claimFormat', claimFormat)
          ..add('failOnMappingConflict', failOnMappingConflict)
          ..add('scope', scope)
          ..add('tokenEndpointAuthMethod', tokenEndpointAuthMethod))
        .toString();
  }
}

class CreateLoginConfigurationInputBuilder
    implements
        Builder<CreateLoginConfigurationInput,
            CreateLoginConfigurationInputBuilder> {
  _$CreateLoginConfigurationInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

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

  CreateLoginConfigurationInputClaimFormatEnum? _claimFormat;
  CreateLoginConfigurationInputClaimFormatEnum? get claimFormat =>
      _$this._claimFormat;
  set claimFormat(CreateLoginConfigurationInputClaimFormatEnum? claimFormat) =>
      _$this._claimFormat = claimFormat;

  bool? _failOnMappingConflict;
  bool? get failOnMappingConflict => _$this._failOnMappingConflict;
  set failOnMappingConflict(bool? failOnMappingConflict) =>
      _$this._failOnMappingConflict = failOnMappingConflict;

  String? _scope;
  String? get scope => _$this._scope;
  set scope(String? scope) => _$this._scope = scope;

  TokenEndpointAuthMethod? _tokenEndpointAuthMethod;
  TokenEndpointAuthMethod? get tokenEndpointAuthMethod =>
      _$this._tokenEndpointAuthMethod;
  set tokenEndpointAuthMethod(
          TokenEndpointAuthMethod? tokenEndpointAuthMethod) =>
      _$this._tokenEndpointAuthMethod = tokenEndpointAuthMethod;

  CreateLoginConfigurationInputBuilder() {
    CreateLoginConfigurationInput._defaults(this);
  }

  CreateLoginConfigurationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _redirectUris = $v.redirectUris.toBuilder();
      _postLogoutRedirectUris = $v.postLogoutRedirectUris?.toBuilder();
      _vpDefinition = $v.vpDefinition;
      _presentationDefinition = $v.presentationDefinition;
      _idTokenMapping = $v.idTokenMapping?.toBuilder();
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _claimFormat = $v.claimFormat;
      _failOnMappingConflict = $v.failOnMappingConflict;
      _scope = $v.scope;
      _tokenEndpointAuthMethod = $v.tokenEndpointAuthMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLoginConfigurationInput other) {
    _$v = other as _$CreateLoginConfigurationInput;
  }

  @override
  void update(void Function(CreateLoginConfigurationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLoginConfigurationInput build() => _build();

  _$CreateLoginConfigurationInput _build() {
    _$CreateLoginConfigurationInput _$result;
    try {
      _$result = _$v ??
          _$CreateLoginConfigurationInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateLoginConfigurationInput', 'name'),
            description: description,
            redirectUris: redirectUris.build(),
            postLogoutRedirectUris: _postLogoutRedirectUris?.build(),
            vpDefinition: vpDefinition,
            presentationDefinition: presentationDefinition,
            idTokenMapping: _idTokenMapping?.build(),
            clientMetadata: _clientMetadata?.build(),
            claimFormat: claimFormat,
            failOnMappingConflict: failOnMappingConflict,
            scope: scope,
            tokenEndpointAuthMethod: tokenEndpointAuthMethod,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'redirectUris';
        redirectUris.build();
        _$failedField = 'postLogoutRedirectUris';
        _postLogoutRedirectUris?.build();

        _$failedField = 'idTokenMapping';
        _idTokenMapping?.build();
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateLoginConfigurationInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
