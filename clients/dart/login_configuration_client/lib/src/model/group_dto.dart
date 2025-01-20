//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_dto.g.dart';

/// GroupDto
///
/// Properties:
/// * [ari] - Group ari
/// * [projectId] - Project id
/// * [groupName] - name of the group, identifier within a project
/// * [creationDate] - Group creation date
@BuiltValue()
abstract class GroupDto implements Built<GroupDto, GroupDtoBuilder> {
  /// Group ari
  @BuiltValueField(wireName: r'ari')
  String get ari;

  /// Project id
  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  /// name of the group, identifier within a project
  @BuiltValueField(wireName: r'groupName')
  String get groupName;

  /// Group creation date
  @BuiltValueField(wireName: r'creationDate')
  String get creationDate;

  GroupDto._();

  factory GroupDto([void updates(GroupDtoBuilder b)]) = _$GroupDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupDto> get serializer => _$GroupDtoSerializer();
}

class _$GroupDtoSerializer implements PrimitiveSerializer<GroupDto> {
  @override
  final Iterable<Type> types = const [GroupDto, _$GroupDto];

  @override
  final String wireName = r'GroupDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ari';
    yield serializers.serialize(
      object.ari,
      specifiedType: const FullType(String),
    );
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    yield r'groupName';
    yield serializers.serialize(
      object.groupName,
      specifiedType: const FullType(String),
    );
    yield r'creationDate';
    yield serializers.serialize(
      object.creationDate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ari = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'groupName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupName = valueDes;
          break;
        case r'creationDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creationDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupDtoBuilder();
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

