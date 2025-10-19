//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_login_configuration_client/src/model/group_user_mapping_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_user_mappings_list.g.dart';

/// GroupUserMappingsList
///
/// Properties:
/// * [users]
/// * [lastEvaluatedKey]
/// * [totalUserCount]
@BuiltValue()
abstract class GroupUserMappingsList
    implements Built<GroupUserMappingsList, GroupUserMappingsListBuilder> {
  @BuiltValueField(wireName: r'users')
  BuiltList<GroupUserMappingDto>? get users;

  @BuiltValueField(wireName: r'lastEvaluatedKey')
  String? get lastEvaluatedKey;

  @BuiltValueField(wireName: r'totalUserCount')
  int? get totalUserCount;

  GroupUserMappingsList._();

  factory GroupUserMappingsList(
      [void updates(GroupUserMappingsListBuilder b)]) = _$GroupUserMappingsList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupUserMappingsListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupUserMappingsList> get serializer =>
      _$GroupUserMappingsListSerializer();
}

class _$GroupUserMappingsListSerializer
    implements PrimitiveSerializer<GroupUserMappingsList> {
  @override
  final Iterable<Type> types = const [
    GroupUserMappingsList,
    _$GroupUserMappingsList
  ];

  @override
  final String wireName = r'GroupUserMappingsList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupUserMappingsList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.users != null) {
      yield r'users';
      yield serializers.serialize(
        object.users,
        specifiedType:
            const FullType(BuiltList, [FullType(GroupUserMappingDto)]),
      );
    }
    if (object.lastEvaluatedKey != null) {
      yield r'lastEvaluatedKey';
      yield serializers.serialize(
        object.lastEvaluatedKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalUserCount != null) {
      yield r'totalUserCount';
      yield serializers.serialize(
        object.totalUserCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupUserMappingsList object, {
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
    required GroupUserMappingsListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'users':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(GroupUserMappingDto)]),
          ) as BuiltList<GroupUserMappingDto>;
          result.users.replace(valueDes);
          break;
        case r'lastEvaluatedKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastEvaluatedKey = valueDes;
          break;
        case r'totalUserCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalUserCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupUserMappingsList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupUserMappingsListBuilder();
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
