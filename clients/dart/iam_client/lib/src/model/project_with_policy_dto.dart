//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_iam_client/src/model/policy_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_with_policy_dto.g.dart';

/// ProjectWithPolicyDto
///
/// Properties:
/// * [id]
/// * [name]
/// * [policy]
@BuiltValue()
abstract class ProjectWithPolicyDto
    implements Built<ProjectWithPolicyDto, ProjectWithPolicyDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'policy')
  PolicyDto get policy;

  ProjectWithPolicyDto._();

  factory ProjectWithPolicyDto([void updates(ProjectWithPolicyDtoBuilder b)]) =
      _$ProjectWithPolicyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectWithPolicyDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectWithPolicyDto> get serializer =>
      _$ProjectWithPolicyDtoSerializer();
}

class _$ProjectWithPolicyDtoSerializer
    implements PrimitiveSerializer<ProjectWithPolicyDto> {
  @override
  final Iterable<Type> types = const [
    ProjectWithPolicyDto,
    _$ProjectWithPolicyDto
  ];

  @override
  final String wireName = r'ProjectWithPolicyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectWithPolicyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'policy';
    yield serializers.serialize(
      object.policy,
      specifiedType: const FullType(PolicyDto),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectWithPolicyDto object, {
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
    required ProjectWithPolicyDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PolicyDto),
          ) as PolicyDto;
          result.policy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectWithPolicyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectWithPolicyDtoBuilder();
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
