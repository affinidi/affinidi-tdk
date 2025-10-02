//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'move_node_dto.g.dart';

/// MoveNodeDto
///
/// Properties:
/// * [newNodeId]
@BuiltValue()
abstract class MoveNodeDto implements Built<MoveNodeDto, MoveNodeDtoBuilder> {
  @BuiltValueField(wireName: r'newNodeId')
  String? get newNodeId;

  MoveNodeDto._();

  factory MoveNodeDto([void updates(MoveNodeDtoBuilder b)]) = _$MoveNodeDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MoveNodeDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MoveNodeDto> get serializer => _$MoveNodeDtoSerializer();
}

class _$MoveNodeDtoSerializer implements PrimitiveSerializer<MoveNodeDto> {
  @override
  final Iterable<Type> types = const [MoveNodeDto, _$MoveNodeDto];

  @override
  final String wireName = r'MoveNodeDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MoveNodeDto object, {
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
    MoveNodeDto object, {
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
    required MoveNodeDtoBuilder result,
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
  MoveNodeDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MoveNodeDtoBuilder();
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
