//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_access_output.g.dart';

/// UpdateAccessOutput
///
/// Properties:
/// * [success] 
@BuiltValue()
abstract class UpdateAccessOutput implements Built<UpdateAccessOutput, UpdateAccessOutputBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  UpdateAccessOutput._();

  factory UpdateAccessOutput([void updates(UpdateAccessOutputBuilder b)]) = _$UpdateAccessOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateAccessOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateAccessOutput> get serializer => _$UpdateAccessOutputSerializer();
}

class _$UpdateAccessOutputSerializer implements PrimitiveSerializer<UpdateAccessOutput> {
  @override
  final Iterable<Type> types = const [UpdateAccessOutput, _$UpdateAccessOutput];

  @override
  final String wireName = r'UpdateAccessOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateAccessOutputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateAccessOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateAccessOutputBuilder();
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

