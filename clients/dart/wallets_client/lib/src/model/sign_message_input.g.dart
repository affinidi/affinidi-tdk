// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_message_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignMessageInputSignatureSchemeEnum
    _$signMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const SignMessageInputSignatureSchemeEnum._('ecdsaSecp256k1Sha256');
const SignMessageInputSignatureSchemeEnum
    _$signMessageInputSignatureSchemeEnum_ecdsaP256Sha256 =
    const SignMessageInputSignatureSchemeEnum._('ecdsaP256Sha256');
const SignMessageInputSignatureSchemeEnum
    _$signMessageInputSignatureSchemeEnum_ed25519 =
    const SignMessageInputSignatureSchemeEnum._('ed25519');

SignMessageInputSignatureSchemeEnum
    _$signMessageInputSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$signMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$signMessageInputSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$signMessageInputSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignMessageInputSignatureSchemeEnum>
    _$signMessageInputSignatureSchemeEnumValues = BuiltSet<
        SignMessageInputSignatureSchemeEnum>(const <SignMessageInputSignatureSchemeEnum>[
  _$signMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$signMessageInputSignatureSchemeEnum_ecdsaP256Sha256,
  _$signMessageInputSignatureSchemeEnum_ed25519,
]);

Serializer<SignMessageInputSignatureSchemeEnum>
    _$signMessageInputSignatureSchemeEnumSerializer =
    _$SignMessageInputSignatureSchemeEnumSerializer();

class _$SignMessageInputSignatureSchemeEnumSerializer
    implements PrimitiveSerializer<SignMessageInputSignatureSchemeEnum> {
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
    SignMessageInputSignatureSchemeEnum
  ];
  @override
  final String wireName = 'SignMessageInputSignatureSchemeEnum';

  @override
  Object serialize(
          Serializers serializers, SignMessageInputSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignMessageInputSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignMessageInputSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignMessageInput extends SignMessageInput {
  @override
  final JsonObject plainTextMessage;
  @override
  final SignMessageInputSignatureSchemeEnum? signatureScheme;

  factory _$SignMessageInput(
          [void Function(SignMessageInputBuilder)? updates]) =>
      (SignMessageInputBuilder()..update(updates))._build();

  _$SignMessageInput._({required this.plainTextMessage, this.signatureScheme})
      : super._();
  @override
  SignMessageInput rebuild(void Function(SignMessageInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignMessageInputBuilder toBuilder() =>
      SignMessageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignMessageInput &&
        plainTextMessage == other.plainTextMessage &&
        signatureScheme == other.signatureScheme;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, plainTextMessage.hashCode);
    _$hash = $jc(_$hash, signatureScheme.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignMessageInput')
          ..add('plainTextMessage', plainTextMessage)
          ..add('signatureScheme', signatureScheme))
        .toString();
  }
}

class SignMessageInputBuilder
    implements Builder<SignMessageInput, SignMessageInputBuilder> {
  _$SignMessageInput? _$v;

  JsonObject? _plainTextMessage;
  JsonObject? get plainTextMessage => _$this._plainTextMessage;
  set plainTextMessage(JsonObject? plainTextMessage) =>
      _$this._plainTextMessage = plainTextMessage;

  SignMessageInputSignatureSchemeEnum? _signatureScheme;
  SignMessageInputSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(SignMessageInputSignatureSchemeEnum? signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  SignMessageInputBuilder() {
    SignMessageInput._defaults(this);
  }

  SignMessageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plainTextMessage = $v.plainTextMessage;
      _signatureScheme = $v.signatureScheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignMessageInput other) {
    _$v = other as _$SignMessageInput;
  }

  @override
  void update(void Function(SignMessageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignMessageInput build() => _build();

  _$SignMessageInput _build() {
    final _$result = _$v ??
        _$SignMessageInput._(
          plainTextMessage: BuiltValueNullFieldError.checkNotNull(
              plainTextMessage, r'SignMessageInput', 'plainTextMessage'),
          signatureScheme: signatureScheme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
