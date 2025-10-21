// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm2_sd_jwt_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum
    _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum._(
        'ecdsaSecp256k1Sha256');
const SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum
    _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256 =
    const SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum._(
        'ecdsaP256Sha256');
const SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum
    _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ed25519 =
    const SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum._('ed25519');

SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum
    _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum>
    _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnumValues = BuiltSet<
        SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum>(const <SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum>[
  _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256,
  _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnum_ed25519,
]);

Serializer<SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum>
    _$signCredentialsDm2SdJwtInputDtoSignatureSchemeEnumSerializer =
    _$SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnumSerializer();

class _$SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnumSerializer
    implements
        PrimitiveSerializer<
            SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ecdsaSecp256k1Sha256': 'ecdsa_secp256k1_sha256',
    'ecdsaP256Sha256': 'ecdsa_p256_sha256',
    'ed25519': 'ed25519',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ecdsa_secp256k1_sha256': 'ecdsaSecp256k1Sha256',
    'ecdsa_p256_sha256': 'ecdsaP256Sha256',
    'ed25519': 'ed25519',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum
  ];
  @override
  final String wireName = 'SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum';

  @override
  Object serialize(Serializers serializers,
          SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredentialsDm2SdJwtInputDto
    extends SignCredentialsDm2SdJwtInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;
  @override
  final JsonObject disclosureFrame;
  @override
  final SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum? signatureScheme;

  factory _$SignCredentialsDm2SdJwtInputDto(
          [void Function(SignCredentialsDm2SdJwtInputDtoBuilder)? updates]) =>
      (SignCredentialsDm2SdJwtInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm2SdJwtInputDto._(
      {required this.unsignedCredential,
      this.revocable,
      required this.disclosureFrame,
      this.signatureScheme})
      : super._();
  @override
  SignCredentialsDm2SdJwtInputDto rebuild(
          void Function(SignCredentialsDm2SdJwtInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm2SdJwtInputDtoBuilder toBuilder() =>
      SignCredentialsDm2SdJwtInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm2SdJwtInputDto &&
        unsignedCredential == other.unsignedCredential &&
        revocable == other.revocable &&
        disclosureFrame == other.disclosureFrame &&
        signatureScheme == other.signatureScheme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedCredential.hashCode);
    _$hash = $jc(_$hash, revocable.hashCode);
    _$hash = $jc(_$hash, disclosureFrame.hashCode);
    _$hash = $jc(_$hash, signatureScheme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialsDm2SdJwtInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable)
          ..add('disclosureFrame', disclosureFrame)
          ..add('signatureScheme', signatureScheme))
        .toString();
  }
}

class SignCredentialsDm2SdJwtInputDtoBuilder
    implements
        Builder<SignCredentialsDm2SdJwtInputDto,
            SignCredentialsDm2SdJwtInputDtoBuilder> {
  _$SignCredentialsDm2SdJwtInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  JsonObject? _disclosureFrame;
  JsonObject? get disclosureFrame => _$this._disclosureFrame;
  set disclosureFrame(JsonObject? disclosureFrame) =>
      _$this._disclosureFrame = disclosureFrame;

  SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum? _signatureScheme;
  SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(
          SignCredentialsDm2SdJwtInputDtoSignatureSchemeEnum?
              signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  SignCredentialsDm2SdJwtInputDtoBuilder() {
    SignCredentialsDm2SdJwtInputDto._defaults(this);
  }

  SignCredentialsDm2SdJwtInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _disclosureFrame = $v.disclosureFrame;
      _signatureScheme = $v.signatureScheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsDm2SdJwtInputDto other) {
    _$v = other as _$SignCredentialsDm2SdJwtInputDto;
  }

  @override
  void update(void Function(SignCredentialsDm2SdJwtInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm2SdJwtInputDto build() => _build();

  _$SignCredentialsDm2SdJwtInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm2SdJwtInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsDm2SdJwtInputDto',
              'unsignedCredential'),
          revocable: revocable,
          disclosureFrame: BuiltValueNullFieldError.checkNotNull(
              disclosureFrame,
              r'SignCredentialsDm2SdJwtInputDto',
              'disclosureFrame'),
          signatureScheme: signatureScheme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
