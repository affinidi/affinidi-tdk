//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_access_output.g.dart';

/// DeleteAccessOutput
///
/// Properties:
/// * [success] 
@BuiltValue()
abstract class DeleteAccessOutput implements Built<DeleteAccessOutput, DeleteAccessOutputBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  DeleteAccessOutput._();

  factory DeleteAccessOutput([void updates(DeleteAccessOutputBuilder b)]) = _$DeleteAccessOutput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteAccessOutputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteAccessOutput> get serializer => _$DeleteAccessOutputSerializer();
}

class _$DeleteAccessOutputSerializer implements PrimitiveSerializer<DeleteAccessOutput> {
  @override
  final Iterable<Type> types = const [DeleteAccessOutput, _$DeleteAccessOutput];

  @override
  final String wireName = r'DeleteAccessOutput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteAccessOutput object, {
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
    DeleteAccessOutput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeleteAccessOutputBuilder result,
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
  DeleteAccessOutput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteAccessOutputBuilder();
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

