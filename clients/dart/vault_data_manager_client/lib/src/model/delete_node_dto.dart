//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'delete_node_dto.g.dart';

/// DeleteNodeDto
///
/// Properties:
/// * [newNodeId]
@BuiltValue()
abstract class DeleteNodeDto
    implements Built<DeleteNodeDto, DeleteNodeDtoBuilder> {
  @BuiltValueField(wireName: r'newNodeId')
  String? get newNodeId;

  DeleteNodeDto._();

  factory DeleteNodeDto([void updates(DeleteNodeDtoBuilder b)]) =
      _$DeleteNodeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeleteNodeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeleteNodeDto> get serializer =>
      _$DeleteNodeDtoSerializer();
}

class _$DeleteNodeDtoSerializer implements PrimitiveSerializer<DeleteNodeDto> {
  @override
  final Iterable<Type> types = const [DeleteNodeDto, _$DeleteNodeDto];

  @override
  final String wireName = r'DeleteNodeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeleteNodeDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.newNodeId != null) {
      yield r'newNodeId';
      yield serializers.serialize(
        object.newNodeId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeleteNodeDto object, {
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
    required DeleteNodeDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'newNodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.newNodeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeleteNodeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeleteNodeDtoBuilder();
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
