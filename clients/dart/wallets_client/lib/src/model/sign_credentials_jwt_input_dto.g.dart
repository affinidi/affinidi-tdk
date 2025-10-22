// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_jwt_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignCredentialsJwtInputDtoSignatureSchemeEnum
    _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const SignCredentialsJwtInputDtoSignatureSchemeEnum._(
        'ecdsaSecp256k1Sha256');
const SignCredentialsJwtInputDtoSignatureSchemeEnum
    _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256 =
    const SignCredentialsJwtInputDtoSignatureSchemeEnum._('ecdsaP256Sha256');
const SignCredentialsJwtInputDtoSignatureSchemeEnum
    _$signCredentialsJwtInputDtoSignatureSchemeEnum_ed25519 =
    const SignCredentialsJwtInputDtoSignatureSchemeEnum._('ed25519');

SignCredentialsJwtInputDtoSignatureSchemeEnum
    _$signCredentialsJwtInputDtoSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$signCredentialsJwtInputDtoSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredentialsJwtInputDtoSignatureSchemeEnum>
    _$signCredentialsJwtInputDtoSignatureSchemeEnumValues = BuiltSet<
        SignCredentialsJwtInputDtoSignatureSchemeEnum>(const <SignCredentialsJwtInputDtoSignatureSchemeEnum>[
  _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256,
  _$signCredentialsJwtInputDtoSignatureSchemeEnum_ed25519,
]);

Serializer<SignCredentialsJwtInputDtoSignatureSchemeEnum>
    _$signCredentialsJwtInputDtoSignatureSchemeEnumSerializer =
    _$SignCredentialsJwtInputDtoSignatureSchemeEnumSerializer();

class _$SignCredentialsJwtInputDtoSignatureSchemeEnumSerializer
    implements
        PrimitiveSerializer<SignCredentialsJwtInputDtoSignatureSchemeEnum> {
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
    SignCredentialsJwtInputDtoSignatureSchemeEnum
  ];
  @override
  final String wireName = 'SignCredentialsJwtInputDtoSignatureSchemeEnum';

  @override
  Object serialize(Serializers serializers,
          SignCredentialsJwtInputDtoSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredentialsJwtInputDtoSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredentialsJwtInputDtoSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredentialsJwtInputDto extends SignCredentialsJwtInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;
  @override
  final SignCredentialsJwtInputDtoSignatureSchemeEnum? signatureScheme;

  factory _$SignCredentialsJwtInputDto(
          [void Function(SignCredentialsJwtInputDtoBuilder)? updates]) =>
      (SignCredentialsJwtInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsJwtInputDto._(
      {required this.unsignedCredential, this.revocable, this.signatureScheme})
      : super._();
  @override
  SignCredentialsJwtInputDto rebuild(
          void Function(SignCredentialsJwtInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsJwtInputDtoBuilder toBuilder() =>
      SignCredentialsJwtInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsJwtInputDto &&
        unsignedCredential == other.unsignedCredential &&
        revocable == other.revocable &&
        signatureScheme == other.signatureScheme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedCredential.hashCode);
    _$hash = $jc(_$hash, revocable.hashCode);
    _$hash = $jc(_$hash, signatureScheme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignCredentialsJwtInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable)
          ..add('signatureScheme', signatureScheme))
        .toString();
  }
}

class SignCredentialsJwtInputDtoBuilder
    implements
        Builder<SignCredentialsJwtInputDto, SignCredentialsJwtInputDtoBuilder> {
  _$SignCredentialsJwtInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialsJwtInputDtoSignatureSchemeEnum? _signatureScheme;
  SignCredentialsJwtInputDtoSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(
          SignCredentialsJwtInputDtoSignatureSchemeEnum? signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  SignCredentialsJwtInputDtoBuilder() {
    SignCredentialsJwtInputDto._defaults(this);
  }

  SignCredentialsJwtInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedCredential = $v.unsignedCredential;
      _revocable = $v.revocable;
      _signatureScheme = $v.signatureScheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignCredentialsJwtInputDto other) {
    _$v = other as _$SignCredentialsJwtInputDto;
  }

  @override
  void update(void Function(SignCredentialsJwtInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsJwtInputDto build() => _build();

  _$SignCredentialsJwtInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsJwtInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsJwtInputDto',
              'unsignedCredential'),
          revocable: revocable,
          signatureScheme: signatureScheme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
