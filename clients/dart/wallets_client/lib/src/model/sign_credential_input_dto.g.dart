// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credential_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignCredentialInputDtoCredentialFormatEnum
    _$signCredentialInputDtoCredentialFormatEnum_ldpVc =
    const SignCredentialInputDtoCredentialFormatEnum._('ldpVc');
const SignCredentialInputDtoCredentialFormatEnum
    _$signCredentialInputDtoCredentialFormatEnum_jwtVcJsonLd =
    const SignCredentialInputDtoCredentialFormatEnum._('jwtVcJsonLd');
const SignCredentialInputDtoCredentialFormatEnum
    _$signCredentialInputDtoCredentialFormatEnum_sdJwtVcJsonLd =
    const SignCredentialInputDtoCredentialFormatEnum._('sdJwtVcJsonLd');

SignCredentialInputDtoCredentialFormatEnum
    _$signCredentialInputDtoCredentialFormatEnumValueOf(String name) {
  switch (name) {
    case 'ldpVc':
      return _$signCredentialInputDtoCredentialFormatEnum_ldpVc;
    case 'jwtVcJsonLd':
      return _$signCredentialInputDtoCredentialFormatEnum_jwtVcJsonLd;
    case 'sdJwtVcJsonLd':
      return _$signCredentialInputDtoCredentialFormatEnum_sdJwtVcJsonLd;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredentialInputDtoCredentialFormatEnum>
    _$signCredentialInputDtoCredentialFormatEnumValues = BuiltSet<
        SignCredentialInputDtoCredentialFormatEnum>(const <SignCredentialInputDtoCredentialFormatEnum>[
  _$signCredentialInputDtoCredentialFormatEnum_ldpVc,
  _$signCredentialInputDtoCredentialFormatEnum_jwtVcJsonLd,
  _$signCredentialInputDtoCredentialFormatEnum_sdJwtVcJsonLd,
]);

Serializer<SignCredentialInputDtoCredentialFormatEnum>
    _$signCredentialInputDtoCredentialFormatEnumSerializer =
    _$SignCredentialInputDtoCredentialFormatEnumSerializer();

class _$SignCredentialInputDtoCredentialFormatEnumSerializer
    implements PrimitiveSerializer<SignCredentialInputDtoCredentialFormatEnum> {
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
    SignCredentialInputDtoCredentialFormatEnum
  ];
  @override
  final String wireName = 'SignCredentialInputDtoCredentialFormatEnum';

  @override
  Object serialize(Serializers serializers,
          SignCredentialInputDtoCredentialFormatEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredentialInputDtoCredentialFormatEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredentialInputDtoCredentialFormatEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredentialInputDto extends SignCredentialInputDto {
  @override
  final JsonObject? unsignedCredential;
  @override
  final bool? revocable;
  @override
  final SignCredentialInputDtoCredentialFormatEnum? credentialFormat;
  @override
  final SignCredentialInputDtoUnsignedCredentialParams?
      unsignedCredentialParams;

  factory _$SignCredentialInputDto(
          [void Function(SignCredentialInputDtoBuilder)? updates]) =>
      (SignCredentialInputDtoBuilder()..update(updates))._build();

  _$SignCredentialInputDto._(
      {this.unsignedCredential,
      this.revocable,
      this.credentialFormat,
      this.unsignedCredentialParams})
      : super._();
  @override
  SignCredentialInputDto rebuild(
          void Function(SignCredentialInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialInputDtoBuilder toBuilder() =>
      SignCredentialInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialInputDto &&
        unsignedCredential == other.unsignedCredential &&
        revocable == other.revocable &&
        credentialFormat == other.credentialFormat &&
        unsignedCredentialParams == other.unsignedCredentialParams;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedCredential.hashCode);
    _$hash = $jc(_$hash, revocable.hashCode);
    _$hash = $jc(_$hash, credentialFormat.hashCode);
    _$hash = $jc(_$hash, unsignedCredentialParams.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable)
          ..add('credentialFormat', credentialFormat)
          ..add('unsignedCredentialParams', unsignedCredentialParams))
        .toString();
  }
}

class SignCredentialInputDtoBuilder
    implements Builder<SignCredentialInputDto, SignCredentialInputDtoBuilder> {
  _$SignCredentialInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialInputDtoCredentialFormatEnum? _credentialFormat;
  SignCredentialInputDtoCredentialFormatEnum? get credentialFormat =>
      _$this._credentialFormat;
  set credentialFormat(
          SignCredentialInputDtoCredentialFormatEnum? credentialFormat) =>
      _$this._credentialFormat = credentialFormat;

  SignCredentialInputDtoUnsignedCredentialParamsBuilder?
      _unsignedCredentialParams;
  SignCredentialInputDtoUnsignedCredentialParamsBuilder
      get unsignedCredentialParams => _$this._unsignedCredentialParams ??=
          SignCredentialInputDtoUnsignedCredentialParamsBuilder();
  set unsignedCredentialParams(
          SignCredentialInputDtoUnsignedCredentialParamsBuilder?
              unsignedCredentialParams) =>
      _$this._unsignedCredentialParams = unsignedCredentialParams;

  SignCredentialInputDtoBuilder() {
    SignCredentialInputDto._defaults(this);
  }

  SignCredentialInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _credentialFormat = $v.credentialFormat;
      _unsignedCredentialParams = $v.unsignedCredentialParams?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialInputDto other) {
    _$v = other as _$SignCredentialInputDto;
  }

  @override
  void update(void Function(SignCredentialInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialInputDto build() => _build();

  _$SignCredentialInputDto _build() {
    _$SignCredentialInputDto _$result;
    try {
      _$result = _$v ??
          _$SignCredentialInputDto._(
            unsignedCredential: unsignedCredential,
            revocable: revocable,
            credentialFormat: credentialFormat,
            unsignedCredentialParams: _unsignedCredentialParams?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'unsignedCredentialParams';
        _unsignedCredentialParams?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SignCredentialInputDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
