//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'token_private_key_authentication_method_dto_public_key_info_one_of1.g.dart';

/// TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1
///
/// Properties:
/// * [jwksUri] 
@BuiltValue()
abstract class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 implements Built<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder> {
  @BuiltValueField(wireName: r'jwksUri')
  String get jwksUri;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1._();

  factory TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1([void updates(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder b)]) = _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1> get serializer => _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Serializer();
}

class _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Serializer implements PrimitiveSerializer<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1> {
  @override
  final Iterable<Type> types = const [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1, _$TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1];

  @override
  final String wireName = r'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'jwksUri';
    yield serializers.serialize(
      object.jwksUri,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'jwksUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jwksUri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf1Builder();
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

