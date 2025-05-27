// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issuance_config_mini_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IssuanceConfigMiniDtoFormatEnum _$issuanceConfigMiniDtoFormatEnum_ldpVc =
    const IssuanceConfigMiniDtoFormatEnum._('ldpVc');
const IssuanceConfigMiniDtoFormatEnum
    _$issuanceConfigMiniDtoFormatEnum_jwtVcJsonLd =
    const IssuanceConfigMiniDtoFormatEnum._('jwtVcJsonLd');
const IssuanceConfigMiniDtoFormatEnum
    _$issuanceConfigMiniDtoFormatEnum_sdJwtVcJsonLd =
    const IssuanceConfigMiniDtoFormatEnum._('sdJwtVcJsonLd');

IssuanceConfigMiniDtoFormatEnum _$issuanceConfigMiniDtoFormatEnumValueOf(
    String name) {
  switch (name) {
    case 'ldpVc':
      return _$issuanceConfigMiniDtoFormatEnum_ldpVc;
    case 'jwtVcJsonLd':
      return _$issuanceConfigMiniDtoFormatEnum_jwtVcJsonLd;
    case 'sdJwtVcJsonLd':
      return _$issuanceConfigMiniDtoFormatEnum_sdJwtVcJsonLd;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IssuanceConfigMiniDtoFormatEnum>
    _$issuanceConfigMiniDtoFormatEnumValues = BuiltSet<
        IssuanceConfigMiniDtoFormatEnum>(const <IssuanceConfigMiniDtoFormatEnum>[
  _$issuanceConfigMiniDtoFormatEnum_ldpVc,
  _$issuanceConfigMiniDtoFormatEnum_jwtVcJsonLd,
  _$issuanceConfigMiniDtoFormatEnum_sdJwtVcJsonLd,
]);

Serializer<IssuanceConfigMiniDtoFormatEnum>
    _$issuanceConfigMiniDtoFormatEnumSerializer =
    _$IssuanceConfigMiniDtoFormatEnumSerializer();

class _$IssuanceConfigMiniDtoFormatEnumSerializer
    implements PrimitiveSerializer<IssuanceConfigMiniDtoFormatEnum> {
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
  final Iterable<Type> types = const <Type>[IssuanceConfigMiniDtoFormatEnum];
  @override
  final String wireName = 'IssuanceConfigMiniDtoFormatEnum';

  @override
  Object serialize(
          Serializers serializers, IssuanceConfigMiniDtoFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IssuanceConfigMiniDtoFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IssuanceConfigMiniDtoFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IssuanceConfigMiniDto extends IssuanceConfigMiniDto {
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? issuerDid;
  @override
  final String? issuerWalletId;
  @override
  final int? credentialOfferDuration;
  @override
  final int? cNonceDuration;
  @override
  final IssuanceConfigMiniDtoFormatEnum? format;
  @override
  final String? issuerUri;
  @override
  final BuiltMap<String, JsonObject?>? issuerMetadata;
  @override
  final int? version;

  factory _$IssuanceConfigMiniDto(
          [void Function(IssuanceConfigMiniDtoBuilder)? updates]) =>
      (IssuanceConfigMiniDtoBuilder()..update(updates))._build();

  _$IssuanceConfigMiniDto._(
      {required this.id,
      this.name,
      this.issuerDid,
      this.issuerWalletId,
      this.credentialOfferDuration,
      this.cNonceDuration,
      this.format,
      this.issuerUri,
      this.issuerMetadata,
      this.version})
      : super._();
  @override
  IssuanceConfigMiniDto rebuild(
          void Function(IssuanceConfigMiniDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuanceConfigMiniDtoBuilder toBuilder() =>
      IssuanceConfigMiniDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuanceConfigMiniDto &&
        id == other.id &&
        name == other.name &&
        issuerDid == other.issuerDid &&
        issuerWalletId == other.issuerWalletId &&
        credentialOfferDuration == other.credentialOfferDuration &&
        cNonceDuration == other.cNonceDuration &&
        format == other.format &&
        issuerUri == other.issuerUri &&
        issuerMetadata == other.issuerMetadata &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, issuerDid.hashCode);
    _$hash = $jc(_$hash, issuerWalletId.hashCode);
    _$hash = $jc(_$hash, credentialOfferDuration.hashCode);
    _$hash = $jc(_$hash, cNonceDuration.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, issuerUri.hashCode);
    _$hash = $jc(_$hash, issuerMetadata.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IssuanceConfigMiniDto')
          ..add('id', id)
          ..add('name', name)
          ..add('issuerDid', issuerDid)
          ..add('issuerWalletId', issuerWalletId)
          ..add('credentialOfferDuration', credentialOfferDuration)
          ..add('cNonceDuration', cNonceDuration)
          ..add('format', format)
          ..add('issuerUri', issuerUri)
          ..add('issuerMetadata', issuerMetadata)
          ..add('version', version))
        .toString();
  }
}

class IssuanceConfigMiniDtoBuilder
    implements Builder<IssuanceConfigMiniDto, IssuanceConfigMiniDtoBuilder> {
  _$IssuanceConfigMiniDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  IssuanceConfigMiniDtoFormatEnum? _format;
  IssuanceConfigMiniDtoFormatEnum? get format => _$this._format;
  set format(IssuanceConfigMiniDtoFormatEnum? format) =>
      _$this._format = format;

  String? _issuerUri;
  String? get issuerUri => _$this._issuerUri;
  set issuerUri(String? issuerUri) => _$this._issuerUri = issuerUri;

  MapBuilder<String, JsonObject?>? _issuerMetadata;
  MapBuilder<String, JsonObject?> get issuerMetadata =>
      _$this._issuerMetadata ??= MapBuilder<String, JsonObject?>();
  set issuerMetadata(MapBuilder<String, JsonObject?>? issuerMetadata) =>
      _$this._issuerMetadata = issuerMetadata;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  IssuanceConfigMiniDtoBuilder() {
    IssuanceConfigMiniDto._defaults(this);
  }

  IssuanceConfigMiniDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _issuerDid = $v.issuerDid;
      _issuerWalletId = $v.issuerWalletId;
      _credentialOfferDuration = $v.credentialOfferDuration;
      _cNonceDuration = $v.cNonceDuration;
      _format = $v.format;
      _issuerUri = $v.issuerUri;
      _issuerMetadata = $v.issuerMetadata?.toBuilder();
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuanceConfigMiniDto other) {
    _$v = other as _$IssuanceConfigMiniDto;
  }

  @override
  void update(void Function(IssuanceConfigMiniDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IssuanceConfigMiniDto build() => _build();

  _$IssuanceConfigMiniDto _build() {
    _$IssuanceConfigMiniDto _$result;
    try {
      _$result = _$v ??
          _$IssuanceConfigMiniDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'IssuanceConfigMiniDto', 'id'),
            name: name,
            issuerDid: issuerDid,
            issuerWalletId: issuerWalletId,
            credentialOfferDuration: credentialOfferDuration,
            cNonceDuration: cNonceDuration,
            format: format,
            issuerUri: issuerUri,
            issuerMetadata: _issuerMetadata?.build(),
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'issuerMetadata';
        _issuerMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'IssuanceConfigMiniDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
