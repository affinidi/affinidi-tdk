//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'token_authentication_method_dto.g.dart';

/// How the Token will be authenticate against our Authorization Server
///
/// Properties:
/// * [type] 
/// * [signingAlgorithm] 
/// * [publicKeyInfo] 
@BuiltValue()
abstract class TokenAuthenticationMethodDto implements Built<TokenAuthenticationMethodDto, TokenAuthenticationMethodDtoBuilder> {
  /// One Of [TokenPrivateKeyAuthenticationMethodDto]
  OneOf get oneOf;

  TokenAuthenticationMethodDto._();

  factory TokenAuthenticationMethodDto([void updates(TokenAuthenticationMethodDtoBuilder b)]) = _$TokenAuthenticationMethodDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenAuthenticationMethodDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenAuthenticationMethodDto> get serializer => _$TokenAuthenticationMethodDtoSerializer();
}

class _$TokenAuthenticationMethodDtoSerializer implements PrimitiveSerializer<TokenAuthenticationMethodDto> {
  @override
  final Iterable<Type> types = const [TokenAuthenticationMethodDto, _$TokenAuthenticationMethodDto];

  @override
  final String wireName = r'TokenAuthenticationMethodDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenAuthenticationMethodDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenAuthenticationMethodDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  TokenAuthenticationMethodDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenAuthenticationMethodDtoBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(TokenPrivateKeyAuthenticationMethodDto), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class TokenAuthenticationMethodDtoTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PRIVATE_KEY')
  static const TokenAuthenticationMethodDtoTypeEnum PRIVATE_KEY = _$tokenAuthenticationMethodDtoTypeEnum_PRIVATE_KEY;

  static Serializer<TokenAuthenticationMethodDtoTypeEnum> get serializer => _$tokenAuthenticationMethodDtoTypeEnumSerializer;

  const TokenAuthenticationMethodDtoTypeEnum._(String name): super(name);

  static BuiltSet<TokenAuthenticationMethodDtoTypeEnum> get values => _$tokenAuthenticationMethodDtoTypeEnumValues;
  static TokenAuthenticationMethodDtoTypeEnum valueOf(String name) => _$tokenAuthenticationMethodDtoTypeEnumValueOf(name);
}

class TokenAuthenticationMethodDtoSigningAlgorithmEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RS256')
  static const TokenAuthenticationMethodDtoSigningAlgorithmEnum rS256 = _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS256;
  @BuiltValueEnumConst(wireName: r'RS512')
  static const TokenAuthenticationMethodDtoSigningAlgorithmEnum rS512 = _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_rS512;
  @BuiltValueEnumConst(wireName: r'ES256')
  static const TokenAuthenticationMethodDtoSigningAlgorithmEnum eS256 = _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS256;
  @BuiltValueEnumConst(wireName: r'ES512')
  static const TokenAuthenticationMethodDtoSigningAlgorithmEnum eS512 = _$tokenAuthenticationMethodDtoSigningAlgorithmEnum_eS512;

  static Serializer<TokenAuthenticationMethodDtoSigningAlgorithmEnum> get serializer => _$tokenAuthenticationMethodDtoSigningAlgorithmEnumSerializer;

  const TokenAuthenticationMethodDtoSigningAlgorithmEnum._(String name): super(name);

  static BuiltSet<TokenAuthenticationMethodDtoSigningAlgorithmEnum> get values => _$tokenAuthenticationMethodDtoSigningAlgorithmEnumValues;
  static TokenAuthenticationMethodDtoSigningAlgorithmEnum valueOf(String name) => _$tokenAuthenticationMethodDtoSigningAlgorithmEnumValueOf(name);
}

