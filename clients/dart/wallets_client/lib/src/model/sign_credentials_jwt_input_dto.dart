//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_jwt_input_dto.g.dart';

/// DTO contains params to sign credential
///
/// Properties:
/// * [unsignedCredential] - Unsigned Credential in Dm1 format
/// * [revocable]
/// * [signatureScheme]
@BuiltValue()
abstract class SignCredentialsJwtInputDto
    implements
        Built<SignCredentialsJwtInputDto, SignCredentialsJwtInputDtoBuilder> {
  /// Unsigned Credential in Dm1 format
  @BuiltValueField(wireName: r'unsignedCredential')
  JsonObject get unsignedCredential;

  @BuiltValueField(wireName: r'revocable')
  bool? get revocable;

  @BuiltValueField(wireName: r'signatureScheme')
  SignCredentialsJwtInputDtoSignatureSchemeEnum? get signatureScheme;
  // enum signatureSchemeEnum {  ecdsa_secp256k1_sha256,  ecdsa_p256_sha256,  ed25519,  };

  SignCredentialsJwtInputDto._();

  factory SignCredentialsJwtInputDto(
          [void updates(SignCredentialsJwtInputDtoBuilder b)]) =
      _$SignCredentialsJwtInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsJwtInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsJwtInputDto> get serializer =>
      _$SignCredentialsJwtInputDtoSerializer();
}

class _$SignCredentialsJwtInputDtoSerializer
    implements PrimitiveSerializer<SignCredentialsJwtInputDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsJwtInputDto,
    _$SignCredentialsJwtInputDto
  ];

  @override
  final String wireName = r'SignCredentialsJwtInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsJwtInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unsignedCredential';
    yield serializers.serialize(
      object.unsignedCredential,
      specifiedType: const FullType(JsonObject),
    );
    if (object.revocable != null) {
      yield r'revocable';
      yield serializers.serialize(
        object.revocable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.signatureScheme != null) {
      yield r'signatureScheme';
      yield serializers.serialize(
        object.signatureScheme,
        specifiedType:
            const FullType(SignCredentialsJwtInputDtoSignatureSchemeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsJwtInputDto object, {
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
    required SignCredentialsJwtInputDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unsignedCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.unsignedCredential = valueDes;
          break;
        case r'revocable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.revocable = valueDes;
          break;
        case r'signatureScheme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SignCredentialsJwtInputDtoSignatureSchemeEnum),
          ) as SignCredentialsJwtInputDtoSignatureSchemeEnum;
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
  SignCredentialsJwtInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsJwtInputDtoBuilder();
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

class SignCredentialsJwtInputDtoSignatureSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ecdsa_secp256k1_sha256')
  static const SignCredentialsJwtInputDtoSignatureSchemeEnum
      ecdsaSecp256k1Sha256 =
      _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
  @BuiltValueEnumConst(wireName: r'ecdsa_p256_sha256')
  static const SignCredentialsJwtInputDtoSignatureSchemeEnum ecdsaP256Sha256 =
      _$signCredentialsJwtInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const SignCredentialsJwtInputDtoSignatureSchemeEnum ed25519 =
      _$signCredentialsJwtInputDtoSignatureSchemeEnum_ed25519;

  static Serializer<SignCredentialsJwtInputDtoSignatureSchemeEnum>
      get serializer =>
          _$signCredentialsJwtInputDtoSignatureSchemeEnumSerializer;

  const SignCredentialsJwtInputDtoSignatureSchemeEnum._(String name)
      : super(name);

  static BuiltSet<SignCredentialsJwtInputDtoSignatureSchemeEnum> get values =>
      _$signCredentialsJwtInputDtoSignatureSchemeEnumValues;
  static SignCredentialsJwtInputDtoSignatureSchemeEnum valueOf(String name) =>
      _$signCredentialsJwtInputDtoSignatureSchemeEnumValueOf(name);
}
