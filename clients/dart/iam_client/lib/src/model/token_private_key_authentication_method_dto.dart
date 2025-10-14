//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_private_key_authentication_method_dto.g.dart';

/// Private Key JWT Authentication of Client with `private_key_jwt` oAuth Method
///
/// Properties:
/// * [type]
/// * [signingAlgorithm]
/// * [publicKeyInfo]
@BuiltValue()
abstract class TokenPrivateKeyAuthenticationMethodDto
    implements
        Built<TokenPrivateKeyAuthenticationMethodDto,
            TokenPrivateKeyAuthenticationMethodDtoBuilder> {
  @BuiltValueField(wireName: r'type')
  TokenPrivateKeyAuthenticationMethodDtoTypeEnum get type;
  // enum typeEnum {  PRIVATE_KEY,  };

  @BuiltValueField(wireName: r'signingAlgorithm')
  TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
      get signingAlgorithm;
  // enum signingAlgorithmEnum {  RS256,  RS512,  ES256,  ES512,  };

  @BuiltValueField(wireName: r'publicKeyInfo')
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo get publicKeyInfo;

  TokenPrivateKeyAuthenticationMethodDto._();

  factory TokenPrivateKeyAuthenticationMethodDto(
          [void updates(TokenPrivateKeyAuthenticationMethodDtoBuilder b)]) =
      _$TokenPrivateKeyAuthenticationMethodDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenPrivateKeyAuthenticationMethodDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPrivateKeyAuthenticationMethodDto> get serializer =>
      _$TokenPrivateKeyAuthenticationMethodDtoSerializer();
}

class _$TokenPrivateKeyAuthenticationMethodDtoSerializer
    implements PrimitiveSerializer<TokenPrivateKeyAuthenticationMethodDto> {
  @override
  final Iterable<Type> types = const [
    TokenPrivateKeyAuthenticationMethodDto,
    _$TokenPrivateKeyAuthenticationMethodDto
  ];

  @override
  final String wireName = r'TokenPrivateKeyAuthenticationMethodDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType:
          const FullType(TokenPrivateKeyAuthenticationMethodDtoTypeEnum),
    );
    yield r'signingAlgorithm';
    yield serializers.serialize(
      object.signingAlgorithm,
      specifiedType: const FullType(
          TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum),
    );
    yield r'publicKeyInfo';
    yield serializers.serialize(
      object.publicKeyInfo,
      specifiedType:
          const FullType(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDto object, {
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
    required TokenPrivateKeyAuthenticationMethodDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(TokenPrivateKeyAuthenticationMethodDtoTypeEnum),
          ) as TokenPrivateKeyAuthenticationMethodDtoTypeEnum;
          result.type = valueDes;
          break;
        case r'signingAlgorithm':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum),
          ) as TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum;
          result.signingAlgorithm = valueDes;
          break;
        case r'publicKeyInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo),
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
  TokenPrivateKeyAuthenticationMethodDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPrivateKeyAuthenticationMethodDtoBuilder();
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

class TokenPrivateKeyAuthenticationMethodDtoTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PRIVATE_KEY')
  static const TokenPrivateKeyAuthenticationMethodDtoTypeEnum PRIVATE_KEY =
      _$tokenPrivateKeyAuthenticationMethodDtoTypeEnum_PRIVATE_KEY;

  static Serializer<TokenPrivateKeyAuthenticationMethodDtoTypeEnum>
      get serializer =>
          _$tokenPrivateKeyAuthenticationMethodDtoTypeEnumSerializer;

  const TokenPrivateKeyAuthenticationMethodDtoTypeEnum._(String name)
      : super(name);

  static BuiltSet<TokenPrivateKeyAuthenticationMethodDtoTypeEnum> get values =>
      _$tokenPrivateKeyAuthenticationMethodDtoTypeEnumValues;
  static TokenPrivateKeyAuthenticationMethodDtoTypeEnum valueOf(String name) =>
      _$tokenPrivateKeyAuthenticationMethodDtoTypeEnumValueOf(name);
}

class TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
    extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RS256')
  static const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
      rS256 =
      _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS256;
  @BuiltValueEnumConst(wireName: r'RS512')
  static const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
      rS512 =
      _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_rS512;
  @BuiltValueEnumConst(wireName: r'ES256')
  static const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
      eS256 =
      _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS256;
  @BuiltValueEnumConst(wireName: r'ES512')
  static const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum
      eS512 =
      _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum_eS512;

  static Serializer<TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>
      get serializer =>
          _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumSerializer;

  const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(
      String name)
      : super(name);

  static BuiltSet<TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>
      get values =>
          _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValues;
  static TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum valueOf(
          String name) =>
      _$tokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumValueOf(name);
}
