//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_ldp_input_dto.g.dart';

/// DTO contains params to sign credential
///
/// Properties:
/// * [unsignedCredential] - Unsigned Credential in Dm2 format
/// * [revocable]
/// * [signatureScheme]
/// * [signatureSuite] - W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
@BuiltValue()
abstract class SignCredentialsLdpInputDto
    implements
        Built<SignCredentialsLdpInputDto, SignCredentialsLdpInputDtoBuilder> {
  /// Unsigned Credential in Dm2 format
  @BuiltValueField(wireName: r'unsignedCredential')
  JsonObject get unsignedCredential;

  @BuiltValueField(wireName: r'revocable')
  bool? get revocable;

  @BuiltValueField(wireName: r'signatureScheme')
  SignCredentialsLdpInputDtoSignatureSchemeEnum? get signatureScheme;
  // enum signatureSchemeEnum {  ecdsa_secp256k1_sha256,  ecdsa_p256_sha256,  ed25519,  };

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueField(wireName: r'signatureSuite')
  SignCredentialsLdpInputDtoSignatureSuiteEnum? get signatureSuite;
  // enum signatureSuiteEnum {  ecdsa-jcs-2019,  ecdsa-rdfc-2019,  eddsa-jcs-2022,  eddsa-rdfc-2022,  EcdsaSecp256k1Signature2019,  };

  SignCredentialsLdpInputDto._();

  factory SignCredentialsLdpInputDto(
          [void updates(SignCredentialsLdpInputDtoBuilder b)]) =
      _$SignCredentialsLdpInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsLdpInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsLdpInputDto> get serializer =>
      _$SignCredentialsLdpInputDtoSerializer();
}

class _$SignCredentialsLdpInputDtoSerializer
    implements PrimitiveSerializer<SignCredentialsLdpInputDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsLdpInputDto,
    _$SignCredentialsLdpInputDto
  ];

  @override
  final String wireName = r'SignCredentialsLdpInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsLdpInputDto object, {
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
            const FullType(SignCredentialsLdpInputDtoSignatureSchemeEnum),
      );
    }
    if (object.signatureSuite != null) {
      yield r'signatureSuite';
      yield serializers.serialize(
        object.signatureSuite,
        specifiedType:
            const FullType(SignCredentialsLdpInputDtoSignatureSuiteEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsLdpInputDto object, {
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
    required SignCredentialsLdpInputDtoBuilder result,
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
                const FullType(SignCredentialsLdpInputDtoSignatureSchemeEnum),
          ) as SignCredentialsLdpInputDtoSignatureSchemeEnum;
          result.signatureScheme = valueDes;
          break;
        case r'signatureSuite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SignCredentialsLdpInputDtoSignatureSuiteEnum),
          ) as SignCredentialsLdpInputDtoSignatureSuiteEnum;
          result.signatureSuite = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialsLdpInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsLdpInputDtoBuilder();
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

class SignCredentialsLdpInputDtoSignatureSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ecdsa_secp256k1_sha256')
  static const SignCredentialsLdpInputDtoSignatureSchemeEnum
      ecdsaSecp256k1Sha256 =
      _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
  @BuiltValueEnumConst(wireName: r'ecdsa_p256_sha256')
  static const SignCredentialsLdpInputDtoSignatureSchemeEnum ecdsaP256Sha256 =
      _$signCredentialsLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const SignCredentialsLdpInputDtoSignatureSchemeEnum ed25519 =
      _$signCredentialsLdpInputDtoSignatureSchemeEnum_ed25519;

  static Serializer<SignCredentialsLdpInputDtoSignatureSchemeEnum>
      get serializer =>
          _$signCredentialsLdpInputDtoSignatureSchemeEnumSerializer;

  const SignCredentialsLdpInputDtoSignatureSchemeEnum._(String name)
      : super(name);

  static BuiltSet<SignCredentialsLdpInputDtoSignatureSchemeEnum> get values =>
      _$signCredentialsLdpInputDtoSignatureSchemeEnumValues;
  static SignCredentialsLdpInputDtoSignatureSchemeEnum valueOf(String name) =>
      _$signCredentialsLdpInputDtoSignatureSchemeEnumValueOf(name);
}

class SignCredentialsLdpInputDtoSignatureSuiteEnum extends EnumClass {
  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'ecdsa-jcs-2019')
  static const SignCredentialsLdpInputDtoSignatureSuiteEnum ecdsaJcs2019 =
      _$signCredentialsLdpInputDtoSignatureSuiteEnum_ecdsaJcs2019;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'ecdsa-rdfc-2019')
  static const SignCredentialsLdpInputDtoSignatureSuiteEnum ecdsaRdfc2019 =
      _$signCredentialsLdpInputDtoSignatureSuiteEnum_ecdsaRdfc2019;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'eddsa-jcs-2022')
  static const SignCredentialsLdpInputDtoSignatureSuiteEnum eddsaJcs2022 =
      _$signCredentialsLdpInputDtoSignatureSuiteEnum_eddsaJcs2022;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'eddsa-rdfc-2022')
  static const SignCredentialsLdpInputDtoSignatureSuiteEnum eddsaRdfc2022 =
      _$signCredentialsLdpInputDtoSignatureSuiteEnum_eddsaRdfc2022;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'EcdsaSecp256k1Signature2019')
  static const SignCredentialsLdpInputDtoSignatureSuiteEnum
      ecdsaSecp256k1Signature2019 =
      _$signCredentialsLdpInputDtoSignatureSuiteEnum_ecdsaSecp256k1Signature2019;

  static Serializer<SignCredentialsLdpInputDtoSignatureSuiteEnum>
      get serializer =>
          _$signCredentialsLdpInputDtoSignatureSuiteEnumSerializer;

  const SignCredentialsLdpInputDtoSignatureSuiteEnum._(String name)
      : super(name);

  static BuiltSet<SignCredentialsLdpInputDtoSignatureSuiteEnum> get values =>
      _$signCredentialsLdpInputDtoSignatureSuiteEnumValues;
  static SignCredentialsLdpInputDtoSignatureSuiteEnum valueOf(String name) =>
      _$signCredentialsLdpInputDtoSignatureSuiteEnumValueOf(name);
}
