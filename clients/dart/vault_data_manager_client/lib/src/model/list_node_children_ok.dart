//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/node_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_node_children_ok.g.dart';

/// ListNodeChildrenOK
///
/// Properties:
/// * [nodes]
/// * [lastEvaluatedKey]
@BuiltValue()
abstract class ListNodeChildrenOK
    implements Built<ListNodeChildrenOK, ListNodeChildrenOKBuilder> {
  @BuiltValueField(wireName: r'nodes')
  BuiltList<NodeDto>? get nodes;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ListNodeChildrenOK._();

  factory ListNodeChildrenOK([void updates(ListNodeChildrenOKBuilder b)]) =
      _$ListNodeChildrenOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListNodeChildrenOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListNodeChildrenOK> get serializer =>
      _$ListNodeChildrenOKSerializer();
}

class _$ListNodeChildrenOKSerializer
    implements PrimitiveSerializer<ListNodeChildrenOK> {
  @override
  final Iterable<Type> types = const [ListNodeChildrenOK, _$ListNodeChildrenOK];

  @override
  final String wireName = r'ListNodeChildrenOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListNodeChildrenOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nodes != null) {
      yield r'nodes';
      yield serializers.serialize(
        object.nodes,
        specifiedType: const FullType(BuiltList, [FullType(NodeDto)]),
      );
    }
    if (object.lastEvaluatedKey != null) {
      yield r'lastEvaluatedKey';
      yield serializers.serialize(
        object.lastEvaluatedKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListNodeChildrenOK object, {
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
    required ListNodeChildrenOKBuilder result,
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
        case r'lastEvaluatedKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastEvaluatedKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListNodeChildrenOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListNodeChildrenOKBuilder();
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
