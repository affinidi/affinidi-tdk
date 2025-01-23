// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_configuration_by_id_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UpdateConfigurationByIdInputModeEnum
    _$updateConfigurationByIdInputModeEnum_redirect =
    const UpdateConfigurationByIdInputModeEnum._('redirect');
const UpdateConfigurationByIdInputModeEnum
    _$updateConfigurationByIdInputModeEnum_websocket =
    const UpdateConfigurationByIdInputModeEnum._('websocket');

UpdateConfigurationByIdInputModeEnum
    _$updateConfigurationByIdInputModeEnumValueOf(String name) {
  switch (name) {
    case 'redirect':
      return _$updateConfigurationByIdInputModeEnum_redirect;
    case 'websocket':
      return _$updateConfigurationByIdInputModeEnum_websocket;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UpdateConfigurationByIdInputModeEnum>
    _$updateConfigurationByIdInputModeEnumValues = new BuiltSet<
        UpdateConfigurationByIdInputModeEnum>(const <UpdateConfigurationByIdInputModeEnum>[
  _$updateConfigurationByIdInputModeEnum_redirect,
  _$updateConfigurationByIdInputModeEnum_websocket,
]);

Serializer<UpdateConfigurationByIdInputModeEnum>
    _$updateConfigurationByIdInputModeEnumSerializer =
    new _$UpdateConfigurationByIdInputModeEnumSerializer();

class _$UpdateConfigurationByIdInputModeEnumSerializer
    implements PrimitiveSerializer<UpdateConfigurationByIdInputModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'redirect': 'redirect',
    'websocket': 'websocket',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'redirect': 'redirect',
    'websocket': 'websocket',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UpdateConfigurationByIdInputModeEnum
  ];
  @override
  final String wireName = 'UpdateConfigurationByIdInputModeEnum';

  @override
  Object serialize(
          Serializers serializers, UpdateConfigurationByIdInputModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UpdateConfigurationByIdInputModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UpdateConfigurationByIdInputModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UpdateConfigurationByIdInput extends UpdateConfigurationByIdInput {
  @override
  final String? name;
  @override
  final String? walletAri;
  @override
  final String? iotaResponseWebhookURL;
  @override
  final bool? enableVerification;
  @override
  final bool? enableConsentAuditLog;
  @override
  final int? tokenMaxAge;
  @override
  final String? description;
  @override
  final UpdateConfigurationByIdInputClientMetadata? clientMetadata;
  @override
  final UpdateConfigurationByIdInputModeEnum? mode;
  @override
  final BuiltList<String>? redirectUris;
  @override
  final bool? enableIdvProviders;

  factory _$UpdateConfigurationByIdInput(
          [void Function(UpdateConfigurationByIdInputBuilder)? updates]) =>
      (new UpdateConfigurationByIdInputBuilder()..update(updates))._build();

  _$UpdateConfigurationByIdInput._(
      {this.name,
      this.walletAri,
      this.iotaResponseWebhookURL,
      this.enableVerification,
      this.enableConsentAuditLog,
      this.tokenMaxAge,
      this.description,
      this.clientMetadata,
      this.mode,
      this.redirectUris,
      this.enableIdvProviders})
      : super._();

  @override
  UpdateConfigurationByIdInput rebuild(
          void Function(UpdateConfigurationByIdInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateConfigurationByIdInputBuilder toBuilder() =>
      new UpdateConfigurationByIdInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateConfigurationByIdInput &&
        name == other.name &&
        walletAri == other.walletAri &&
        iotaResponseWebhookURL == other.iotaResponseWebhookURL &&
        enableVerification == other.enableVerification &&
        enableConsentAuditLog == other.enableConsentAuditLog &&
        tokenMaxAge == other.tokenMaxAge &&
        description == other.description &&
        clientMetadata == other.clientMetadata &&
        mode == other.mode &&
        redirectUris == other.redirectUris &&
        enableIdvProviders == other.enableIdvProviders;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, walletAri.hashCode);
    _$hash = $jc(_$hash, iotaResponseWebhookURL.hashCode);
    _$hash = $jc(_$hash, enableVerification.hashCode);
    _$hash = $jc(_$hash, enableConsentAuditLog.hashCode);
    _$hash = $jc(_$hash, tokenMaxAge.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, clientMetadata.hashCode);
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, redirectUris.hashCode);
    _$hash = $jc(_$hash, enableIdvProviders.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateConfigurationByIdInput')
          ..add('name', name)
          ..add('walletAri', walletAri)
          ..add('iotaResponseWebhookURL', iotaResponseWebhookURL)
          ..add('enableVerification', enableVerification)
          ..add('enableConsentAuditLog', enableConsentAuditLog)
          ..add('tokenMaxAge', tokenMaxAge)
          ..add('description', description)
          ..add('clientMetadata', clientMetadata)
          ..add('mode', mode)
          ..add('redirectUris', redirectUris)
          ..add('enableIdvProviders', enableIdvProviders))
        .toString();
  }
}

class UpdateConfigurationByIdInputBuilder
    implements
        Builder<UpdateConfigurationByIdInput,
            UpdateConfigurationByIdInputBuilder> {
  _$UpdateConfigurationByIdInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateConfigurationByIdInputClientMetadataBuilder? _clientMetadata;
  UpdateConfigurationByIdInputClientMetadataBuilder get clientMetadata =>
      _$this._clientMetadata ??=
          new UpdateConfigurationByIdInputClientMetadataBuilder();
  set clientMetadata(
          UpdateConfigurationByIdInputClientMetadataBuilder? clientMetadata) =>
      _$this._clientMetadata = clientMetadata;

  UpdateConfigurationByIdInputModeEnum? _mode;
  UpdateConfigurationByIdInputModeEnum? get mode => _$this._mode;
  set mode(UpdateConfigurationByIdInputModeEnum? mode) => _$this._mode = mode;

  ListBuilder<String>? _redirectUris;
  ListBuilder<String> get redirectUris =>
      _$this._redirectUris ??= new ListBuilder<String>();
  set redirectUris(ListBuilder<String>? redirectUris) =>
      _$this._redirectUris = redirectUris;

  bool? _enableIdvProviders;
  bool? get enableIdvProviders => _$this._enableIdvProviders;
  set enableIdvProviders(bool? enableIdvProviders) =>
      _$this._enableIdvProviders = enableIdvProviders;

  UpdateConfigurationByIdInputBuilder() {
    UpdateConfigurationByIdInput._defaults(this);
  }

  UpdateConfigurationByIdInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _walletAri = $v.walletAri;
      _iotaResponseWebhookURL = $v.iotaResponseWebhookURL;
      _enableVerification = $v.enableVerification;
      _enableConsentAuditLog = $v.enableConsentAuditLog;
      _tokenMaxAge = $v.tokenMaxAge;
      _description = $v.description;
      _clientMetadata = $v.clientMetadata?.toBuilder();
      _mode = $v.mode;
      _redirectUris = $v.redirectUris?.toBuilder();
      _enableIdvProviders = $v.enableIdvProviders;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateConfigurationByIdInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateConfigurationByIdInput;
  }

  @override
  void update(void Function(UpdateConfigurationByIdInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateConfigurationByIdInput build() => _build();

  _$UpdateConfigurationByIdInput _build() {
    _$UpdateConfigurationByIdInput _$result;
    try {
      _$result = _$v ??
          new _$UpdateConfigurationByIdInput._(
            name: name,
            walletAri: walletAri,
            iotaResponseWebhookURL: iotaResponseWebhookURL,
            enableVerification: enableVerification,
            enableConsentAuditLog: enableConsentAuditLog,
            tokenMaxAge: tokenMaxAge,
            description: description,
            clientMetadata: _clientMetadata?.build(),
            mode: mode,
            redirectUris: _redirectUris?.build(),
            enableIdvProviders: enableIdvProviders,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientMetadata';
        _clientMetadata?.build();

        _$failedField = 'redirectUris';
        _redirectUris?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateConfigurationByIdInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
