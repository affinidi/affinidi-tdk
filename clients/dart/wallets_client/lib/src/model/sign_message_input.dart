//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_message_input.g.dart';

/// DTO contains params to sign plain text DIDComm message
///
/// Properties:
/// * [plainTextMessage] - Unsigned plain text DIDComm message
/// * [signatureScheme]
@BuiltValue()
abstract class SignMessageInput
    implements Built<SignMessageInput, SignMessageInputBuilder> {
  /// Unsigned plain text DIDComm message
  @BuiltValueField(wireName: r'plainTextMessage')
  JsonObject get plainTextMessage;

  @BuiltValueField(wireName: r'signatureScheme')
  SignMessageInputSignatureSchemeEnum? get signatureScheme;
  // enum signatureSchemeEnum {  ecdsa_secp256k1_sha256,  ecdsa_p256_sha256,  ed25519,  };

  SignMessageInput._();

  factory SignMessageInput([void updates(SignMessageInputBuilder b)]) =
      _$SignMessageInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignMessageInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignMessageInput> get serializer =>
      _$SignMessageInputSerializer();
}

class _$SignMessageInputSerializer
    implements PrimitiveSerializer<SignMessageInput> {
  @override
  final Iterable<Type> types = const [SignMessageInput, _$SignMessageInput];

  @override
  final String wireName = r'SignMessageInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignMessageInput object, {
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
        specifiedType: const FullType(SignMessageInputSignatureSchemeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignMessageInput object, {
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
    required SignMessageInputBuilder result,
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
            specifiedType: const FullType(SignMessageInputSignatureSchemeEnum),
          ) as SignMessageInputSignatureSchemeEnum;
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
  SignMessageInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignMessageInputBuilder();
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

class SignMessageInputSignatureSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ecdsa_secp256k1_sha256')
  static const SignMessageInputSignatureSchemeEnum ecdsaSecp256k1Sha256 =
      _$signMessageInputSignatureSchemeEnum_ecdsaSecp256k1Sha256;
  @BuiltValueEnumConst(wireName: r'ecdsa_p256_sha256')
  static const SignMessageInputSignatureSchemeEnum ecdsaP256Sha256 =
      _$signMessageInputSignatureSchemeEnum_ecdsaP256Sha256;
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const SignMessageInputSignatureSchemeEnum ed25519 =
      _$signMessageInputSignatureSchemeEnum_ed25519;

  static Serializer<SignMessageInputSignatureSchemeEnum> get serializer =>
      _$signMessageInputSignatureSchemeEnumSerializer;

  const SignMessageInputSignatureSchemeEnum._(String name) : super(name);

  static BuiltSet<SignMessageInputSignatureSchemeEnum> get values =>
      _$signMessageInputSignatureSchemeEnumValues;
  static SignMessageInputSignatureSchemeEnum valueOf(String name) =>
      _$signMessageInputSignatureSchemeEnumValueOf(name);
}
