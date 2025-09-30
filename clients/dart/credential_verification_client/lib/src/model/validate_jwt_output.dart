//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_jwt_output.g.dart';

/// Response model of /validate-jwt
///
/// Properties:
/// * [isValid] - Defines if jwt is valid
/// * [payload] - Decoded payload of the token
@BuiltValue()
abstract class ValidateJwtOutput
    implements Built<ValidateJwtOutput, ValidateJwtOutputBuilder> {
  /// Defines if jwt is valid
  @BuiltValueField(wireName: r'isValid')
  bool get isValid;

  /// Decoded payload of the token
  @BuiltValueField(wireName: r'payload')
  JsonObject get payload;

  ValidateJwtOutput._();

  factory ValidateJwtOutput([void updates(ValidateJwtOutputBuilder b)]) =
      _$ValidateJwtOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateJwtOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateJwtOutput> get serializer =>
      _$ValidateJwtOutputSerializer();
}

class _$ValidateJwtOutputSerializer
    implements PrimitiveSerializer<ValidateJwtOutput> {
  @override
  final Iterable<Type> types = const [ValidateJwtOutput, _$ValidateJwtOutput];

  @override
  final String wireName = r'ValidateJwtOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateJwtOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'isValid';
    yield serializers.serialize(
      object.isValid,
      specifiedType: const FullType(bool),
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
    ValidateJwtOutput object, {
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
    required ValidateJwtOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'isValid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isValid = valueDes;
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
  ValidateJwtOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateJwtOutputBuilder();
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
