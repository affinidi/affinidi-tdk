//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'move_node_input.g.dart';

/// MoveNodeInput
///
/// Properties:
/// * [destinationNodeId] - Parent to which current node should be moved
/// * [resolveNameConflictsAutomatically] - automatically update the name of Node if target Node has children with the same name. If not provided, name won't be updated automatically
@BuiltValue()
abstract class MoveNodeInput implements Built<MoveNodeInput, MoveNodeInputBuilder> {
  /// Parent to which current node should be moved
  @BuiltValueField(wireName: r'destinationNodeId')
  String get destinationNodeId;

  /// automatically update the name of Node if target Node has children with the same name. If not provided, name won't be updated automatically
  @BuiltValueField(wireName: r'resolveNameConflictsAutomatically')
  bool? get resolveNameConflictsAutomatically;

  MoveNodeInput._();

  factory MoveNodeInput([void updates(MoveNodeInputBuilder b)]) = _$MoveNodeInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MoveNodeInputBuilder b) => b
      ..resolveNameConflictsAutomatically = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<MoveNodeInput> get serializer => _$MoveNodeInputSerializer();
}

class _$MoveNodeInputSerializer implements PrimitiveSerializer<MoveNodeInput> {
  @override
  final Iterable<Type> types = const [MoveNodeInput, _$MoveNodeInput];

  @override
  final String wireName = r'MoveNodeInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MoveNodeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'destinationNodeId';
    yield serializers.serialize(
      object.destinationNodeId,
      specifiedType: const FullType(String),
    );
    if (object.resolveNameConflictsAutomatically != null) {
      yield r'resolveNameConflictsAutomatically';
      yield serializers.serialize(
        object.resolveNameConflictsAutomatically,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MoveNodeInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MoveNodeInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'destinationNodeId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationNodeId = valueDes;
          break;
        case r'resolveNameConflictsAutomatically':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.resolveNameConflictsAutomatically = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MoveNodeInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MoveNodeInputBuilder();
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

