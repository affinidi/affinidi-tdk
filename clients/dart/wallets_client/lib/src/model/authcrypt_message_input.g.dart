// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authcrypt_message_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthcryptMessageInputSignatureSchemeEnum
    _$authcryptMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256 =
    const AuthcryptMessageInputSignatureSchemeEnum._('ecdsaSecp256k1Sha256');
const AuthcryptMessageInputSignatureSchemeEnum
    _$authcryptMessageInputSignatureSchemeEnum_ecdsaP256Sha256 =
    const AuthcryptMessageInputSignatureSchemeEnum._('ecdsaP256Sha256');
const AuthcryptMessageInputSignatureSchemeEnum
    _$authcryptMessageInputSignatureSchemeEnum_ed25519 =
    const AuthcryptMessageInputSignatureSchemeEnum._('ed25519');

AuthcryptMessageInputSignatureSchemeEnum
    _$authcryptMessageInputSignatureSchemeEnumValueOf(String name) {
  switch (name) {
    case 'ecdsaSecp256k1Sha256':
      return _$authcryptMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256;
    case 'ecdsaP256Sha256':
      return _$authcryptMessageInputSignatureSchemeEnum_ecdsaP256Sha256;
    case 'ed25519':
      return _$authcryptMessageInputSignatureSchemeEnum_ed25519;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AuthcryptMessageInputSignatureSchemeEnum>
    _$authcryptMessageInputSignatureSchemeEnumValues = BuiltSet<
        AuthcryptMessageInputSignatureSchemeEnum>(const <AuthcryptMessageInputSignatureSchemeEnum>[
  _$authcryptMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256,
  _$authcryptMessageInputSignatureSchemeEnum_ecdsaP256Sha256,
  _$authcryptMessageInputSignatureSchemeEnum_ed25519,
]);

Serializer<AuthcryptMessageInputSignatureSchemeEnum>
    _$authcryptMessageInputSignatureSchemeEnumSerializer =
    _$AuthcryptMessageInputSignatureSchemeEnumSerializer();

class _$AuthcryptMessageInputSignatureSchemeEnumSerializer
    implements PrimitiveSerializer<AuthcryptMessageInputSignatureSchemeEnum> {
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
    AuthcryptMessageInputSignatureSchemeEnum
  ];
  @override
  final String wireName = 'AuthcryptMessageInputSignatureSchemeEnum';

  @override
  Object serialize(Serializers serializers,
          AuthcryptMessageInputSignatureSchemeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthcryptMessageInputSignatureSchemeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthcryptMessageInputSignatureSchemeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AuthcryptMessageInput extends AuthcryptMessageInput {
  @override
  final JsonObject plainTextMessage;
  @override
  final AuthcryptMessageInputSignatureSchemeEnum? signatureScheme;

  factory _$AuthcryptMessageInput(
          [void Function(AuthcryptMessageInputBuilder)? updates]) =>
      (AuthcryptMessageInputBuilder()..update(updates))._build();

  _$AuthcryptMessageInput._(
      {required this.plainTextMessage, this.signatureScheme})
      : super._();
  @override
  AuthcryptMessageInput rebuild(
          void Function(AuthcryptMessageInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthcryptMessageInputBuilder toBuilder() =>
      AuthcryptMessageInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthcryptMessageInput &&
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
    return (newBuiltValueToStringHelper(r'AuthcryptMessageInput')
          ..add('plainTextMessage', plainTextMessage)
          ..add('signatureScheme', signatureScheme))
        .toString();
  }
}

class AuthcryptMessageInputBuilder
    implements Builder<AuthcryptMessageInput, AuthcryptMessageInputBuilder> {
  _$AuthcryptMessageInput? _$v;

  JsonObject? _plainTextMessage;
  JsonObject? get plainTextMessage => _$this._plainTextMessage;
  set plainTextMessage(JsonObject? plainTextMessage) =>
      _$this._plainTextMessage = plainTextMessage;

  AuthcryptMessageInputSignatureSchemeEnum? _signatureScheme;
  AuthcryptMessageInputSignatureSchemeEnum? get signatureScheme =>
      _$this._signatureScheme;
  set signatureScheme(
          AuthcryptMessageInputSignatureSchemeEnum? signatureScheme) =>
      _$this._signatureScheme = signatureScheme;

  AuthcryptMessageInputBuilder() {
    AuthcryptMessageInput._defaults(this);
  }

  AuthcryptMessageInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _plainTextMessage = $v.plainTextMessage;
      _signatureScheme = $v.signatureScheme;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthcryptMessageInput other) {
    _$v = other as _$AuthcryptMessageInput;
  }

  @override
  void update(void Function(AuthcryptMessageInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthcryptMessageInput build() => _build();

  _$AuthcryptMessageInput _build() {
    final _$result = _$v ??
        _$AuthcryptMessageInput._(
          plainTextMessage: BuiltValueNullFieldError.checkNotNull(
              plainTextMessage, r'AuthcryptMessageInput', 'plainTextMessage'),
          signatureScheme: signatureScheme,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
