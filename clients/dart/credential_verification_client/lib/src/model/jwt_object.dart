//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jwt_object.g.dart';

/// JwtObject
///
/// Properties:
/// * [alg] - List of names of the the JWT Algorithms
@BuiltValue()
abstract class JwtObject implements Built<JwtObject, JwtObjectBuilder> {
  /// List of names of the the JWT Algorithms
  @BuiltValueField(wireName: r'alg')
  BuiltList<String> get alg;

  JwtObject._();

  factory JwtObject([void updates(JwtObjectBuilder b)]) = _$JwtObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JwtObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JwtObject> get serializer => _$JwtObjectSerializer();
}

class _$JwtObjectSerializer implements PrimitiveSerializer<JwtObject> {
  @override
  final Iterable<Type> types = const [JwtObject, _$JwtObject];

  @override
  final String wireName = r'JwtObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JwtObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'alg';
    yield serializers.serialize(
      object.alg,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    JwtObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JwtObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.alg.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JwtObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JwtObjectBuilder();
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

