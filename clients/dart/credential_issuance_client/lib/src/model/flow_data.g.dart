// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlowData extends FlowData {
  @override
  final String createdAt;
  @override
  final String modifiedAt;
  @override
  final String id;
  @override
  final String? projectId;
  @override
  final String flowId;
  @override
  final String credentialTypeId;
  @override
  final String jsonLdContextUrl;
  @override
  final String jsonSchemaUrl;
  @override
  final String? configurationId;
  @override
  final String? issuedAt;
  @override
  final String? walletId;
  @override
  final String? projectIdConfigurationId;
  @override
  final String? projectIdConfigurationIdWalletId;
  @override
  final String? projectIdConfigurationIdCredentialType;
  @override
  final BuiltList<FlowDataStatusListsDetailsInner>? statusListsDetails;

  factory _$FlowData([void Function(FlowDataBuilder)? updates]) =>
      (new FlowDataBuilder()..update(updates))._build();

  _$FlowData._(
      {required this.createdAt,
      required this.modifiedAt,
      required this.id,
      this.projectId,
      required this.flowId,
      required this.credentialTypeId,
      required this.jsonLdContextUrl,
      required this.jsonSchemaUrl,
      this.configurationId,
      this.issuedAt,
      this.walletId,
      this.projectIdConfigurationId,
      this.projectIdConfigurationIdWalletId,
      this.projectIdConfigurationIdCredentialType,
      this.statusListsDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(createdAt, r'FlowData', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(
        modifiedAt, r'FlowData', 'modifiedAt');
    BuiltValueNullFieldError.checkNotNull(id, r'FlowData', 'id');
    BuiltValueNullFieldError.checkNotNull(flowId, r'FlowData', 'flowId');
    BuiltValueNullFieldError.checkNotNull(
        credentialTypeId, r'FlowData', 'credentialTypeId');
    BuiltValueNullFieldError.checkNotNull(
        jsonLdContextUrl, r'FlowData', 'jsonLdContextUrl');
    BuiltValueNullFieldError.checkNotNull(
        jsonSchemaUrl, r'FlowData', 'jsonSchemaUrl');
  }

  @override
  FlowData rebuild(void Function(FlowDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlowDataBuilder toBuilder() => new FlowDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlowData &&
        createdAt == other.createdAt &&
        modifiedAt == other.modifiedAt &&
        id == other.id &&
        projectId == other.projectId &&
        flowId == other.flowId &&
        credentialTypeId == other.credentialTypeId &&
        jsonLdContextUrl == other.jsonLdContextUrl &&
        jsonSchemaUrl == other.jsonSchemaUrl &&
        configurationId == other.configurationId &&
        issuedAt == other.issuedAt &&
        walletId == other.walletId &&
        projectIdConfigurationId == other.projectIdConfigurationId &&
        projectIdConfigurationIdWalletId ==
            other.projectIdConfigurationIdWalletId &&
        projectIdConfigurationIdCredentialType ==
            other.projectIdConfigurationIdCredentialType &&
        statusListsDetails == other.statusListsDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, modifiedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, flowId.hashCode);
    _$hash = $jc(_$hash, credentialTypeId.hashCode);
    _$hash = $jc(_$hash, jsonLdContextUrl.hashCode);
    _$hash = $jc(_$hash, jsonSchemaUrl.hashCode);
    _$hash = $jc(_$hash, configurationId.hashCode);
    _$hash = $jc(_$hash, issuedAt.hashCode);
    _$hash = $jc(_$hash, walletId.hashCode);
    _$hash = $jc(_$hash, projectIdConfigurationId.hashCode);
    _$hash = $jc(_$hash, projectIdConfigurationIdWalletId.hashCode);
    _$hash = $jc(_$hash, projectIdConfigurationIdCredentialType.hashCode);
    _$hash = $jc(_$hash, statusListsDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlowData')
          ..add('createdAt', createdAt)
          ..add('modifiedAt', modifiedAt)
          ..add('id', id)
          ..add('projectId', projectId)
          ..add('flowId', flowId)
          ..add('credentialTypeId', credentialTypeId)
          ..add('jsonLdContextUrl', jsonLdContextUrl)
          ..add('jsonSchemaUrl', jsonSchemaUrl)
          ..add('configurationId', configurationId)
          ..add('issuedAt', issuedAt)
          ..add('walletId', walletId)
          ..add('projectIdConfigurationId', projectIdConfigurationId)
          ..add('projectIdConfigurationIdWalletId',
              projectIdConfigurationIdWalletId)
          ..add('projectIdConfigurationIdCredentialType',
              projectIdConfigurationIdCredentialType)
          ..add('statusListsDetails', statusListsDetails))
        .toString();
  }
}

class FlowDataBuilder implements Builder<FlowData, FlowDataBuilder> {
  _$FlowData? _$v;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _modifiedAt;
  String? get modifiedAt => _$this._modifiedAt;
  set modifiedAt(String? modifiedAt) => _$this._modifiedAt = modifiedAt;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _flowId;
  String? get flowId => _$this._flowId;
  set flowId(String? flowId) => _$this._flowId = flowId;

  String? _credentialTypeId;
  String? get credentialTypeId => _$this._credentialTypeId;
  set credentialTypeId(String? credentialTypeId) =>
      _$this._credentialTypeId = credentialTypeId;

  String? _jsonLdContextUrl;
  String? get jsonLdContextUrl => _$this._jsonLdContextUrl;
  set jsonLdContextUrl(String? jsonLdContextUrl) =>
      _$this._jsonLdContextUrl = jsonLdContextUrl;

  String? _jsonSchemaUrl;
  String? get jsonSchemaUrl => _$this._jsonSchemaUrl;
  set jsonSchemaUrl(String? jsonSchemaUrl) =>
      _$this._jsonSchemaUrl = jsonSchemaUrl;

  String? _configurationId;
  String? get configurationId => _$this._configurationId;
  set configurationId(String? configurationId) =>
      _$this._configurationId = configurationId;

  String? _issuedAt;
  String? get issuedAt => _$this._issuedAt;
  set issuedAt(String? issuedAt) => _$this._issuedAt = issuedAt;

  String? _walletId;
  String? get walletId => _$this._walletId;
  set walletId(String? walletId) => _$this._walletId = walletId;

  String? _projectIdConfigurationId;
  String? get projectIdConfigurationId => _$this._projectIdConfigurationId;
  set projectIdConfigurationId(String? projectIdConfigurationId) =>
      _$this._projectIdConfigurationId = projectIdConfigurationId;

  String? _projectIdConfigurationIdWalletId;
  String? get projectIdConfigurationIdWalletId =>
      _$this._projectIdConfigurationIdWalletId;
  set projectIdConfigurationIdWalletId(
          String? projectIdConfigurationIdWalletId) =>
      _$this._projectIdConfigurationIdWalletId =
          projectIdConfigurationIdWalletId;

  String? _projectIdConfigurationIdCredentialType;
  String? get projectIdConfigurationIdCredentialType =>
      _$this._projectIdConfigurationIdCredentialType;
  set projectIdConfigurationIdCredentialType(
          String? projectIdConfigurationIdCredentialType) =>
      _$this._projectIdConfigurationIdCredentialType =
          projectIdConfigurationIdCredentialType;

  ListBuilder<FlowDataStatusListsDetailsInner>? _statusListsDetails;
  ListBuilder<FlowDataStatusListsDetailsInner> get statusListsDetails =>
      _$this._statusListsDetails ??=
          new ListBuilder<FlowDataStatusListsDetailsInner>();
  set statusListsDetails(
          ListBuilder<FlowDataStatusListsDetailsInner>? statusListsDetails) =>
      _$this._statusListsDetails = statusListsDetails;

  FlowDataBuilder() {
    FlowData._defaults(this);
  }

  FlowDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _modifiedAt = $v.modifiedAt;
      _id = $v.id;
      _projectId = $v.projectId;
      _flowId = $v.flowId;
      _credentialTypeId = $v.credentialTypeId;
      _jsonLdContextUrl = $v.jsonLdContextUrl;
      _jsonSchemaUrl = $v.jsonSchemaUrl;
      _configurationId = $v.configurationId;
      _issuedAt = $v.issuedAt;
      _walletId = $v.walletId;
      _projectIdConfigurationId = $v.projectIdConfigurationId;
      _projectIdConfigurationIdWalletId = $v.projectIdConfigurationIdWalletId;
      _projectIdConfigurationIdCredentialType =
          $v.projectIdConfigurationIdCredentialType;
      _statusListsDetails = $v.statusListsDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlowData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlowData;
  }

  @override
  void update(void Function(FlowDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlowData build() => _build();

  _$FlowData _build() {
    _$FlowData _$result;
    try {
      _$result = _$v ??
          new _$FlowData._(
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'FlowData', 'createdAt'),
            modifiedAt: BuiltValueNullFieldError.checkNotNull(
                modifiedAt, r'FlowData', 'modifiedAt'),
            id: BuiltValueNullFieldError.checkNotNull(id, r'FlowData', 'id'),
            projectId: projectId,
            flowId: BuiltValueNullFieldError.checkNotNull(
                flowId, r'FlowData', 'flowId'),
            credentialTypeId: BuiltValueNullFieldError.checkNotNull(
                credentialTypeId, r'FlowData', 'credentialTypeId'),
            jsonLdContextUrl: BuiltValueNullFieldError.checkNotNull(
                jsonLdContextUrl, r'FlowData', 'jsonLdContextUrl'),
            jsonSchemaUrl: BuiltValueNullFieldError.checkNotNull(
                jsonSchemaUrl, r'FlowData', 'jsonSchemaUrl'),
            configurationId: configurationId,
            issuedAt: issuedAt,
            walletId: walletId,
            projectIdConfigurationId: projectIdConfigurationId,
            projectIdConfigurationIdWalletId: projectIdConfigurationIdWalletId,
            projectIdConfigurationIdCredentialType:
                projectIdConfigurationIdCredentialType,
            statusListsDetails: _statusListsDetails?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'statusListsDetails';
        _statusListsDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlowData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
