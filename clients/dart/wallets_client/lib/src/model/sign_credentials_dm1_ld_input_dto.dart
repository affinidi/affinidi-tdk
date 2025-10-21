//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm1_ld_input_dto.g.dart';

/// DTO contains params to sign credential
///
/// Properties:
/// * [unsignedCredential] - Unsigned Credential in Dm1 format
/// * [revocable]
/// * [signatureScheme]
@BuiltValue()
abstract class SignCredentialsDm1LdInputDto
    implements
        Built<SignCredentialsDm1LdInputDto,
            SignCredentialsDm1LdInputDtoBuilder> {
  /// Unsigned Credential in Dm1 format
  @BuiltValueField(wireName: r'unsignedCredential')
  JsonObject get unsignedCredential;

  @BuiltValueField(wireName: r'revocable')
  bool? get revocable;

  @BuiltValueField(wireName: r'signatureScheme')
  SignCredentialsDm1LdInputDtoSignatureSchemeEnum? get signatureScheme;
  // enum signatureSchemeEnum {  ecdsa_secp256k1_sha256,  ecdsa_p256_sha256,  ed25519,  };

  SignCredentialsDm1LdInputDto._();

  factory SignCredentialsDm1LdInputDto(
          [void updates(SignCredentialsDm1LdInputDtoBuilder b)]) =
      _$SignCredentialsDm1LdInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm1LdInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm1LdInputDto> get serializer =>
      _$SignCredentialsDm1LdInputDtoSerializer();
}

class _$SignCredentialsDm1LdInputDtoSerializer
    implements PrimitiveSerializer<SignCredentialsDm1LdInputDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsDm1LdInputDto,
    _$SignCredentialsDm1LdInputDto
  ];

  @override
  final String wireName = r'SignCredentialsDm1LdInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm1LdInputDto object, {
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
            const FullType(SignCredentialsDm1LdInputDtoSignatureSchemeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsDm1LdInputDto object, {
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
    required SignCredentialsDm1LdInputDtoBuilder result,
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
                const FullType(SignCredentialsDm1LdInputDtoSignatureSchemeEnum),
          ) as SignCredentialsDm1LdInputDtoSignatureSchemeEnum;
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
  SignCredentialsDm1LdInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm1LdInputDtoBuilder();
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

class SignCredentialsDm1LdInputDtoSignatureSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ecdsa_secp256k1_sha256')
  static const SignCredentialsDm1LdInputDtoSignatureSchemeEnum
      ecdsaSecp256k1Sha256 =
      _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
  @BuiltValueEnumConst(wireName: r'ecdsa_p256_sha256')
  static const SignCredentialsDm1LdInputDtoSignatureSchemeEnum ecdsaP256Sha256 =
      _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const SignCredentialsDm1LdInputDtoSignatureSchemeEnum ed25519 =
      _$signCredentialsDm1LdInputDtoSignatureSchemeEnum_ed25519;

  static Serializer<SignCredentialsDm1LdInputDtoSignatureSchemeEnum>
      get serializer =>
          _$signCredentialsDm1LdInputDtoSignatureSchemeEnumSerializer;

  const SignCredentialsDm1LdInputDtoSignatureSchemeEnum._(String name)
      : super(name);

  static BuiltSet<SignCredentialsDm1LdInputDtoSignatureSchemeEnum> get values =>
      _$signCredentialsDm1LdInputDtoSignatureSchemeEnumValues;
  static SignCredentialsDm1LdInputDtoSignatureSchemeEnum valueOf(String name) =>
      _$signCredentialsDm1LdInputDtoSignatureSchemeEnumValueOf(name);
}
