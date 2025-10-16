//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info_one_of1.dart';
import 'package:affinidi_tdk_iam_client/src/model/token_private_key_authentication_method_dto_public_key_info_one_of.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'token_private_key_authentication_method_dto_public_key_info.g.dart';

/// Corresponding Public Key Info provided either as a URL or a Hardcoded Object
///
/// Properties:
/// * [jwks]
/// * [jwksUri]
@BuiltValue()
abstract class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo
    implements
        Built<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo,
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder> {
  /// One Of [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf], [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1]
  OneOf get oneOf;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo._();

  factory TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo(
          [void updates(
              TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder b)]) =
      _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
          TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo>
      get serializer =>
          _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoSerializer();
}

class _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoSerializer
    implements
        PrimitiveSerializer<
            TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo> {
  @override
  final Iterable<Type> types = const [
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo,
    _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo
  ];

  @override
  final String wireName =
      r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo';

  Iterable<Object?> _serializeProperties(Serializers serializers,
      TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf),
      FullType(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
