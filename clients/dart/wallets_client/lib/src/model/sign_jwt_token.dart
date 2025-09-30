//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_jwt_token.g.dart';

/// DTO contains parts of JWT to be signed
///
/// Properties:
/// * [header]
/// * [payload]
@BuiltValue()
abstract class SignJwtToken
    implements Built<SignJwtToken, SignJwtTokenBuilder> {
  @BuiltValueField(wireName: r'header')
  JsonObject get header;

  @BuiltValueField(wireName: r'payload')
  JsonObject get payload;

  SignJwtToken._();

  factory SignJwtToken([void updates(SignJwtTokenBuilder b)]) = _$SignJwtToken;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignJwtTokenBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignJwtToken> get serializer => _$SignJwtTokenSerializer();
}

class _$SignJwtTokenSerializer implements PrimitiveSerializer<SignJwtToken> {
  @override
  final Iterable<Type> types = const [SignJwtToken, _$SignJwtToken];

  @override
  final String wireName = r'SignJwtToken';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignJwtToken object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'header';
    yield serializers.serialize(
      object.header,
      specifiedType: const FullType(JsonObject),
    );
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignJwtToken object, {
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
    required SignJwtTokenBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'header':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.header = valueDes;
          break;
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.payload = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignJwtToken deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignJwtTokenBuilder();
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
