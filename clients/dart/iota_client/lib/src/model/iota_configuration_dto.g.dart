// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iota_configuration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IotaConfigurationDtoModeEnum _$iotaConfigurationDtoModeEnum_redirect =
    const IotaConfigurationDtoModeEnum._('redirect');
const IotaConfigurationDtoModeEnum _$iotaConfigurationDtoModeEnum_websocket =
    const IotaConfigurationDtoModeEnum._('websocket');

IotaConfigurationDtoModeEnum _$iotaConfigurationDtoModeEnumValueOf(
    String name) {
  switch (name) {
    case 'redirect':
      return _$iotaConfigurationDtoModeEnum_redirect;
    case 'websocket':
      return _$iotaConfigurationDtoModeEnum_websocket;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<IotaConfigurationDtoModeEnum>
    _$iotaConfigurationDtoModeEnumValues =
    BuiltSet<IotaConfigurationDtoModeEnum>(const <IotaConfigurationDtoModeEnum>[
  _$iotaConfigurationDtoModeEnum_redirect,
  _$iotaConfigurationDtoModeEnum_websocket,
]);

Serializer<IotaConfigurationDtoModeEnum>
    _$iotaConfigurationDtoModeEnumSerializer =
    _$IotaConfigurationDtoModeEnumSerializer();

class _$IotaConfigurationDtoModeEnumSerializer
    implements PrimitiveSerializer<IotaConfigurationDtoModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'redirect': 'redirect',
    'websocket': 'websocket',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'redirect': 'redirect',
    'websocket': 'websocket',
  };

  @override
  final Iterable<Type> types = const <Type>[IotaConfigurationDtoModeEnum];
  @override
  final String wireName = 'IotaConfigurationDtoModeEnum';

  @override
  Object serialize(Serializers serializers, IotaConfigurationDtoModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  IotaConfigurationDtoModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      IotaConfigurationDtoModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$IotaConfigurationDto extends IotaConfigurationDto {
  @override
  final String ari;
  @override
  final String configurationId;
  @override
  final String name;
  @override
  final String projectId;
  @override
  final String walletAri;
  @override
  final int tokenMaxAge;
  @override
  final String? iotaResponseWebhookURL;
  @override
  final bool enableVerification;
  @override
  final bool enableConsentAuditLog;
  @override
  final IotaConfigurationDtoClientMetadata clientMetadata;
  @override
  final IotaConfigurationDtoModeEnum? mode;
  @override
  final BuiltList<String>? redirectUris;
  @override
  final bool? enableIdvProviders;

  factory _$IotaConfigurationDto(
          [void Function(IotaConfigurationDtoBuilder)? updates]) =>
      (IotaConfigurationDtoBuilder()..update(updates))._build();

  _$IotaConfigurationDto._(
      {required this.ari,
      required this.configurationId,
      required this.name,
      required this.projectId,
      required this.walletAri,
      required this.tokenMaxAge,
      this.iotaResponseWebhookURL,
      required this.enableVerification,
      required this.enableConsentAuditLog,
      required this.clientMetadata,
      this.mode,
      this.redirectUris,
      this.enableIdvProviders})
      : super._();
  @override
  IotaConfigurationDto rebuild(
          void Function(IotaConfigurationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IotaConfigurationDtoBuilder toBuilder() =>
      IotaConfigurationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IotaConfigurationDto &&
        ari == other.ari &&
        configurationId == other.configurationId &&
        name == other.name &&
        projectId == other.projectId &&
        walletAri == other.walletAri &&
        tokenMaxAge == other.tokenMaxAge &&
        iotaResponseWebhookURL == other.iotaResponseWebhookURL &&
        enableVerification == other.enableVerification &&
        enableConsentAuditLog == other.enableConsentAuditLog &&
        clientMetadata == other.clientMetadata &&
        mode == other.mode &&
        redirectUris == other.redirectUris &&
        enableIdvProviders == other.enableIdvProviders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, walletAri.hashCode);
    _$hash = $jc(_$hash, tokenMaxAge.hashCode);
    _$hash = $jc(_$hash, iotaResponseWebhookURL.hashCode);
    _$hash = $jc(_$hash, enableVerification.hashCode);
    _$hash = $jc(_$hash, enableConsentAuditLog.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, enableIdvProviders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IotaConfigurationDto')
          ..add('ari', ari)
          ..add('configurationId', configurationId)
          ..add('name', name)
          ..add('projectId', projectId)
          ..add('walletAri', walletAri)
          ..add('tokenMaxAge', tokenMaxAge)
          ..add('iotaResponseWebhookURL', iotaResponseWebhookURL)
          ..add('enableVerification', enableVerification)
          ..add('enableConsentAuditLog', enableConsentAuditLog)
          ..add('clientMetadata', clientMetadata)
          ..add('mode', mode)
          ..add('redirectUris', redirectUris)
          ..add('enableIdvProviders', enableIdvProviders))
        .toString();
  }
}

class IotaConfigurationDtoBuilder
    implements Builder<IotaConfigurationDto, IotaConfigurationDtoBuilder> {
  _$IotaConfigurationDto? _$v;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _walletAri;
  String? get walletAri => _$this._walletAri;
  set walletAri(String? walletAri) => _$this._walletAri = walletAri;

  int? _tokenMaxAge;
  int? get tokenMaxAge => _$this._tokenMaxAge;
  set tokenMaxAge(int? tokenMaxAge) => _$this._tokenMaxAge = tokenMaxAge;

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

  IotaConfigurationDtoClientMetadataBuilder? _clientMetadata;
  IotaConfigurationDtoClientMetadataBuilder get clientMetadata =>
      _$this._clientMetadata ??= IotaConfigurationDtoClientMetadataBuilder();
  set clientMetadata(
          IotaConfigurationDtoClientMetadataBuilder? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  IotaConfigurationDtoModeEnum? _mode;
  IotaConfigurationDtoModeEnum? get mode => _$this._mode;
  set mode(IotaConfigurationDtoModeEnum? mode) => _$this._mode = mode;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  bool? _enableIdvProviders;
  bool? get enableIdvProviders => _$this._enableIdvProviders;
  set enableIdvProviders(bool? enableIdvProviders) =>
      _$this._enableIdvProviders = enableIdvProviders;

  IotaConfigurationDtoBuilder() {
    IotaConfigurationDto._defaults(this);
  }

  IotaConfigurationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ari = $v.ari;
      _configurationId = $v.configurationId;
      _name = $v.name;
      _projectId = $v.projectId;
      _walletAri = $v.walletAri;
      _tokenMaxAge = $v.tokenMaxAge;
      _iotaResponseWebhookURL = $v.iotaResponseWebhookURL;
      _enableVerification = $v.enableVerification;
      _enableConsentAuditLog = $v.enableConsentAuditLog;
      _clientMetadata = $v.clientMetadata.toBuilder();
      _mode = $v.mode;
      _redirectUris = $v.redirectUris?.toBuilder();
      _enableIdvProviders = $v.enableIdvProviders;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IotaConfigurationDto other) {
    _$v = other as _$IotaConfigurationDto;
  }

  @override
  void update(void Function(IotaConfigurationDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IotaConfigurationDto build() => _build();

  _$IotaConfigurationDto _build() {
    _$IotaConfigurationDto _$result;
    try {
      _$result = _$v ??
          _$IotaConfigurationDto._(
            ari: BuiltValueNullFieldError.checkNotNull(
                ari, r'IotaConfigurationDto', 'ari'),
            configurationId: BuiltValueNullFieldError.checkNotNull(
                configurationId, r'IotaConfigurationDto', 'configurationId'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'IotaConfigurationDto', 'name'),
            projectId: BuiltValueNullFieldError.checkNotNull(
                projectId, r'IotaConfigurationDto', 'projectId'),
            walletAri: BuiltValueNullFieldError.checkNotNull(
                walletAri, r'IotaConfigurationDto', 'walletAri'),
            tokenMaxAge: BuiltValueNullFieldError.checkNotNull(
                tokenMaxAge, r'IotaConfigurationDto', 'tokenMaxAge'),
            iotaResponseWebhookURL: iotaResponseWebhookURL,
            enableVerification: BuiltValueNullFieldError.checkNotNull(
                enableVerification,
                r'IotaConfigurationDto',
                'enableVerification'),
            enableConsentAuditLog: BuiltValueNullFieldError.checkNotNull(
                enableConsentAuditLog,
                r'IotaConfigurationDto',
                'enableConsentAuditLog'),
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
            r'IotaConfigurationDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
