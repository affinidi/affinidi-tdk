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

Serializer<SignPresentationLdpInputDtoSignatureSchemeEnum>
    _$signPresentationLdpInputDtoSignatureSchemeEnumSerializer =
    _$SignPresentationLdpInputDtoSignatureSchemeEnumSerializer();

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

class _$SignPresentationLdpInputDto extends SignPresentationLdpInputDto {
  @override
  final JsonObject unsignedPresentation;
  @override
  final SignPresentationLdpInputDtoSignatureSchemeEnum? signatureScheme;
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
        domain == other.domain &&
        challenge == other.challenge;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unsignedPresentation.hashCode);
    _$hash = $jc(_$hash, signatureScheme.hashCode);
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
