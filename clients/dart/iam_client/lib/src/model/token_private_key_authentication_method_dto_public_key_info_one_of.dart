//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/json_web_key_set_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_private_key_authentication_method_dto_public_key_info_one_of.g.dart';

/// TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf
///
/// Properties:
/// * [jwks] 
@BuiltValue()
abstract class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf implements Built<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder> {
  @BuiltValueField(wireName: r'jwks')
  JsonWebKeySetDto get jwks;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf._();

  factory TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf([void updates(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder b)]) = _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf> get serializer => _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfSerializer();
}

class _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfSerializer implements PrimitiveSerializer<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf> {
  @override
  final Iterable<Type> types = const [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf, _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf];

  @override
  final String wireName = r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jwks';
    yield serializers.serialize(
      object.jwks,
      specifiedType: const FullType(JsonWebKeySetDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jwks':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonWebKeySetDto),
          ) as JsonWebKeySetDto;
          result.jwks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOfBuilder();
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

