// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_supported_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CredentialSupportedObject extends CredentialSupportedObject {
  @override
  final String credentialTypeId;
  @override
  final String jsonSchemaUrl;
  @override
  final String jsonLdContextUrl;
  @override
  final SupportedCredentialMetadata? metadata;

  factory _$CredentialSupportedObject(
          [void Function(CredentialSupportedObjectBuilder)? updates]) =>
      (CredentialSupportedObjectBuilder()..update(updates))._build();

  _$CredentialSupportedObject._(
      {required this.credentialTypeId,
      required this.jsonSchemaUrl,
      required this.jsonLdContextUrl,
      this.metadata})
      : super._();
  @override
  CredentialSupportedObject rebuild(
          void Function(CredentialSupportedObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialSupportedObjectBuilder toBuilder() =>
      CredentialSupportedObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialSupportedObject &&
        credentialTypeId == other.credentialTypeId &&
        jsonSchemaUrl == other.jsonSchemaUrl &&
        jsonLdContextUrl == other.jsonLdContextUrl &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, credentialTypeId.hashCode);
    _$hash = $jc(_$hash, jsonSchemaUrl.hashCode);
    _$hash = $jc(_$hash, jsonLdContextUrl.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CredentialSupportedObject')
          ..add('credentialTypeId', credentialTypeId)
          ..add('jsonSchemaUrl', jsonSchemaUrl)
          ..add('jsonLdContextUrl', jsonLdContextUrl)
          ..add('metadata', metadata))
        .toString();
  }
}

class CredentialSupportedObjectBuilder
    implements
        Builder<CredentialSupportedObject, CredentialSupportedObjectBuilder> {
  _$CredentialSupportedObject? _$v;

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

  SupportedCredentialMetadataBuilder? _metadata;
  SupportedCredentialMetadataBuilder get metadata =>
      _$this._metadata ??= SupportedCredentialMetadataBuilder();
  set metadata(SupportedCredentialMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  CredentialSupportedObjectBuilder() {
    CredentialSupportedObject._defaults(this);
  }

  CredentialSupportedObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _credentialTypeId = $v.credentialTypeId;
      _jsonSchemaUrl = $v.jsonSchemaUrl;
      _jsonLdContextUrl = $v.jsonLdContextUrl;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialSupportedObject other) {
    _$v = other as _$CredentialSupportedObject;
  }

  @override
  void update(void Function(CredentialSupportedObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialSupportedObject build() => _build();

  _$CredentialSupportedObject _build() {
    _$CredentialSupportedObject _$result;
    try {
      _$result = _$v ??
          _$CredentialSupportedObject._(
            credentialTypeId: BuiltValueNullFieldError.checkNotNull(
                credentialTypeId,
                r'CredentialSupportedObject',
                'credentialTypeId'),
            jsonSchemaUrl: BuiltValueNullFieldError.checkNotNull(
                jsonSchemaUrl, r'CredentialSupportedObject', 'jsonSchemaUrl'),
            jsonLdContextUrl: BuiltValueNullFieldError.checkNotNull(
                jsonLdContextUrl,
                r'CredentialSupportedObject',
                'jsonLdContextUrl'),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialSupportedObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
