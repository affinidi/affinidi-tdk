//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_jwt_v2.g.dart';

/// DTO contains payload of JWT to be signed
///
/// Properties:
/// * [payload]
@BuiltValue()
abstract class SignJwtV2 implements Built<SignJwtV2, SignJwtV2Builder> {
  @BuiltValueField(wireName: r'payload')
  JsonObject get payload;

  SignJwtV2._();

  factory SignJwtV2([void updates(SignJwtV2Builder b)]) = _$SignJwtV2;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignJwtV2Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignJwtV2> get serializer => _$SignJwtV2Serializer();
}

class _$SignJwtV2Serializer implements PrimitiveSerializer<SignJwtV2> {
  @override
  final Iterable<Type> types = const [SignJwtV2, _$SignJwtV2];

  @override
  final String wireName = r'SignJwtV2';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignJwtV2 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignJwtV2 object, {
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
    required SignJwtV2Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  SignJwtV2 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignJwtV2Builder();
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
