// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_dm1_ld_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignCredentialsDm1LdInputDtoSignatureSchemeEnum
    _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const SignCredentialsDm1LdInputDtoSignatureSchemeEnum._(
        'ecdsaSecp256k1Sha256');
const SignCredentialsDm1LdInputDtoSignatureSchemeEnum
    _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaP256Sha256 =
    const SignCredentialsDm1LdInputDtoSignatureSchemeEnum._('ecdsaP256Sha256');
const SignCredentialsDm1LdInputDtoSignatureSchemeEnum
    _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ed25519 =
    const SignCredentialsDm1LdInputDtoSignatureSchemeEnum._('ed25519');

SignCredentialsDm1LdInputDtoSignatureSchemeEnum
    _$signCredentialsDm1LdInputDtoSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredentialsDm1LdInputDtoSignatureSchemeEnum>
    _$signCredentialsDm1LdInputDtoSignatureSchemeEnumValues = BuiltSet<
        SignCredentialsDm1LdInputDtoSignatureSchemeEnum>(const <SignCredentialsDm1LdInputDtoSignatureSchemeEnum>[
  _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaP256Sha256,
  _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ed25519,
]);

Serializer<SignCredentialsDm1LdInputDtoSignatureSchemeEnum>
    _$signCredentialsDm1LdInputDtoSignatureSchemeEnumSerializer =
    _$SignCredentialsDm1LdInputDtoSignatureSchemeEnumSerializer();

class _$SignCredentialsDm1LdInputDtoSignatureSchemeEnumSerializer
    implements
        PrimitiveSerializer<SignCredentialsDm1LdInputDtoSignatureSchemeEnum> {
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
    SignCredentialsDm1LdInputDtoSignatureSchemeEnum
  ];
  @override
  final String wireName = 'SignCredentialsDm1LdInputDtoSignatureSchemeEnum';

  @override
  Object serialize(Serializers serializers,
          SignCredentialsDm1LdInputDtoSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredentialsDm1LdInputDtoSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredentialsDm1LdInputDtoSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredentialsDm1LdInputDto extends SignCredentialsDm1LdInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;
  @override
  final SignCredentialsDm1LdInputDtoSignatureSchemeEnum? signatureScheme;

  factory _$SignCredentialsDm1LdInputDto(
          [void Function(SignCredentialsDm1LdInputDtoBuilder)? updates]) =>
      (SignCredentialsDm1LdInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsDm1LdInputDto._(
      {required this.unsignedCredential, this.revocable, this.signatureScheme})
      : super._();
  @override
  SignCredentialsDm1LdInputDto rebuild(
          void Function(SignCredentialsDm1LdInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsDm1LdInputDtoBuilder toBuilder() =>
      SignCredentialsDm1LdInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsDm1LdInputDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsDm1LdInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable)
          ..add('signatureScheme', signatureScheme))
        .toString();
  }
}

class SignCredentialsDm1LdInputDtoBuilder
    implements
        Builder<SignCredentialsDm1LdInputDto,
            SignCredentialsDm1LdInputDtoBuilder> {
  _$SignCredentialsDm1LdInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialsDm1LdInputDtoSignatureSchemeEnum? _signatureScheme;
  SignCredentialsDm1LdInputDtoSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(
          SignCredentialsDm1LdInputDtoSignatureSchemeEnum? signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  SignCredentialsDm1LdInputDtoBuilder() {
    SignCredentialsDm1LdInputDto._defaults(this);
  }

  SignCredentialsDm1LdInputDtoBuilder get _$this {
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
  void replace(SignCredentialsDm1LdInputDto other) {
    _$v = other as _$SignCredentialsDm1LdInputDto;
  }

  @override
  void update(void Function(SignCredentialsDm1LdInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsDm1LdInputDto build() => _build();

  _$SignCredentialsDm1LdInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsDm1LdInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsDm1LdInputDto',
              'unsignedCredential'),
          revocable: revocable,
          signatureScheme: signatureScheme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
