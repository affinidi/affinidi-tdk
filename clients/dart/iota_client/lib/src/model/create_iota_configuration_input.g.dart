// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_iota_configuration_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateIotaConfigurationInputModeEnum
    _$createIotaConfigurationInputModeEnum_redirect =
    const CreateIotaConfigurationInputModeEnum._('redirect');
const CreateIotaConfigurationInputModeEnum
    _$createIotaConfigurationInputModeEnum_websocket =
    const CreateIotaConfigurationInputModeEnum._('websocket');
const CreateIotaConfigurationInputModeEnum
    _$createIotaConfigurationInputModeEnum_didcomm =
    const CreateIotaConfigurationInputModeEnum._('didcomm');

CreateIotaConfigurationInputModeEnum
    _$createIotaConfigurationInputModeEnumValueOf(String name) {
  switch (name) {
    case 'redirect':
      return _$createIotaConfigurationInputModeEnum_redirect;
    case 'websocket':
      return _$createIotaConfigurationInputModeEnum_websocket;
    case 'didcomm':
      return _$createIotaConfigurationInputModeEnum_didcomm;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateIotaConfigurationInputModeEnum>
    _$createIotaConfigurationInputModeEnumValues = BuiltSet<
        CreateIotaConfigurationInputModeEnum>(const <CreateIotaConfigurationInputModeEnum>[
  _$createIotaConfigurationInputModeEnum_redirect,
  _$createIotaConfigurationInputModeEnum_websocket,
  _$createIotaConfigurationInputModeEnum_didcomm,
]);

Serializer<CreateIotaConfigurationInputModeEnum>
    _$createIotaConfigurationInputModeEnumSerializer =
    _$CreateIotaConfigurationInputModeEnumSerializer();

class _$CreateIotaConfigurationInputModeEnumSerializer
    implements PrimitiveSerializer<CreateIotaConfigurationInputModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'redirect': 'redirect',
    'websocket': 'websocket',
    'didcomm': 'didcomm',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'redirect': 'redirect',
    'websocket': 'websocket',
    'didcomm': 'didcomm',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateIotaConfigurationInputModeEnum
  ];
  @override
  final String wireName = 'CreateIotaConfigurationInputModeEnum';

  @override
  Object serialize(
          Serializers serializers, CreateIotaConfigurationInputModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateIotaConfigurationInputModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateIotaConfigurationInputModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateIotaConfigurationInput extends CreateIotaConfigurationInput {
  @override
  final String name;
  @override
  final String? description;
  @override
  final String walletAri;
  @override
  final String? iotaResponseWebhookURL;
  @override
  final bool enableVerification;
  @override
  final bool enableConsentAuditLog;
  @override
  final int? tokenMaxAge;
  @override
  final IotaConfigurationDtoClientMetadata clientMetadata;
  @override
  final CreateIotaConfigurationInputModeEnum? mode;
  @override
  final BuiltList<String>? redirectUris;
  @override
  final bool? enableIdvProviders;

  factory _$CreateIotaConfigurationInput(
          [void Function(CreateIotaConfigurationInputBuilder)? updates]) =>
      (CreateIotaConfigurationInputBuilder()..update(updates))._build();

  _$CreateIotaConfigurationInput._(
      {required this.name,
      this.description,
      required this.walletAri,
      this.iotaResponseWebhookURL,
      required this.enableVerification,
      required this.enableConsentAuditLog,
      this.tokenMaxAge,
      required this.clientMetadata,
      this.mode,
      this.redirectUris,
      this.enableIdvProviders})
      : super._();
  @override
  CreateIotaConfigurationInput rebuild(
          void Function(CreateIotaConfigurationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateIotaConfigurationInputBuilder toBuilder() =>
      CreateIotaConfigurationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateIotaConfigurationInput &&
        name == other.name &&
        description == other.description &&
        walletAri == other.walletAri &&
        iotaResponseWebhookURL == other.iotaResponseWebhookURL &&
        enableVerification == other.enableVerification &&
        enableConsentAuditLog == other.enableConsentAuditLog &&
        tokenMaxAge == other.tokenMaxAge &&
        clientMetadata == other.clientMetadata &&
        mode == other.mode &&
        redirectUris == other.redirectUris &&
        enableIdvProviders == other.enableIdvProviders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, walletAri.hashCode);
    _$hash = $jc(_$hash, iotaResponseWebhookURL.hashCode);
    _$hash = $jc(_$hash, enableVerification.hashCode);
    _$hash = $jc(_$hash, enableConsentAuditLog.hashCode);
    _$hash = $jc(_$hash, tokenMaxAge.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, enableIdvProviders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateIotaConfigurationInput')
          ..add('name', name)
          ..add('description', description)
          ..add('walletAri', walletAri)
          ..add('iotaResponseWebhookURL', iotaResponseWebhookURL)
          ..add('enableVerification', enableVerification)
          ..add('enableConsentAuditLog', enableConsentAuditLog)
          ..add('tokenMaxAge', tokenMaxAge)
          ..add('clientMetadata', clientMetadata)
          ..add('mode', mode)
          ..add('redirectUris', redirectUris)
          ..add('enableIdvProviders', enableIdvProviders))
        .toString();
  }
}

class CreateIotaConfigurationInputBuilder
    implements
        Builder<CreateIotaConfigurationInput,
            CreateIotaConfigurationInputBuilder> {
  _$CreateIotaConfigurationInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _walletAri;
  String? get walletAri => _$this._walletAri;
  set walletAri(String? walletAri) => _$this._walletAri = walletAri;

  String? _iotaResponseWebhookURL;
  String? get iotaResponseWebhookURL => _$this._iotaResponseWebhookURL;
  set iotaResponseWebhookURL(String? iotaResponseWebhookURL) =>
      _$this._iotaResponseWebhookURL = iotaResponseWebhookURL;

  bool? _enableVerification;
  bool? get enableVerification => _$this._enableVerification;
  set enableVerification(bool? enableVerification) =>
      _$this._enableVerification = enableVerification;

  bool? _enableConsentAuditLog;
  bool? get enableConsentAuditLog => _$this._enableConsentAuditLog;
  set enableConsentAuditLog(bool? enableConsentAuditLog) =>
      _$this._enableConsentAuditLog = enableConsentAuditLog;

  int? _tokenMaxAge;
  int? get tokenMaxAge => _$this._tokenMaxAge;
  set tokenMaxAge(int? tokenMaxAge) => _$this._tokenMaxAge = tokenMaxAge;

  IotaConfigurationDtoClientMetadataBuilder? _clientMetadata;
  IotaConfigurationDtoClientMetadataBuilder get clientMetadata =>
      _$this._clientMetadata ??= IotaConfigurationDtoClientMetadataBuilder();
  set clientMetadata(
          IotaConfigurationDtoClientMetadataBuilder? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  CreateIotaConfigurationInputModeEnum? _mode;
  CreateIotaConfigurationInputModeEnum? get mode => _$this._mode;
  set mode(CreateIotaConfigurationInputModeEnum? mode) => _$this._mode = mode;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  bool? _enableIdvProviders;
  bool? get enableIdvProviders => _$this._enableIdvProviders;
  set enableIdvProviders(bool? enableIdvProviders) =>
      _$this._enableIdvProviders = enableIdvProviders;

  CreateIotaConfigurationInputBuilder() {
    CreateIotaConfigurationInput._defaults(this);
  }

  CreateIotaConfigurationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _walletAri = $v.walletAri;
      _iotaResponseWebhookURL = $v.iotaResponseWebhookURL;
      _enableVerification = $v.enableVerification;
      _enableConsentAuditLog = $v.enableConsentAuditLog;
      _tokenMaxAge = $v.tokenMaxAge;
      _clientMetadata = $v.clientMetadata.toBuilder();
      _mode = $v.mode;
      _redirectUris = $v.redirectUris?.toBuilder();
      _enableIdvProviders = $v.enableIdvProviders;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateIotaConfigurationInput other) {
    _$v = other as _$CreateIotaConfigurationInput;
  }

  @override
  void update(void Function(CreateIotaConfigurationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateIotaConfigurationInput build() => _build();

  _$CreateIotaConfigurationInput _build() {
    _$CreateIotaConfigurationInput _$result;
    try {
      _$result = _$v ??
          _$CreateIotaConfigurationInput._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateIotaConfigurationInput', 'name'),
            description: description,
            walletAri: BuiltValueNullFieldError.checkNotNull(
                walletAri, r'CreateIotaConfigurationInput', 'walletAri'),
            iotaResponseWebhookURL: iotaResponseWebhookURL,
            enableVerification: BuiltValueNullFieldError.checkNotNull(
                enableVerification,
                r'CreateIotaConfigurationInput',
                'enableVerification'),
            enableConsentAuditLog: BuiltValueNullFieldError.checkNotNull(
                enableConsentAuditLog,
                r'CreateIotaConfigurationInput',
                'enableConsentAuditLog'),
            tokenMaxAge: tokenMaxAge,
            clientMetadata: clientMetadata.build(),
            mode: mode,
            redirectUris: _redirectUris?.build(),
            enableIdvProviders: enableIdvProviders,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientMetadata';
        clientMetadata.build();

        _$failedField = 'redirectUris';
        _redirectUris?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CreateIotaConfigurationInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
