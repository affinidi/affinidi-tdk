//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_presentation_ldp_input_dto.g.dart';

/// DTO contains params to sign presentation
///
/// Properties:
/// * [unsignedPresentation] - Unsigned presentation in Dm1 format
/// * [signatureScheme]
/// * [signatureSuite] - W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
/// * [domain] - Domain(s) for which the presentation is intended
/// * [challenge] - Challenge string
@BuiltValue()
abstract class SignPresentationLdpInputDto
    implements
        Built<SignPresentationLdpInputDto, SignPresentationLdpInputDtoBuilder> {
  /// Unsigned presentation in Dm1 format
  @BuiltValueField(wireName: r'unsignedPresentation')
  JsonObject get unsignedPresentation;

  @BuiltValueField(wireName: r'signatureScheme')
  SignPresentationLdpInputDtoSignatureSchemeEnum? get signatureScheme;
  // enum signatureSchemeEnum {  ecdsa_secp256k1_sha256,  ecdsa_p256_sha256,  ed25519,  };

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueField(wireName: r'signatureSuite')
  SignPresentationLdpInputDtoSignatureSuiteEnum? get signatureSuite;
  // enum signatureSuiteEnum {  ecdsa-jcs-2019,  ecdsa-rdfc-2019,  eddsa-jcs-2022,  eddsa-rdfc-2022,  EcdsaSecp256k1Signature2019,  };

  /// Domain(s) for which the presentation is intended
  @BuiltValueField(wireName: r'domain')
  BuiltList<String>? get domain;

  /// Challenge string
  @BuiltValueField(wireName: r'challenge')
  String? get challenge;

  SignPresentationLdpInputDto._();

  factory SignPresentationLdpInputDto(
          [void updates(SignPresentationLdpInputDtoBuilder b)]) =
      _$SignPresentationLdpInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignPresentationLdpInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignPresentationLdpInputDto> get serializer =>
      _$SignPresentationLdpInputDtoSerializer();
}

class _$SignPresentationLdpInputDtoSerializer
    implements PrimitiveSerializer<SignPresentationLdpInputDto> {
  @override
  final Iterable<Type> types = const [
    SignPresentationLdpInputDto,
    _$SignPresentationLdpInputDto
  ];

  @override
  final String wireName = r'SignPresentationLdpInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignPresentationLdpInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unsignedPresentation';
    yield serializers.serialize(
      object.unsignedPresentation,
      specifiedType: const FullType(JsonObject),
    );
    if (object.signatureScheme != null) {
      yield r'signatureScheme';
      yield serializers.serialize(
        object.signatureScheme,
        specifiedType:
            const FullType(SignPresentationLdpInputDtoSignatureSchemeEnum),
      );
    }
    if (object.signatureSuite != null) {
      yield r'signatureSuite';
      yield serializers.serialize(
        object.signatureSuite,
        specifiedType:
            const FullType(SignPresentationLdpInputDtoSignatureSuiteEnum),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.challenge != null) {
      yield r'challenge';
      yield serializers.serialize(
        object.challenge,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignPresentationLdpInputDto object, {
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
    required SignPresentationLdpInputDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unsignedPresentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.unsignedPresentation = valueDes;
          break;
        case r'signatureScheme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SignPresentationLdpInputDtoSignatureSchemeEnum),
          ) as SignPresentationLdpInputDtoSignatureSchemeEnum;
          result.signatureScheme = valueDes;
          break;
        case r'signatureSuite':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(SignPresentationLdpInputDtoSignatureSuiteEnum),
          ) as SignPresentationLdpInputDtoSignatureSuiteEnum;
          result.signatureSuite = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.domain.replace(valueDes);
          break;
        case r'challenge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.challenge = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignPresentationLdpInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignPresentationLdpInputDtoBuilder();
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

class SignPresentationLdpInputDtoSignatureSchemeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ecdsa_secp256k1_sha256')
  static const SignPresentationLdpInputDtoSignatureSchemeEnum
      ecdsaSecp256k1Sha256 =
      _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaSecp256k1Sha256;
  @BuiltValueEnumConst(wireName: r'ecdsa_p256_sha256')
  static const SignPresentationLdpInputDtoSignatureSchemeEnum ecdsaP256Sha256 =
      _$signPresentationLdpInputDtoSignatureSchemeEnum_ecdsaP256Sha256;
  @BuiltValueEnumConst(wireName: r'ed25519')
  static const SignPresentationLdpInputDtoSignatureSchemeEnum ed25519 =
      _$signPresentationLdpInputDtoSignatureSchemeEnum_ed25519;

  static Serializer<SignPresentationLdpInputDtoSignatureSchemeEnum>
      get serializer =>
          _$signPresentationLdpInputDtoSignatureSchemeEnumSerializer;

  const SignPresentationLdpInputDtoSignatureSchemeEnum._(String name)
      : super(name);

  static BuiltSet<SignPresentationLdpInputDtoSignatureSchemeEnum> get values =>
      _$signPresentationLdpInputDtoSignatureSchemeEnumValues;
  static SignPresentationLdpInputDtoSignatureSchemeEnum valueOf(String name) =>
      _$signPresentationLdpInputDtoSignatureSchemeEnumValueOf(name);
}

class SignPresentationLdpInputDtoSignatureSuiteEnum extends EnumClass {
  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'ecdsa-jcs-2019')
  static const SignPresentationLdpInputDtoSignatureSuiteEnum ecdsaJcs2019 =
      _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaJcs2019;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'ecdsa-rdfc-2019')
  static const SignPresentationLdpInputDtoSignatureSuiteEnum ecdsaRdfc2019 =
      _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaRdfc2019;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'eddsa-jcs-2022')
  static const SignPresentationLdpInputDtoSignatureSuiteEnum eddsaJcs2022 =
      _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaJcs2022;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'eddsa-rdfc-2022')
  static const SignPresentationLdpInputDtoSignatureSuiteEnum eddsaRdfc2022 =
      _$signPresentationLdpInputDtoSignatureSuiteEnum_eddsaRdfc2022;

  /// W3C signature suite for canonicalization. Defaults to rdfc variants for each algorithm (ecdsa-rdfc-2019 for P256, eddsa-rdfc-2022 for Ed25519, EcdsaSecp256k1Signature2019 for secp256k1).
  @BuiltValueEnumConst(wireName: r'EcdsaSecp256k1Signature2019')
  static const SignPresentationLdpInputDtoSignatureSuiteEnum
      ecdsaSecp256k1Signature2019 =
      _$signPresentationLdpInputDtoSignatureSuiteEnum_ecdsaSecp256k1Signature2019;

  static Serializer<SignPresentationLdpInputDtoSignatureSuiteEnum>
      get serializer =>
          _$signPresentationLdpInputDtoSignatureSuiteEnumSerializer;

  const SignPresentationLdpInputDtoSignatureSuiteEnum._(String name)
      : super(name);

  static BuiltSet<SignPresentationLdpInputDtoSignatureSuiteEnum> get values =>
      _$signPresentationLdpInputDtoSignatureSuiteEnumValues;
  static SignPresentationLdpInputDtoSignatureSuiteEnum valueOf(String name) =>
      _$signPresentationLdpInputDtoSignatureSuiteEnumValueOf(name);
}
