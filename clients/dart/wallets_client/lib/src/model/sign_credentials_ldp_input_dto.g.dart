// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_credentials_ldp_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignCredentialsLdpInputDtoSignatureSchemeEnum
    _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const SignCredentialsLdpInputDtoSignatureSchemeEnum._(
        'ecdsaSecp256k1Sha256');
const SignCredentialsLdpInputDtoSignatureSchemeEnum
    _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256 =
    const SignCredentialsLdpInputDtoSignatureSchemeEnum._('ecdsaP256Sha256');
const SignCredentialsLdpInputDtoSignatureSchemeEnum
    _$signCredentialsLdpInputDtoSignatureSchemeEnum_ed25519 =
    const SignCredentialsLdpInputDtoSignatureSchemeEnum._('ed25519');

SignCredentialsLdpInputDtoSignatureSchemeEnum
    _$signCredentialsLdpInputDtoSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$signCredentialsLdpInputDtoSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignCredentialsLdpInputDtoSignatureSchemeEnum>
    _$signCredentialsLdpInputDtoSignatureSchemeEnumValues = BuiltSet<
        SignCredentialsLdpInputDtoSignatureSchemeEnum>(const <SignCredentialsLdpInputDtoSignatureSchemeEnum>[
  _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256,
  _$signCredentialsLdpInputDtoSignatureSchemeEnum_ed25519,
]);

Serializer<SignCredentialsLdpInputDtoSignatureSchemeEnum>
    _$signCredentialsLdpInputDtoSignatureSchemeEnumSerializer =
    _$SignCredentialsLdpInputDtoSignatureSchemeEnumSerializer();

class _$SignCredentialsLdpInputDtoSignatureSchemeEnumSerializer
    implements
        PrimitiveSerializer<SignCredentialsLdpInputDtoSignatureSchemeEnum> {
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
    SignCredentialsLdpInputDtoSignatureSchemeEnum
  ];
  @override
  final String wireName = 'SignCredentialsLdpInputDtoSignatureSchemeEnum';

  @override
  Object serialize(Serializers serializers,
          SignCredentialsLdpInputDtoSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignCredentialsLdpInputDtoSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignCredentialsLdpInputDtoSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignCredentialsLdpInputDto extends SignCredentialsLdpInputDto {
  @override
  final JsonObject unsignedCredential;
  @override
  final bool? revocable;
  @override
  final SignCredentialsLdpInputDtoSignatureSchemeEnum? signatureScheme;

  factory _$SignCredentialsLdpInputDto(
          [void Function(SignCredentialsLdpInputDtoBuilder)? updates]) =>
      (SignCredentialsLdpInputDtoBuilder()..update(updates))._build();

  _$SignCredentialsLdpInputDto._(
      {required this.unsignedCredential, this.revocable, this.signatureScheme})
      : super._();
  @override
  SignCredentialsLdpInputDto rebuild(
          void Function(SignCredentialsLdpInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignCredentialsLdpInputDtoBuilder toBuilder() =>
      SignCredentialsLdpInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignCredentialsLdpInputDto &&
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
    return (newBuiltValueToStringHelper(r'SignCredentialsLdpInputDto')
          ..add('unsignedCredential', unsignedCredential)
          ..add('revocable', revocable)
          ..add('signatureScheme', signatureScheme))
        .toString();
  }
}

class SignCredentialsLdpInputDtoBuilder
    implements
        Builder<SignCredentialsLdpInputDto, SignCredentialsLdpInputDtoBuilder> {
  _$SignCredentialsLdpInputDto? _$v;

  JsonObject? _unsignedCredential;
  JsonObject? get unsignedCredential => _$this._unsignedCredential;
  set unsignedCredential(JsonObject? unsignedCredential) =>
      _$this._unsignedCredential = unsignedCredential;

  bool? _revocable;
  bool? get revocable => _$this._revocable;
  set revocable(bool? revocable) => _$this._revocable = revocable;

  SignCredentialsLdpInputDtoSignatureSchemeEnum? _signatureScheme;
  SignCredentialsLdpInputDtoSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(
          SignCredentialsLdpInputDtoSignatureSchemeEnum? signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  SignCredentialsLdpInputDtoBuilder() {
    SignCredentialsLdpInputDto._defaults(this);
  }

  SignCredentialsLdpInputDtoBuilder get _$this {
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
  void replace(SignCredentialsLdpInputDto other) {
    _$v = other as _$SignCredentialsLdpInputDto;
  }

  @override
  void update(void Function(SignCredentialsLdpInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignCredentialsLdpInputDto build() => _build();

  _$SignCredentialsLdpInputDto _build() {
    final _$result = _$v ??
        _$SignCredentialsLdpInputDto._(
          unsignedCredential: BuiltValueNullFieldError.checkNotNull(
              unsignedCredential,
              r'SignCredentialsLdpInputDto',
              'unsignedCredential'),
          revocable: revocable,
          signatureScheme: signatureScheme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
