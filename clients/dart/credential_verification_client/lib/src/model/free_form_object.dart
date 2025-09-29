//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'free_form_object.g.dart';

/// Dynamic model
@BuiltValue()
abstract class FreeFormObject
    implements Built<FreeFormObject, FreeFormObjectBuilder> {
  FreeFormObject._();

  factory FreeFormObject([void updates(FreeFormObjectBuilder b)]) =
      _$FreeFormObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FreeFormObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FreeFormObject> get serializer =>
      _$FreeFormObjectSerializer();
}

class _$FreeFormObjectSerializer
    implements PrimitiveSerializer<FreeFormObject> {
  @override
  final Iterable<Type> types = const [FreeFormObject, _$FreeFormObject];

  @override
  final String wireName = r'FreeFormObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FreeFormObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    FreeFormObject object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  @override
  FreeFormObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FreeFormObjectBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    return result.build();
  }
}
