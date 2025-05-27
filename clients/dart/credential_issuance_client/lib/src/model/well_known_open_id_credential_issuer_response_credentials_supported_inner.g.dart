// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'well_known_open_id_credential_issuer_response_credentials_supported_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner
    extends WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner {
  @override
  final String credentialTypeId;
  @override
  final String jsonSchemaUrl;
  @override
  final String jsonLdContextUrl;

  factory _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner(
          [void Function(
                  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder)?
              updates]) =>
      (WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder()
            ..update(updates))
          ._build();

  _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner._(
      {required this.credentialTypeId,
      required this.jsonSchemaUrl,
      required this.jsonLdContextUrl})
      : super._();
  @override
  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner rebuild(
          void Function(
                  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder
      toBuilder() =>
          WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner &&
        credentialTypeId == other.credentialTypeId &&
        jsonSchemaUrl == other.jsonSchemaUrl &&
        jsonLdContextUrl == other.jsonLdContextUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialTypeId.hashCode);
    _$hash = $jc(_$hash, jsonSchemaUrl.hashCode);
    _$hash = $jc(_$hash, jsonLdContextUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner')
          ..add('credentialTypeId', credentialTypeId)
          ..add('jsonSchemaUrl', jsonSchemaUrl)
          ..add('jsonLdContextUrl', jsonLdContextUrl))
        .toString();
  }
}

class WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder
    implements
        Builder<
            WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner,
            WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder> {
  _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner? _$v;

  String? _credentialTypeId;
  String? get credentialTypeId => _$this._credentialTypeId;
  set credentialTypeId(String? credentialTypeId) =>
      _$this._credentialTypeId = credentialTypeId;

  String? _jsonSchemaUrl;
  String? get jsonSchemaUrl => _$this._jsonSchemaUrl;
  set jsonSchemaUrl(String? jsonSchemaUrl) =>
      _$this._jsonSchemaUrl = jsonSchemaUrl;

  String? _jsonLdContextUrl;
  String? get jsonLdContextUrl => _$this._jsonLdContextUrl;
  set jsonLdContextUrl(String? jsonLdContextUrl) =>
      _$this._jsonLdContextUrl = jsonLdContextUrl;

  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder() {
    WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner._defaults(
        this);
  }

  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialTypeId = $v.credentialTypeId;
      _jsonSchemaUrl = $v.jsonSchemaUrl;
      _jsonLdContextUrl = $v.jsonLdContextUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner other) {
    _$v = other
        as _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner;
  }

  @override
  void update(
      void Function(
              WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner build() =>
      _build();

  _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner _build() {
    final _$result = _$v ??
        _$WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner._(
          credentialTypeId: BuiltValueNullFieldError.checkNotNull(
              credentialTypeId,
              r'WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner',
              'credentialTypeId'),
          jsonSchemaUrl: BuiltValueNullFieldError.checkNotNull(
              jsonSchemaUrl,
              r'WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner',
              'jsonSchemaUrl'),
          jsonLdContextUrl: BuiltValueNullFieldError.checkNotNull(
              jsonLdContextUrl,
              r'WellKnownOpenIdCredentialIssuerResponseCredentialsSupportedInner',
              'jsonLdContextUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
