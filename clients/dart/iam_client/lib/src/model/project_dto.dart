//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'project_dto.g.dart';

/// ProjectDto
///
/// Properties:
/// * [id]
/// * [name]
/// * [ownerId]
/// * [description]
/// * [createdAt] - creation date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13
/// * [updatedAt] - last update date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13
@BuiltValue()
abstract class ProjectDto implements Built<ProjectDto, ProjectDtoBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'ownerId')
  String? get ownerId;

  @BuiltValueField(wireName: r'description')
  String? get description;

  /// creation date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13
  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  /// last update date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13
  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  ProjectDto._();

  factory ProjectDto([void updates(ProjectDtoBuilder b)]) = _$ProjectDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProjectDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProjectDto> get serializer => _$ProjectDtoSerializer();
}

class _$ProjectDtoSerializer implements PrimitiveSerializer<ProjectDto> {
  @override
  final Iterable<Type> types = const [ProjectDto, _$ProjectDto];

  @override
  final String wireName = r'ProjectDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProjectDto object, {
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
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ProjectDto object, {
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
    required ProjectDtoBuilder result,
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
        case r'ownerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownerId = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProjectDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProjectDtoBuilder();
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
