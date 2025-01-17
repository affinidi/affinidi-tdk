//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validate_jwt_input.g.dart';

/// Request model of /validate-jwt
///
/// Properties:
/// * [token] - JWT token
@BuiltValue()
abstract class ValidateJwtInput implements Built<ValidateJwtInput, ValidateJwtInputBuilder> {
  /// JWT token
  @BuiltValueField(wireName: r'token')
  String get token;

  ValidateJwtInput._();

  factory ValidateJwtInput([void updates(ValidateJwtInputBuilder b)]) = _$ValidateJwtInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ValidateJwtInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ValidateJwtInput> get serializer => _$ValidateJwtInputSerializer();
}

class _$ValidateJwtInputSerializer implements PrimitiveSerializer<ValidateJwtInput> {
  @override
  final Iterable<Type> types = const [ValidateJwtInput, _$ValidateJwtInput];

  @override
  final String wireName = r'ValidateJwtInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ValidateJwtInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ValidateJwtInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ValidateJwtInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ValidateJwtInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ValidateJwtInputBuilder();
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

