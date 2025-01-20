// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credential_input_dto_unsigned_credential_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignCredentialInputDtoUnsignedCredentialParams
    extends SignCredentialInputDtoUnsignedCredentialParams {
  @override
  final String jsonLdContextUrl;
  @override
  final String jsonSchemaUrl;
  @override
  final String typeName;
  @override
  final BuiltMap<String, JsonObject?> credentialSubject;
  @override
  final String holderDid;
  @override
  final String expiresAt;

  factory _$SignCredentialInputDtoUnsignedCredentialParams(
          [void Function(SignCredentialInputDtoUnsignedCredentialParamsBuilder)?
              updates]) =>
      (new SignCredentialInputDtoUnsignedCredentialParamsBuilder()
            ..update(updates))
          ._build();

  _$SignCredentialInputDtoUnsignedCredentialParams._(
      {required this.jsonLdContextUrl,
      required this.jsonSchemaUrl,
      required this.typeName,
      required this.credentialSubject,
      required this.holderDid,
      required this.expiresAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(jsonLdContextUrl,
        r'SignCredentialInputDtoUnsignedCredentialParams', 'jsonLdContextUrl');
    BuiltValueNullFieldError.checkNotNull(jsonSchemaUrl,
        r'SignCredentialInputDtoUnsignedCredentialParams', 'jsonSchemaUrl');
    BuiltValueNullFieldError.checkNotNull(typeName,
        r'SignCredentialInputDtoUnsignedCredentialParams', 'typeName');
    BuiltValueNullFieldError.checkNotNull(credentialSubject,
        r'SignCredentialInputDtoUnsignedCredentialParams', 'credentialSubject');
    BuiltValueNullFieldError.checkNotNull(holderDid,
        r'SignCredentialInputDtoUnsignedCredentialParams', 'holderDid');
    BuiltValueNullFieldError.checkNotNull(expiresAt,
        r'SignCredentialInputDtoUnsignedCredentialParams', 'expiresAt');
  }

  @override
  SignCredentialInputDtoUnsignedCredentialParams rebuild(
          void Function(SignCredentialInputDtoUnsignedCredentialParamsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialInputDtoUnsignedCredentialParamsBuilder toBuilder() =>
      new SignCredentialInputDtoUnsignedCredentialParamsBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialInputDtoUnsignedCredentialParams &&
        jsonLdContextUrl == other.jsonLdContextUrl &&
        jsonSchemaUrl == other.jsonSchemaUrl &&
        typeName == other.typeName &&
        credentialSubject == other.credentialSubject &&
        holderDid == other.holderDid &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, jsonLdContextUrl.hashCode);
    _$hash = $jc(_$hash, jsonSchemaUrl.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, credentialSubject.hashCode);
    _$hash = $jc(_$hash, holderDid.hashCode);
    _$hash = $jc(_$hash, expiresAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SignCredentialInputDtoUnsignedCredentialParams')
          ..add('jsonLdContextUrl', jsonLdContextUrl)
          ..add('jsonSchemaUrl', jsonSchemaUrl)
          ..add('typeName', typeName)
          ..add('credentialSubject', credentialSubject)
          ..add('holderDid', holderDid)
          ..add('expiresAt', expiresAt))
        .toString();
  }
}

class SignCredentialInputDtoUnsignedCredentialParamsBuilder
    implements
        Builder<SignCredentialInputDtoUnsignedCredentialParams,
            SignCredentialInputDtoUnsignedCredentialParamsBuilder> {
  _$SignCredentialInputDtoUnsignedCredentialParams? _$v;

  String? _jsonLdContextUrl;
  String? get jsonLdContextUrl => _$this._jsonLdContextUrl;
  set jsonLdContextUrl(String? jsonLdContextUrl) =>
      _$this._jsonLdContextUrl = jsonLdContextUrl;

  String? _jsonSchemaUrl;
  String? get jsonSchemaUrl => _$this._jsonSchemaUrl;
  set jsonSchemaUrl(String? jsonSchemaUrl) =>
      _$this._jsonSchemaUrl = jsonSchemaUrl;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  MapBuilder<String, JsonObject?>? _credentialSubject;
  MapBuilder<String, JsonObject?> get credentialSubject =>
      _$this._credentialSubject ??= new MapBuilder<String, JsonObject?>();
  set credentialSubject(MapBuilder<String, JsonObject?>? credentialSubject) =>
      _$this._credentialSubject = credentialSubject;

  String? _holderDid;
  String? get holderDid => _$this._holderDid;
  set holderDid(String? holderDid) => _$this._holderDid = holderDid;

  String? _expiresAt;
  String? get expiresAt => _$this._expiresAt;
  set expiresAt(String? expiresAt) => _$this._expiresAt = expiresAt;

  SignCredentialInputDtoUnsignedCredentialParamsBuilder() {
    SignCredentialInputDtoUnsignedCredentialParams._defaults(this);
  }

  SignCredentialInputDtoUnsignedCredentialParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _jsonLdContextUrl = $v.jsonLdContextUrl;
      _jsonSchemaUrl = $v.jsonSchemaUrl;
      _typeName = $v.typeName;
      _credentialSubject = $v.credentialSubject.toBuilder();
      _holderDid = $v.holderDid;
      _expiresAt = $v.expiresAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialInputDtoUnsignedCredentialParams other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignCredentialInputDtoUnsignedCredentialParams;
  }

  @override
  void update(
      void Function(SignCredentialInputDtoUnsignedCredentialParamsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialInputDtoUnsignedCredentialParams build() => _build();

  _$SignCredentialInputDtoUnsignedCredentialParams _build() {
    _$SignCredentialInputDtoUnsignedCredentialParams _$result;
    try {
      _$result = _$v ??
          new _$SignCredentialInputDtoUnsignedCredentialParams._(
            jsonLdContextUrl: BuiltValueNullFieldError.checkNotNull(
                jsonLdContextUrl,
                r'SignCredentialInputDtoUnsignedCredentialParams',
                'jsonLdContextUrl'),
            jsonSchemaUrl: BuiltValueNullFieldError.checkNotNull(
                jsonSchemaUrl,
                r'SignCredentialInputDtoUnsignedCredentialParams',
                'jsonSchemaUrl'),
            typeName: BuiltValueNullFieldError.checkNotNull(typeName,
                r'SignCredentialInputDtoUnsignedCredentialParams', 'typeName'),
            credentialSubject: credentialSubject.build(),
            holderDid: BuiltValueNullFieldError.checkNotNull(holderDid,
                r'SignCredentialInputDtoUnsignedCredentialParams', 'holderDid'),
            expiresAt: BuiltValueNullFieldError.checkNotNull(expiresAt,
                r'SignCredentialInputDtoUnsignedCredentialParams', 'expiresAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'credentialSubject';
        credentialSubject.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SignCredentialInputDtoUnsignedCredentialParams',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
