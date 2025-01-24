// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cis_configuration_webhook_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CisConfigurationWebhookSetting extends CisConfigurationWebhookSetting {
  @override
  final bool enabled;
  @override
  final CisConfigurationWebhookSettingEndpoint? endpoint;

  factory _$CisConfigurationWebhookSetting(
          [void Function(CisConfigurationWebhookSettingBuilder)? updates]) =>
      (new CisConfigurationWebhookSettingBuilder()..update(updates))._build();

  _$CisConfigurationWebhookSetting._({required this.enabled, this.endpoint})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'CisConfigurationWebhookSetting', 'enabled');
  }

  @override
  CisConfigurationWebhookSetting rebuild(
          void Function(CisConfigurationWebhookSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CisConfigurationWebhookSettingBuilder toBuilder() =>
      new CisConfigurationWebhookSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CisConfigurationWebhookSetting &&
        enabled == other.enabled &&
        endpoint == other.endpoint;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CisConfigurationWebhookSetting')
          ..add('enabled', enabled)
          ..add('endpoint', endpoint))
        .toString();
  }
}

class CisConfigurationWebhookSettingBuilder
    implements
        Builder<CisConfigurationWebhookSetting,
            CisConfigurationWebhookSettingBuilder> {
  _$CisConfigurationWebhookSetting? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  CisConfigurationWebhookSettingEndpointBuilder? _endpoint;
  CisConfigurationWebhookSettingEndpointBuilder get endpoint =>
      _$this._endpoint ??= new CisConfigurationWebhookSettingEndpointBuilder();
  set endpoint(CisConfigurationWebhookSettingEndpointBuilder? endpoint) =>
      _$this._endpoint = endpoint;

  CisConfigurationWebhookSettingBuilder() {
    CisConfigurationWebhookSetting._defaults(this);
  }

  CisConfigurationWebhookSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _endpoint = $v.endpoint?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CisConfigurationWebhookSetting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CisConfigurationWebhookSetting;
  }

  @override
  void update(void Function(CisConfigurationWebhookSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CisConfigurationWebhookSetting build() => _build();

  _$CisConfigurationWebhookSetting _build() {
    _$CisConfigurationWebhookSetting _$result;
    try {
      _$result = _$v ??
          new _$CisConfigurationWebhookSetting._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'CisConfigurationWebhookSetting', 'enabled'),
            endpoint: _endpoint?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpoint';
        _endpoint?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CisConfigurationWebhookSetting', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
