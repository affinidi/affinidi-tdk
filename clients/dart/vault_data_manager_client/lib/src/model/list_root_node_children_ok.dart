//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_root_node_children_ok.g.dart';

/// ListRootNodeChildrenOK
///
/// Properties:
/// * [nodes]
@BuiltValue()
abstract class ListRootNodeChildrenOK
    implements Built<ListRootNodeChildrenOK, ListRootNodeChildrenOKBuilder> {
  @BuiltValueField(wireName: r'nodes')
  BuiltList<NodeDto>? get nodes;

  ListRootNodeChildrenOK._();

  factory ListRootNodeChildrenOK(
          [void updates(ListRootNodeChildrenOKBuilder b)]) =
      _$ListRootNodeChildrenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListRootNodeChildrenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListRootNodeChildrenOK> get serializer =>
      _$ListRootNodeChildrenOKSerializer();
}

class _$ListRootNodeChildrenOKSerializer
    implements PrimitiveSerializer<ListRootNodeChildrenOK> {
  @override
  final Iterable<Type> types = const [
    ListRootNodeChildrenOK,
    _$ListRootNodeChildrenOK
  ];

  @override
  final String wireName = r'ListRootNodeChildrenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListRootNodeChildrenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nodes != null) {
      yield r'nodes';
      yield serializers.serialize(
        object.nodes,
        specifiedType: const FullType(BuiltList, [FullType(NodeDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListRootNodeChildrenOK object, {
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
    required ListRootNodeChildrenOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NodeDto)]),
          ) as BuiltList<NodeDto>;
          result.nodes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListRootNodeChildrenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListRootNodeChildrenOKBuilder();
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
