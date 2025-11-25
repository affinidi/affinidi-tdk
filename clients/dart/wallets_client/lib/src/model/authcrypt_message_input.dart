//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authcrypt_message_input.g.dart';

/// DTO contains params to authcrypt plain text DIDComm message
///
/// Properties:
/// * [plainTextMessage] - Unsigned plain text DIDComm message
/// * [signatureScheme]
@BuiltValue()
abstract class AuthcryptMessageInput
    implements Built<AuthcryptMessageInput, AuthcryptMessageInputBuilder> {
  /// Unsigned plain text DIDComm message
  @BuiltValueField(wireName: r'plainTextMessage')
  JsonObject get plainTextMessage;

  @BuiltValueField(wireName: r'signatureScheme')
  AuthcryptMessageInputSignatureSchemeEnum? get signatureScheme;
  // enum signatureSchemeEnum {  ecdsa_secp256k1_sha256,  ecdsa_p256_sha256,  ed25519,  };

  AuthcryptMessageInput._();

  factory AuthcryptMessageInput(
      [void updates(AuthcryptMessageInputBuilder b)]) = _$AuthcryptMessageInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthcryptMessageInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthcryptMessageInput> get serializer =>
      _$AuthcryptMessageInputSerializer();
}

class _$AuthcryptMessageInputSerializer
    implements PrimitiveSerializer<AuthcryptMessageInput> {
  @override
  final Iterable<Type> types = const [
    AuthcryptMessageInput,
    _$AuthcryptMessageInput
  ];

  @override
  final String wireName = r'AuthcryptMessageInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthcryptMessageInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'plainTextMessage';
    yield serializers.serialize(
      object.plainTextMessage,
      specifiedType: const FullType(JsonObject),
    );
    if (object.signatureScheme != null) {
      yield r'signatureScheme';
      yield serializers.serialize(
        object.signatureScheme,
        specifiedType: const FullType(AuthcryptMessageInputSignatureSchemeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthcryptMessageInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthcryptMessageInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'plainTextMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.plainTextMessage = valueDes;
          break;
        case r'signatureScheme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(AuthcryptMessageInputSignatureSchemeEnum),
          ) as AuthcryptMessageInputSignatureSchemeEnum;
          result.signatureScheme = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthcryptMessageInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthcryptMessageInputBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class AuthcryptMessageInputSignatureSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ecdsa_secp256k1_sha256')
  static const AuthcryptMessageInputSignatureSchemeEnum ecdsaSecp256k1Sha256 =
      _$authcryptMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256;
  @BuiltValueEnumConst(wireName: r'ecdsa_p256_sha256')
  static const AuthcryptMessageInputSignatureSchemeEnum ecdsaP256Sha256 =
      _$authcryptMessageInputSignatureSchemeEnum_ecdsaP256Sha256;
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const AuthcryptMessageInputSignatureSchemeEnum ed25519 =
      _$authcryptMessageInputSignatureSchemeEnum_ed25519;

  static Serializer<AuthcryptMessageInputSignatureSchemeEnum> get serializer =>
      _$authcryptMessageInputSignatureSchemeEnumSerializer;

  const AuthcryptMessageInputSignatureSchemeEnum._(String name) : super(name);

  static BuiltSet<AuthcryptMessageInputSignatureSchemeEnum> get values =>
      _$authcryptMessageInputSignatureSchemeEnumValues;
  static AuthcryptMessageInputSignatureSchemeEnum valueOf(String name) =>
      _$authcryptMessageInputSignatureSchemeEnumValueOf(name);
}
