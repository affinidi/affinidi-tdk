// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_presentation_ldp_input_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignPresentationLdpInputDtoSignatureSchemeEnum
    _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const SignPresentationLdpInputDtoSignatureSchemeEnum._(
        'ecdsaSecp256k1Sha256');
const SignPresentationLdpInputDtoSignatureSchemeEnum
    _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256 =
    const SignPresentationLdpInputDtoSignatureSchemeEnum._('ecdsaP256Sha256');
const SignPresentationLdpInputDtoSignatureSchemeEnum
    _$signPresentationLdpInputDtoSignatureSchemeEnum_ed25519 =
    const SignPresentationLdpInputDtoSignatureSchemeEnum._('ed25519');

SignPresentationLdpInputDtoSignatureSchemeEnum
    _$signPresentationLdpInputDtoSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$signPresentationLdpInputDtoSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignPresentationLdpInputDtoSignatureSchemeEnum>
    _$signPresentationLdpInputDtoSignatureSchemeEnumValues = BuiltSet<
        SignPresentationLdpInputDtoSignatureSchemeEnum>(const <SignPresentationLdpInputDtoSignatureSchemeEnum>[
  _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256,
  _$signPresentationLdpInputDtoSignatureSchemeEnum_ed25519,
]);

const SignPresentationLdpInputDtoSignatureSuiteEnum
    _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaJcs2019 =
    const SignPresentationLdpInputDtoSignatureSuiteEnum._('ecdsaJcs2019');
const SignPresentationLdpInputDtoSignatureSuiteEnum
    _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaRdfc2019 =
    const SignPresentationLdpInputDtoSignatureSuiteEnum._('ecdsaRdfc2019');
const SignPresentationLdpInputDtoSignatureSuiteEnum
    _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaJcs2022 =
    const SignPresentationLdpInputDtoSignatureSuiteEnum._('eddsaJcs2022');
const SignPresentationLdpInputDtoSignatureSuiteEnum
    _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaRdfc2022 =
    const SignPresentationLdpInputDtoSignatureSuiteEnum._('eddsaRdfc2022');
const SignPresentationLdpInputDtoSignatureSuiteEnum
    _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaSecp256k1Signature2019 =
    const SignPresentationLdpInputDtoSignatureSuiteEnum._(
        'ecdsaSecp256k1Signature2019');

SignPresentationLdpInputDtoSignatureSuiteEnum
    _$signPresentationLdpInputDtoSignatureSuiteEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaJcs2019':
      return _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaJcs2019;
    case 'ecdsaRdfc2019':
      return _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaRdfc2019;
    case 'eddsaJcs2022':
      return _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaJcs2022;
    case 'eddsaRdfc2022':
      return _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaRdfc2022;
    case 'ecdsaSecp256k1Signature2019':
      return _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaSecp256k1Signature2019;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignPresentationLdpInputDtoSignatureSuiteEnum>
    _$signPresentationLdpInputDtoSignatureSuiteEnumValues = BuiltSet<
        SignPresentationLdpInputDtoSignatureSuiteEnum>(const <SignPresentationLdpInputDtoSignatureSuiteEnum>[
  _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaJcs2019,
  _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaRdfc2019,
  _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaJcs2022,
  _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaRdfc2022,
  _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaSecp256k1Signature2019,
]);

Serializer<SignPresentationLdpInputDtoSignatureSchemeEnum>
    _$signPresentationLdpInputDtoSignatureSchemeEnumSerializer =
    _$SignPresentationLdpInputDtoSignatureSchemeEnumSerializer();
Serializer<SignPresentationLdpInputDtoSignatureSuiteEnum>
    _$signPresentationLdpInputDtoSignatureSuiteEnumSerializer =
    _$SignPresentationLdpInputDtoSignatureSuiteEnumSerializer();

class _$SignPresentationLdpInputDtoSignatureSchemeEnumSerializer
    implements
        PrimitiveSerializer<SignPresentationLdpInputDtoSignatureSchemeEnum> {
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
    SignPresentationLdpInputDtoSignatureSchemeEnum
  ];
  @override
  final String wireName = 'SignPresentationLdpInputDtoSignatureSchemeEnum';

  @override
  Object serialize(Serializers serializers,
          SignPresentationLdpInputDtoSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignPresentationLdpInputDtoSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignPresentationLdpInputDtoSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignPresentationLdpInputDtoSignatureSuiteEnumSerializer
    implements
        PrimitiveSerializer<SignPresentationLdpInputDtoSignatureSuiteEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ecdsaJcs2019': 'ecdsa-jcs-2019',
    'ecdsaRdfc2019': 'ecdsa-rdfc-2019',
    'eddsaJcs2022': 'eddsa-jcs-2022',
    'eddsaRdfc2022': 'eddsa-rdfc-2022',
    'ecdsaSecp256k1Signature2019': 'EcdsaSecp256k1Signature2019',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ecdsa-jcs-2019': 'ecdsaJcs2019',
    'ecdsa-rdfc-2019': 'ecdsaRdfc2019',
    'eddsa-jcs-2022': 'eddsaJcs2022',
    'eddsa-rdfc-2022': 'eddsaRdfc2022',
    'EcdsaSecp256k1Signature2019': 'ecdsaSecp256k1Signature2019',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SignPresentationLdpInputDtoSignatureSuiteEnum
  ];
  @override
  final String wireName = 'SignPresentationLdpInputDtoSignatureSuiteEnum';

  @override
  Object serialize(Serializers serializers,
          SignPresentationLdpInputDtoSignatureSuiteEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignPresentationLdpInputDtoSignatureSuiteEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignPresentationLdpInputDtoSignatureSuiteEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignPresentationLdpInputDto extends SignPresentationLdpInputDto {
  @override
  final JsonObject unsignedPresentation;
  @override
  final SignPresentationLdpInputDtoSignatureSchemeEnum? signatureScheme;
  @override
  final SignPresentationLdpInputDtoSignatureSuiteEnum? signatureSuite;
  @override
  final BuiltList<String>? domain;
  @override
  final String? challenge;

  factory _$SignPresentationLdpInputDto(
          [void Function(SignPresentationLdpInputDtoBuilder)? updates]) =>
      (SignPresentationLdpInputDtoBuilder()..update(updates))._build();

  _$SignPresentationLdpInputDto._(
      {required this.unsignedPresentation,
      this.signatureScheme,
      this.signatureSuite,
      this.domain,
      this.challenge})
      : super._();
  @override
  SignPresentationLdpInputDto rebuild(
          void Function(SignPresentationLdpInputDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignPresentationLdpInputDtoBuilder toBuilder() =>
      SignPresentationLdpInputDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignPresentationLdpInputDto &&
        unsignedPresentation == other.unsignedPresentation &&
        signatureScheme == other.signatureScheme &&
        signatureSuite == other.signatureSuite &&
        domain == other.domain &&
        challenge == other.challenge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedPresentation.hashCode);
    _$hash = $jc(_$hash, signatureScheme.hashCode);
    _$hash = $jc(_$hash, signatureSuite.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, challenge.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignPresentationLdpInputDto')
          ..add('unsignedPresentation', unsignedPresentation)
          ..add('signatureScheme', signatureScheme)
          ..add('signatureSuite', signatureSuite)
          ..add('domain', domain)
          ..add('challenge', challenge))
        .toString();
  }
}

class SignPresentationLdpInputDtoBuilder
    implements
        Builder<SignPresentationLdpInputDto,
            SignPresentationLdpInputDtoBuilder> {
  _$SignPresentationLdpInputDto? _$v;

  JsonObject? _unsignedPresentation;
  JsonObject? get unsignedPresentation => _$this._unsignedPresentation;
  set unsignedPresentation(JsonObject? unsignedPresentation) =>
      _$this._unsignedPresentation = unsignedPresentation;

  SignPresentationLdpInputDtoSignatureSchemeEnum? _signatureScheme;
  SignPresentationLdpInputDtoSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(
          SignPresentationLdpInputDtoSignatureSchemeEnum? signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  SignPresentationLdpInputDtoSignatureSuiteEnum? _signatureSuite;
  SignPresentationLdpInputDtoSignatureSuiteEnum? get signatureSuite =>
      _$this._signatureSuite;
  set signatureSuite(
          SignPresentationLdpInputDtoSignatureSuiteEnum? signatureSuite) =>
      _$this._signatureSuite = signatureSuite;

  ListBuilder<String>? _domain;
  ListBuilder<String> get domain => _$this._domain ??= ListBuilder<String>();
  set domain(ListBuilder<String>? domain) => _$this._domain = domain;

  String? _challenge;
  String? get challenge => _$this._challenge;
  set challenge(String? challenge) => _$this._challenge = challenge;

  SignPresentationLdpInputDtoBuilder() {
    SignPresentationLdpInputDto._defaults(this);
  }

  SignPresentationLdpInputDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unsignedPresentation = $v.unsignedPresentation;
      _signatureScheme = $v.signatureScheme;
      _signatureSuite = $v.signatureSuite;
      _domain = $v.domain?.toBuilder();
      _challenge = $v.challenge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignPresentationLdpInputDto other) {
    _$v = other as _$SignPresentationLdpInputDto;
  }

  @override
  void update(void Function(SignPresentationLdpInputDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignPresentationLdpInputDto build() => _build();

  _$SignPresentationLdpInputDto _build() {
    _$SignPresentationLdpInputDto _$result;
    try {
      _$result = _$v ??
          _$SignPresentationLdpInputDto._(
            unsignedPresentation: BuiltValueNullFieldError.checkNotNull(
                unsignedPresentation,
                r'SignPresentationLdpInputDto',
                'unsignedPresentation'),
            signatureScheme: signatureScheme,
            signatureSuite: signatureSuite,
            domain: _domain?.build(),
            challenge: challenge,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'domain';
        _domain?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SignPresentationLdpInputDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
