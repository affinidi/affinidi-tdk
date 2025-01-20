//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/project_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_list.g.dart';

/// ProjectList
///
/// Properties:
/// * [projects] 
/// * [lastEvaluatedKey] 
@BuiltValue()
abstract class ProjectList implements Built<ProjectList, ProjectListBuilder> {
  @BuiltValueField(wireName: r'projects')
  BuiltList<ProjectDto> get projects;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  ProjectList._();

  factory ProjectList([void updates(ProjectListBuilder b)]) = _$ProjectList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectList> get serializer => _$ProjectListSerializer();
}

class _$ProjectListSerializer implements PrimitiveSerializer<ProjectList> {
  @override
  final Iterable<Type> types = const [ProjectList, _$ProjectList];

  @override
  final String wireName = r'ProjectList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'projects';
    yield serializers.serialize(
      object.projects,
      specifiedType: const FullType(BuiltList, [FullType(ProjectDto)]),
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
    ProjectList object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProjectListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'projects':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ProjectDto)]),
          ) as BuiltList<ProjectDto>;
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
  ProjectList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectListBuilder();
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

