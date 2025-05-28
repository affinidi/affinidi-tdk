// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_issuance_config_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateIssuanceConfigInputFormatEnum
    _$createIssuanceConfigInputFormatEnum_ldpVc =
    const CreateIssuanceConfigInputFormatEnum._('ldpVc');
const CreateIssuanceConfigInputFormatEnum
    _$createIssuanceConfigInputFormatEnum_jwtVcJsonLd =
    const CreateIssuanceConfigInputFormatEnum._('jwtVcJsonLd');
const CreateIssuanceConfigInputFormatEnum
    _$createIssuanceConfigInputFormatEnum_sdJwtVcJsonLd =
    const CreateIssuanceConfigInputFormatEnum._('sdJwtVcJsonLd');

CreateIssuanceConfigInputFormatEnum
    _$createIssuanceConfigInputFormatEnumValueOf(String name) {
  switch (name) {
    case 'ldpVc':
      return _$createIssuanceConfigInputFormatEnum_ldpVc;
    case 'jwtVcJsonLd':
      return _$createIssuanceConfigInputFormatEnum_jwtVcJsonLd;
    case 'sdJwtVcJsonLd':
      return _$createIssuanceConfigInputFormatEnum_sdJwtVcJsonLd;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateIssuanceConfigInputFormatEnum>
    _$createIssuanceConfigInputFormatEnumValues = BuiltSet<
        CreateIssuanceConfigInputFormatEnum>(const <CreateIssuanceConfigInputFormatEnum>[
  _$createIssuanceConfigInputFormatEnum_ldpVc,
  _$createIssuanceConfigInputFormatEnum_jwtVcJsonLd,
  _$createIssuanceConfigInputFormatEnum_sdJwtVcJsonLd,
]);

Serializer<CreateIssuanceConfigInputFormatEnum>
    _$createIssuanceConfigInputFormatEnumSerializer =
    _$CreateIssuanceConfigInputFormatEnumSerializer();

class _$CreateIssuanceConfigInputFormatEnumSerializer
    implements PrimitiveSerializer<CreateIssuanceConfigInputFormatEnum> {
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
    CreateIssuanceConfigInputFormatEnum
  ];
  @override
  final String wireName = 'CreateIssuanceConfigInputFormatEnum';

  @override
  Object serialize(
          Serializers serializers, CreateIssuanceConfigInputFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateIssuanceConfigInputFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateIssuanceConfigInputFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateIssuanceConfigInput extends CreateIssuanceConfigInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String issuerWalletId;
  @override
  final int? credentialOfferDuration;
  @override
  final CreateIssuanceConfigInputFormatEnum? format;
  @override
  final BuiltList<CredentialSupportedObject> credentialSupported;
  @override
  final BuiltMap<String, JsonObject?>? issuerMetadata;
  @override
  final BuiltList<String>? returnUris;
  @override
  final CisConfigurationWebhookSetting? webhook;

  factory _$CreateIssuanceConfigInput(
          [void Function(CreateIssuanceConfigInputBuilder)? updates]) =>
      (CreateIssuanceConfigInputBuilder()..update(updates))._build();

  _$CreateIssuanceConfigInput._(
      {this.name,
      this.description,
      required this.issuerWalletId,
      this.credentialOfferDuration,
      this.format,
      required this.credentialSupported,
      this.issuerMetadata,
      this.returnUris,
      this.webhook})
      : super._();
  @override
  CreateIssuanceConfigInput rebuild(
          void Function(CreateIssuanceConfigInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIssuanceConfigInputBuilder toBuilder() =>
      CreateIssuanceConfigInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIssuanceConfigInput &&
        name == other.name &&
        description == other.description &&
        issuerWalletId == other.issuerWalletId &&
        credentialOfferDuration == other.credentialOfferDuration &&
        format == other.format &&
        credentialSupported == other.credentialSupported &&
        issuerMetadata == other.issuerMetadata &&
        returnUris == other.returnUris &&
        webhook == other.webhook;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, issuerWalletId.hashCode);
    _$hash = $jc(_$hash, credentialOfferDuration.hashCode);
    _$hash = $jc(_$hash, format.hashCode);
    _$hash = $jc(_$hash, credentialSupported.hashCode);
    _$hash = $jc(_$hash, issuerMetadata.hashCode);
    _$hash = $jc(_$hash, returnUris.hashCode);
    _$hash = $jc(_$hash, webhook.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateIssuanceConfigInput')
          ..add('name', name)
          ..add('description', description)
          ..add('issuerWalletId', issuerWalletId)
          ..add('credentialOfferDuration', credentialOfferDuration)
          ..add('format', format)
          ..add('credentialSupported', credentialSupported)
          ..add('issuerMetadata', issuerMetadata)
          ..add('returnUris', returnUris)
          ..add('webhook', webhook))
        .toString();
  }
}

class CreateIssuanceConfigInputBuilder
    implements
        Builder<CreateIssuanceConfigInput, CreateIssuanceConfigInputBuilder> {
  _$CreateIssuanceConfigInput? _$v;

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

  CreateIssuanceConfigInputFormatEnum? _format;
  CreateIssuanceConfigInputFormatEnum? get format => _$this._format;
  set format(CreateIssuanceConfigInputFormatEnum? format) =>
      _$this._format = format;

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

  CisConfigurationWebhookSettingBuilder? _webhook;
  CisConfigurationWebhookSettingBuilder get webhook =>
      _$this._webhook ??= CisConfigurationWebhookSettingBuilder();
  set webhook(CisConfigurationWebhookSettingBuilder? webhook) =>
      _$this._webhook = webhook;

  CreateIssuanceConfigInputBuilder() {
    CreateIssuanceConfigInput._defaults(this);
  }

  CreateIssuanceConfigInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _issuerWalletId = $v.issuerWalletId;
      _credentialOfferDuration = $v.credentialOfferDuration;
      _format = $v.format;
      _credentialSupported = $v.credentialSupported.toBuilder();
      _issuerMetadata = $v.issuerMetadata?.toBuilder();
      _returnUris = $v.returnUris?.toBuilder();
      _webhook = $v.webhook?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIssuanceConfigInput other) {
    _$v = other as _$CreateIssuanceConfigInput;
  }

  @override
  void update(void Function(CreateIssuanceConfigInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIssuanceConfigInput build() => _build();

  _$CreateIssuanceConfigInput _build() {
    _$CreateIssuanceConfigInput _$result;
    try {
      _$result = _$v ??
          _$CreateIssuanceConfigInput._(
            name: name,
            description: description,
            issuerWalletId: BuiltValueNullFieldError.checkNotNull(
                issuerWalletId, r'CreateIssuanceConfigInput', 'issuerWalletId'),
            credentialOfferDuration: credentialOfferDuration,
            format: format,
            credentialSupported: credentialSupported.build(),
            issuerMetadata: _issuerMetadata?.build(),
            returnUris: _returnUris?.build(),
            webhook: _webhook?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialSupported';
        credentialSupported.build();
        _$failedField = 'issuerMetadata';
        _issuerMetadata?.build();
        _$failedField = 'returnUris';
        _returnUris?.build();
        _$failedField = 'webhook';
        _webhook?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateIssuanceConfigInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
