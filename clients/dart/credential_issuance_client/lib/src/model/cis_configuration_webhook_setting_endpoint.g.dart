// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cis_configuration_webhook_setting_endpoint.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CisConfigurationWebhookSettingEndpoint
    extends CisConfigurationWebhookSettingEndpoint {
  @override
  final String? url;

  factory _$CisConfigurationWebhookSettingEndpoint(
          [void Function(CisConfigurationWebhookSettingEndpointBuilder)?
              updates]) =>
      (new CisConfigurationWebhookSettingEndpointBuilder()..update(updates))
          ._build();

  _$CisConfigurationWebhookSettingEndpoint._({this.url}) : super._();

  @override
  CisConfigurationWebhookSettingEndpoint rebuild(
          void Function(CisConfigurationWebhookSettingEndpointBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CisConfigurationWebhookSettingEndpointBuilder toBuilder() =>
      new CisConfigurationWebhookSettingEndpointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CisConfigurationWebhookSettingEndpoint && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CisConfigurationWebhookSettingEndpoint')
          ..add('url', url))
        .toString();
  }
}

class CisConfigurationWebhookSettingEndpointBuilder
    implements
        Builder<CisConfigurationWebhookSettingEndpoint,
            CisConfigurationWebhookSettingEndpointBuilder> {
  _$CisConfigurationWebhookSettingEndpoint? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  CisConfigurationWebhookSettingEndpointBuilder() {
    CisConfigurationWebhookSettingEndpoint._defaults(this);
  }

  CisConfigurationWebhookSettingEndpointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CisConfigurationWebhookSettingEndpoint other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CisConfigurationWebhookSettingEndpoint;
  }

  @override
  void update(
      void Function(CisConfigurationWebhookSettingEndpointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CisConfigurationWebhookSettingEndpoint build() => _build();

  _$CisConfigurationWebhookSettingEndpoint _build() {
    final _$result = _$v ??
        new _$CisConfigurationWebhookSettingEndpoint._(
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
