//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/sign_credential_input_dto_unsigned_credential_params.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credential_input_dto.g.dart';

/// DTO contains params to sign credential
///
/// Properties:
/// * [unsignedCredential] - Unsigned Credential. If provided \"unsignedCredentialParams\" is not accepted
/// * [revocable] 
/// * [credentialFormat] 
/// * [unsignedCredentialParams] 
@BuiltValue()
abstract class SignCredentialInputDto implements Built<SignCredentialInputDto, SignCredentialInputDtoBuilder> {
  /// Unsigned Credential. If provided \"unsignedCredentialParams\" is not accepted
  @BuiltValueField(wireName: r'unsignedCredential')
  JsonObject? get unsignedCredential;

  @BuiltValueField(wireName: r'revocable')
  bool? get revocable;

  @BuiltValueField(wireName: r'credentialFormat')
  SignCredentialInputDtoCredentialFormatEnum? get credentialFormat;
  // enum credentialFormatEnum {  ldp_vc,  jwt_vc_json-ld,  sd_jwt_vc_json-ld,  };

  @BuiltValueField(wireName: r'unsignedCredentialParams')
  SignCredentialInputDtoUnsignedCredentialParams? get unsignedCredentialParams;

  SignCredentialInputDto._();

  factory SignCredentialInputDto([void updates(SignCredentialInputDtoBuilder b)]) = _$SignCredentialInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialInputDto> get serializer => _$SignCredentialInputDtoSerializer();
}

class _$SignCredentialInputDtoSerializer implements PrimitiveSerializer<SignCredentialInputDto> {
  @override
  final Iterable<Type> types = const [SignCredentialInputDto, _$SignCredentialInputDto];

  @override
  final String wireName = r'SignCredentialInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.unsignedCredential != null) {
      yield r'unsignedCredential';
      yield serializers.serialize(
        object.unsignedCredential,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.revocable != null) {
      yield r'revocable';
      yield serializers.serialize(
        object.revocable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.credentialFormat != null) {
      yield r'credentialFormat';
      yield serializers.serialize(
        object.credentialFormat,
        specifiedType: const FullType(SignCredentialInputDtoCredentialFormatEnum),
      );
    }
    if (object.unsignedCredentialParams != null) {
      yield r'unsignedCredentialParams';
      yield serializers.serialize(
        object.unsignedCredentialParams,
        specifiedType: const FullType(SignCredentialInputDtoUnsignedCredentialParams),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignCredentialInputDtoBuilder result,
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
        case r'credentialFormat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SignCredentialInputDtoCredentialFormatEnum),
          ) as SignCredentialInputDtoCredentialFormatEnum;
          result.credentialFormat = valueDes;
          break;
        case r'unsignedCredentialParams':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SignCredentialInputDtoUnsignedCredentialParams),
          ) as SignCredentialInputDtoUnsignedCredentialParams;
          result.unsignedCredentialParams.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialInputDtoBuilder();
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

class SignCredentialInputDtoCredentialFormatEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ldp_vc')
  static const SignCredentialInputDtoCredentialFormatEnum ldpVc = _$signCredentialInputDtoCredentialFormatEnum_ldpVc;
  @BuiltValueEnumConst(wireName: r'jwt_vc_json-ld')
  static const SignCredentialInputDtoCredentialFormatEnum jwtVcJsonLd = _$signCredentialInputDtoCredentialFormatEnum_jwtVcJsonLd;
  @BuiltValueEnumConst(wireName: r'sd_jwt_vc_json-ld')
  static const SignCredentialInputDtoCredentialFormatEnum sdJwtVcJsonLd = _$signCredentialInputDtoCredentialFormatEnum_sdJwtVcJsonLd;

  static Serializer<SignCredentialInputDtoCredentialFormatEnum> get serializer => _$signCredentialInputDtoCredentialFormatEnumSerializer;

  const SignCredentialInputDtoCredentialFormatEnum._(String name): super(name);

  static BuiltSet<SignCredentialInputDtoCredentialFormatEnum> get values => _$signCredentialInputDtoCredentialFormatEnumValues;
  static SignCredentialInputDtoCredentialFormatEnum valueOf(String name) => _$signCredentialInputDtoCredentialFormatEnumValueOf(name);
}

