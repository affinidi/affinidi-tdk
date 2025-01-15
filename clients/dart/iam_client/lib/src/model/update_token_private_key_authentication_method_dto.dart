//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_token_private_key_authentication_method_dto.g.dart';

/// Private Key JWT Authentication of Client with `private_key_jwt` oAuth Method
///
/// Properties:
/// * [type] 
/// * [signingAlgorithm] 
/// * [publicKeyInfo] 
@BuiltValue()
abstract class UpdateTokenPrivateKeyAuthenticationMethodDto implements Built<UpdateTokenPrivateKeyAuthenticationMethodDto, UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder> {
  @BuiltValueField(wireName: r'type')
  UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? get type;
  // enum typeEnum {  PRIVATE_KEY,  };

  @BuiltValueField(wireName: r'signingAlgorithm')
  UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? get signingAlgorithm;
  // enum signingAlgorithmEnum {  RS256,  RS512,  ES256,  ES512,  };

  @BuiltValueField(wireName: r'publicKeyInfo')
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo? get publicKeyInfo;

  UpdateTokenPrivateKeyAuthenticationMethodDto._();

  factory UpdateTokenPrivateKeyAuthenticationMethodDto([void updates(UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder b)]) = _$UpdateTokenPrivateKeyAuthenticationMethodDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTokenPrivateKeyAuthenticationMethodDto> get serializer => _$UpdateTokenPrivateKeyAuthenticationMethodDtoSerializer();
}

class _$UpdateTokenPrivateKeyAuthenticationMethodDtoSerializer implements PrimitiveSerializer<UpdateTokenPrivateKeyAuthenticationMethodDto> {
  @override
  final Iterable<Type> types = const [UpdateTokenPrivateKeyAuthenticationMethodDto, _$UpdateTokenPrivateKeyAuthenticationMethodDto];

  @override
  final String wireName = r'UpdateTokenPrivateKeyAuthenticationMethodDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTokenPrivateKeyAuthenticationMethodDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum),
      );
    }
    if (object.signingAlgorithm != null) {
      yield r'signingAlgorithm';
      yield serializers.serialize(
        object.signingAlgorithm,
        specifiedType: const FullType(UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum),
      );
    }
    if (object.publicKeyInfo != null) {
      yield r'publicKeyInfo';
      yield serializers.serialize(
        object.publicKeyInfo,
        specifiedType: const FullType(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTokenPrivateKeyAuthenticationMethodDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum),
          ) as UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'signingAlgorithm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum),
          ) as UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum;
          result.signingAlgorithm = valueDes;
          break;
        case r'publicKeyInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo),
          ) as TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo;
          result.publicKeyInfo.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTokenPrivateKeyAuthenticationMethodDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTokenPrivateKeyAuthenticationMethodDtoBuilder();
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

class UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PRIVATE_KEY')
  static const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum PRIVATE_KEY = _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY;

  static Serializer<UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum> get serializer => _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer;

  const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum._(String name): super(name);

  static BuiltSet<UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum> get values => _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnumValues;
  static UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum valueOf(String name) => _$updateTokenPrivateKeyAuthenticationMethodDtoTypeEnumValueOf(name);
}

class UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RS256')
  static const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum rS256 = _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256;
  @BuiltValueEnumConst(wireName: r'RS512')
  static const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum rS512 = _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512;
  @BuiltValueEnumConst(wireName: r'ES256')
  static const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum eS256 = _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256;
  @BuiltValueEnumConst(wireName: r'ES512')
  static const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum eS512 = _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512;

  static Serializer<UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum> get serializer => _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer;

  const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(String name): super(name);

  static BuiltSet<UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum> get values => _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValues;
  static UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum valueOf(String name) => _$updateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValueOf(name);
}

