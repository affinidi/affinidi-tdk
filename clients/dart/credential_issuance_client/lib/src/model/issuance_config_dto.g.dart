// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuance_config_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IssuanceConfigDtoFormatEnum _$issuanceConfigDtoFormatEnum_ldpVc =
    const IssuanceConfigDtoFormatEnum._('ldpVc');
const IssuanceConfigDtoFormatEnum _$issuanceConfigDtoFormatEnum_jwtVcJsonLd =
    const IssuanceConfigDtoFormatEnum._('jwtVcJsonLd');
const IssuanceConfigDtoFormatEnum _$issuanceConfigDtoFormatEnum_sdJwtVcJsonLd =
    const IssuanceConfigDtoFormatEnum._('sdJwtVcJsonLd');

IssuanceConfigDtoFormatEnum _$issuanceConfigDtoFormatEnumValueOf(String name) {
  switch (name) {
    case 'ldpVc':
      return _$issuanceConfigDtoFormatEnum_ldpVc;
    case 'jwtVcJsonLd':
      return _$issuanceConfigDtoFormatEnum_jwtVcJsonLd;
    case 'sdJwtVcJsonLd':
      return _$issuanceConfigDtoFormatEnum_sdJwtVcJsonLd;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<IssuanceConfigDtoFormatEnum>
    _$issuanceConfigDtoFormatEnumValues = new BuiltSet<
        IssuanceConfigDtoFormatEnum>(const <IssuanceConfigDtoFormatEnum>[
  _$issuanceConfigDtoFormatEnum_ldpVc,
  _$issuanceConfigDtoFormatEnum_jwtVcJsonLd,
  _$issuanceConfigDtoFormatEnum_sdJwtVcJsonLd,
]);

Serializer<IssuanceConfigDtoFormatEnum>
    _$issuanceConfigDtoFormatEnumSerializer =
    new _$IssuanceConfigDtoFormatEnumSerializer();

class _$IssuanceConfigDtoFormatEnumSerializer
    implements PrimitiveSerializer<IssuanceConfigDtoFormatEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ldpVc': 'ldp_vc',
    'jwtVcJsonLd': 'jwt_vc_json-ld',
    'sdJwtVcJsonLd': 'sd_jwt_vc_json-ld',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ldp_vc': 'ldpVc',
    'jwt_vc_json-ld': 'jwtVcJsonLd',
    'sd_jwt_vc_json-ld': 'sdJwtVcJsonLd',
  };

  @override
  final Iterable<Type> types = const <Type>[IssuanceConfigDtoFormatEnum];
  @override
  final String wireName = 'IssuanceConfigDtoFormatEnum';

  @override
  Object serialize(Serializers serializers, IssuanceConfigDtoFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IssuanceConfigDtoFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IssuanceConfigDtoFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IssuanceConfigDto extends IssuanceConfigDto {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? issuerDid;
  @override
  final String? issuerWalletId;
  @override
  final int? credentialOfferDuration;
  @override
  final int? cNonceDuration;
  @override
  final IssuanceConfigDtoFormatEnum? format;
  @override
  final String? issuerUri;
  @override
  final BuiltList<CredentialSupportedObject>? credentialSupported;
  @override
  final BuiltMap<String, JsonObject?>? issuerMetadata;
  @override
  final int? version;
  @override
  final BuiltList<String>? returnUris;

  factory _$IssuanceConfigDto(
          [void Function(IssuanceConfigDtoBuilder)? updates]) =>
      (new IssuanceConfigDtoBuilder()..update(updates))._build();

  _$IssuanceConfigDto._(
      {this.id,
      this.name,
      this.description,
      this.issuerDid,
      this.issuerWalletId,
      this.credentialOfferDuration,
      this.cNonceDuration,
      this.format,
      this.issuerUri,
      this.credentialSupported,
      this.issuerMetadata,
      this.version,
      this.returnUris})
      : super._();

  @override
  IssuanceConfigDto rebuild(void Function(IssuanceConfigDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuanceConfigDtoBuilder toBuilder() =>
      new IssuanceConfigDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuanceConfigDto &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        issuerDid == other.issuerDid &&
        issuerWalletId == other.issuerWalletId &&
        credentialOfferDuration == other.credentialOfferDuration &&
        cNonceDuration == other.cNonceDuration &&
        format == other.format &&
        issuerUri == other.issuerUri &&
        credentialSupported == other.credentialSupported &&
        issuerMetadata == other.issuerMetadata &&
        version == other.version &&
        returnUris == other.returnUris;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, issuerDid.hashCode);
    _$hash = $jc(_$hash, issuerWalletId.hashCode);
    _$hash = $jc(_$hash, credentialOfferDuration.hashCode);
    _$hash = $jc(_$hash, cNonceDuration.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, issuerUri.hashCode);
    _$hash = $jc(_$hash, credentialSupported.hashCode);
    _$hash = $jc(_$hash, issuerMetadata.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, returnUris.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IssuanceConfigDto')
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('issuerDid', issuerDid)
          ..add('issuerWalletId', issuerWalletId)
          ..add('credentialOfferDuration', credentialOfferDuration)
          ..add('cNonceDuration', cNonceDuration)
          ..add('format', format)
          ..add('issuerUri', issuerUri)
          ..add('credentialSupported', credentialSupported)
          ..add('issuerMetadata', issuerMetadata)
          ..add('version', version)
          ..add('returnUris', returnUris))
        .toString();
  }
}

class IssuanceConfigDtoBuilder
    implements Builder<IssuanceConfigDto, IssuanceConfigDtoBuilder> {
  _$IssuanceConfigDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _issuerDid;
  String? get issuerDid => _$this._issuerDid;
  set issuerDid(String? issuerDid) => _$this._issuerDid = issuerDid;

  String? _issuerWalletId;
  String? get issuerWalletId => _$this._issuerWalletId;
  set issuerWalletId(String? issuerWalletId) =>
      _$this._issuerWalletId = issuerWalletId;

  int? _credentialOfferDuration;
  int? get credentialOfferDuration => _$this._credentialOfferDuration;
  set credentialOfferDuration(int? credentialOfferDuration) =>
      _$this._credentialOfferDuration = credentialOfferDuration;

  int? _cNonceDuration;
  int? get cNonceDuration => _$this._cNonceDuration;
  set cNonceDuration(int? cNonceDuration) =>
      _$this._cNonceDuration = cNonceDuration;

  IssuanceConfigDtoFormatEnum? _format;
  IssuanceConfigDtoFormatEnum? get format => _$this._format;
  set format(IssuanceConfigDtoFormatEnum? format) => _$this._format = format;

  String? _issuerUri;
  String? get issuerUri => _$this._issuerUri;
  set issuerUri(String? issuerUri) => _$this._issuerUri = issuerUri;

  ListBuilder<CredentialSupportedObject>? _credentialSupported;
  ListBuilder<CredentialSupportedObject> get credentialSupported =>
      _$this._credentialSupported ??=
          new ListBuilder<CredentialSupportedObject>();
  set credentialSupported(
          ListBuilder<CredentialSupportedObject>? credentialSupported) =>
      _$this._credentialSupported = credentialSupported;

  MapBuilder<String, JsonObject?>? _issuerMetadata;
  MapBuilder<String, JsonObject?> get issuerMetadata =>
      _$this._issuerMetadata ??= new MapBuilder<String, JsonObject?>();
  set issuerMetadata(MapBuilder<String, JsonObject?>? issuerMetadata) =>
      _$this._issuerMetadata = issuerMetadata;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  ListBuilder<String>? _returnUris;
  ListBuilder<String> get returnUris =>
      _$this._returnUris ??= new ListBuilder<String>();
  set returnUris(ListBuilder<String>? returnUris) =>
      _$this._returnUris = returnUris;

  IssuanceConfigDtoBuilder() {
    IssuanceConfigDto._defaults(this);
  }

  IssuanceConfigDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _issuerDid = $v.issuerDid;
      _issuerWalletId = $v.issuerWalletId;
      _credentialOfferDuration = $v.credentialOfferDuration;
      _cNonceDuration = $v.cNonceDuration;
      _format = $v.format;
      _issuerUri = $v.issuerUri;
      _credentialSupported = $v.credentialSupported?.toBuilder();
      _issuerMetadata = $v.issuerMetadata?.toBuilder();
      _version = $v.version;
      _returnUris = $v.returnUris?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuanceConfigDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IssuanceConfigDto;
  }

  @override
  void update(void Function(IssuanceConfigDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IssuanceConfigDto build() => _build();

  _$IssuanceConfigDto _build() {
    _$IssuanceConfigDto _$result;
    try {
      _$result = _$v ??
          new _$IssuanceConfigDto._(
            id: id,
            name: name,
            description: description,
            issuerDid: issuerDid,
            issuerWalletId: issuerWalletId,
            credentialOfferDuration: credentialOfferDuration,
            cNonceDuration: cNonceDuration,
            format: format,
            issuerUri: issuerUri,
            credentialSupported: _credentialSupported?.build(),
            issuerMetadata: _issuerMetadata?.build(),
            version: version,
            returnUris: _returnUris?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialSupported';
        _credentialSupported?.build();
        _$failedField = 'issuerMetadata';
        _issuerMetadata?.build();

        _$failedField = 'returnUris';
        _returnUris?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IssuanceConfigDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
