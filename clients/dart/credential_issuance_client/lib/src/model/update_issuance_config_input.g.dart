// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_issuance_config_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateIssuanceConfigInputFormatEnum
    _$updateIssuanceConfigInputFormatEnum_ldpVc =
    const UpdateIssuanceConfigInputFormatEnum._('ldpVc');
const UpdateIssuanceConfigInputFormatEnum
    _$updateIssuanceConfigInputFormatEnum_jwtVcJsonLd =
    const UpdateIssuanceConfigInputFormatEnum._('jwtVcJsonLd');
const UpdateIssuanceConfigInputFormatEnum
    _$updateIssuanceConfigInputFormatEnum_sdJwtVcJsonLd =
    const UpdateIssuanceConfigInputFormatEnum._('sdJwtVcJsonLd');

UpdateIssuanceConfigInputFormatEnum
    _$updateIssuanceConfigInputFormatEnumValueOf(String name) {
  switch (name) {
    case 'ldpVc':
      return _$updateIssuanceConfigInputFormatEnum_ldpVc;
    case 'jwtVcJsonLd':
      return _$updateIssuanceConfigInputFormatEnum_jwtVcJsonLd;
    case 'sdJwtVcJsonLd':
      return _$updateIssuanceConfigInputFormatEnum_sdJwtVcJsonLd;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UpdateIssuanceConfigInputFormatEnum>
    _$updateIssuanceConfigInputFormatEnumValues = BuiltSet<
        UpdateIssuanceConfigInputFormatEnum>(const <UpdateIssuanceConfigInputFormatEnum>[
  _$updateIssuanceConfigInputFormatEnum_ldpVc,
  _$updateIssuanceConfigInputFormatEnum_jwtVcJsonLd,
  _$updateIssuanceConfigInputFormatEnum_sdJwtVcJsonLd,
]);

Serializer<UpdateIssuanceConfigInputFormatEnum>
    _$updateIssuanceConfigInputFormatEnumSerializer =
    _$UpdateIssuanceConfigInputFormatEnumSerializer();

class _$UpdateIssuanceConfigInputFormatEnumSerializer
    implements PrimitiveSerializer<UpdateIssuanceConfigInputFormatEnum> {
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
  final Iterable<Type> types = const <Type>[
    UpdateIssuanceConfigInputFormatEnum
  ];
  @override
  final String wireName = 'UpdateIssuanceConfigInputFormatEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateIssuanceConfigInputFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateIssuanceConfigInputFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateIssuanceConfigInputFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateIssuanceConfigInput extends UpdateIssuanceConfigInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? issuerWalletId;
  @override
  final int? credentialOfferDuration;
  @override
  final UpdateIssuanceConfigInputFormatEnum? format;
  @override
  final String? issuerUri;
  @override
  final BuiltList<CredentialSupportedObject>? credentialSupported;
  @override
  final BuiltMap<String, JsonObject?>? issuerMetadata;
  @override
  final BuiltList<String>? returnUris;

  factory _$UpdateIssuanceConfigInput(
          [void Function(UpdateIssuanceConfigInputBuilder)? updates]) =>
      (UpdateIssuanceConfigInputBuilder()..update(updates))._build();

  _$UpdateIssuanceConfigInput._(
      {this.name,
      this.description,
      this.issuerWalletId,
      this.credentialOfferDuration,
      this.format,
      this.issuerUri,
      this.credentialSupported,
      this.issuerMetadata,
      this.returnUris})
      : super._();
  @override
  UpdateIssuanceConfigInput rebuild(
          void Function(UpdateIssuanceConfigInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateIssuanceConfigInputBuilder toBuilder() =>
      UpdateIssuanceConfigInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateIssuanceConfigInput &&
        name == other.name &&
        description == other.description &&
        issuerWalletId == other.issuerWalletId &&
        credentialOfferDuration == other.credentialOfferDuration &&
        format == other.format &&
        issuerUri == other.issuerUri &&
        credentialSupported == other.credentialSupported &&
        issuerMetadata == other.issuerMetadata &&
        returnUris == other.returnUris;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, issuerWalletId.hashCode);
    _$hash = $jc(_$hash, credentialOfferDuration.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, issuerUri.hashCode);
    _$hash = $jc(_$hash, credentialSupported.hashCode);
    _$hash = $jc(_$hash, issuerMetadata.hashCode);
    _$hash = $jc(_$hash, returnUris.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateIssuanceConfigInput')
          ..add('name', name)
          ..add('description', description)
          ..add('issuerWalletId', issuerWalletId)
          ..add('credentialOfferDuration', credentialOfferDuration)
          ..add('format', format)
          ..add('issuerUri', issuerUri)
          ..add('credentialSupported', credentialSupported)
          ..add('issuerMetadata', issuerMetadata)
          ..add('returnUris', returnUris))
        .toString();
  }
}

class UpdateIssuanceConfigInputBuilder
    implements
        Builder<UpdateIssuanceConfigInput, UpdateIssuanceConfigInputBuilder> {
  _$UpdateIssuanceConfigInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _issuerWalletId;
  String? get issuerWalletId => _$this._issuerWalletId;
  set issuerWalletId(String? issuerWalletId) =>
      _$this._issuerWalletId = issuerWalletId;

  int? _credentialOfferDuration;
  int? get credentialOfferDuration => _$this._credentialOfferDuration;
  set credentialOfferDuration(int? credentialOfferDuration) =>
      _$this._credentialOfferDuration = credentialOfferDuration;

  UpdateIssuanceConfigInputFormatEnum? _format;
  UpdateIssuanceConfigInputFormatEnum? get format => _$this._format;
  set format(UpdateIssuanceConfigInputFormatEnum? format) =>
      _$this._format = format;

  String? _issuerUri;
  String? get issuerUri => _$this._issuerUri;
  set issuerUri(String? issuerUri) => _$this._issuerUri = issuerUri;

  ListBuilder<CredentialSupportedObject>? _credentialSupported;
  ListBuilder<CredentialSupportedObject> get credentialSupported =>
      _$this._credentialSupported ??= ListBuilder<CredentialSupportedObject>();
  set credentialSupported(
          ListBuilder<CredentialSupportedObject>? credentialSupported) =>
      _$this._credentialSupported = credentialSupported;

  MapBuilder<String, JsonObject?>? _issuerMetadata;
  MapBuilder<String, JsonObject?> get issuerMetadata =>
      _$this._issuerMetadata ??= MapBuilder<String, JsonObject?>();
  set issuerMetadata(MapBuilder<String, JsonObject?>? issuerMetadata) =>
      _$this._issuerMetadata = issuerMetadata;

  ListBuilder<String>? _returnUris;
  ListBuilder<String> get returnUris =>
      _$this._returnUris ??= ListBuilder<String>();
  set returnUris(ListBuilder<String>? returnUris) =>
      _$this._returnUris = returnUris;

  UpdateIssuanceConfigInputBuilder() {
    UpdateIssuanceConfigInput._defaults(this);
  }

  UpdateIssuanceConfigInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _issuerWalletId = $v.issuerWalletId;
      _credentialOfferDuration = $v.credentialOfferDuration;
      _format = $v.format;
      _issuerUri = $v.issuerUri;
      _credentialSupported = $v.credentialSupported?.toBuilder();
      _issuerMetadata = $v.issuerMetadata?.toBuilder();
      _returnUris = $v.returnUris?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateIssuanceConfigInput other) {
    _$v = other as _$UpdateIssuanceConfigInput;
  }

  @override
  void update(void Function(UpdateIssuanceConfigInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateIssuanceConfigInput build() => _build();

  _$UpdateIssuanceConfigInput _build() {
    _$UpdateIssuanceConfigInput _$result;
    try {
      _$result = _$v ??
          _$UpdateIssuanceConfigInput._(
            name: name,
            description: description,
            issuerWalletId: issuerWalletId,
            credentialOfferDuration: credentialOfferDuration,
            format: format,
            issuerUri: issuerUri,
            credentialSupported: _credentialSupported?.build(),
            issuerMetadata: _issuerMetadata?.build(),
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
        throw BuiltValueNestedFieldError(
            r'UpdateIssuanceConfigInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
