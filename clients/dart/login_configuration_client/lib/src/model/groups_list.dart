//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'groups_list.g.dart';

/// GroupsList
///
/// Properties:
/// * [groups]
@BuiltValue()
abstract class GroupsList implements Built<GroupsList, GroupsListBuilder> {
  @BuiltValueField(wireName: r'groups')
  BuiltList<GroupDto>? get groups;

  GroupsList._();

  factory GroupsList([void updates(GroupsListBuilder b)]) = _$GroupsList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupsListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupsList> get serializer => _$GroupsListSerializer();
}

class _$GroupsListSerializer implements PrimitiveSerializer<GroupsList> {
  @override
  final Iterable<Type> types = const [GroupsList, _$GroupsList];

  @override
  final String wireName = r'GroupsList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupsList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(GroupDto)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupsList object, {
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
    required GroupsListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(GroupDto)]),
          ) as BuiltList<GroupDto>;
          result.groups.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupsList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupsListBuilder();
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
