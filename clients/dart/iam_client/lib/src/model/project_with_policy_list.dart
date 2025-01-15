//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/project_with_policy_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_with_policy_list.g.dart';

/// ProjectWithPolicyList
///
/// Properties:
/// * [projects] 
/// * [lastEvaluatedKey] 
@BuiltValue()
abstract class ProjectWithPolicyList implements Built<ProjectWithPolicyList, ProjectWithPolicyListBuilder> {
  @BuiltValueField(wireName: r'projects')
  BuiltList<ProjectWithPolicyDto> get projects;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ProjectWithPolicyList._();

  factory ProjectWithPolicyList([void updates(ProjectWithPolicyListBuilder b)]) = _$ProjectWithPolicyList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectWithPolicyListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectWithPolicyList> get serializer => _$ProjectWithPolicyListSerializer();
}

class _$ProjectWithPolicyListSerializer implements PrimitiveSerializer<ProjectWithPolicyList> {
  @override
  final Iterable<Type> types = const [ProjectWithPolicyList, _$ProjectWithPolicyList];

  @override
  final String wireName = r'ProjectWithPolicyList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectWithPolicyList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'projects';
    yield serializers.serialize(
      object.projects,
      specifiedType: const FullType(BuiltList, [FullType(ProjectWithPolicyDto)]),
    );
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
    ProjectWithPolicyList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectWithPolicyListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'projects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectWithPolicyDto)]),
          ) as BuiltList<ProjectWithPolicyDto>;
          result.projects.replace(valueDes);
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
  ProjectWithPolicyList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectWithPolicyListBuilder();
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

