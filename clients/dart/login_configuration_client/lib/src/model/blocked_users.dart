//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blocked_users.g.dart';

/// BlockedUsers
///
/// Properties:
/// * [userIds] 
/// * [pageToken] 
@BuiltValue()
abstract class BlockedUsers implements Built<BlockedUsers, BlockedUsersBuilder> {
  @BuiltValueField(wireName: r'userIds')
  BuiltList<String> get userIds;

  @BuiltValueField(wireName: r'pageToken')
  JsonObject? get pageToken;

  BlockedUsers._();

  factory BlockedUsers([void updates(BlockedUsersBuilder b)]) = _$BlockedUsers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BlockedUsersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BlockedUsers> get serializer => _$BlockedUsersSerializer();
}

class _$BlockedUsersSerializer implements PrimitiveSerializer<BlockedUsers> {
  @override
  final Iterable<Type> types = const [BlockedUsers, _$BlockedUsers];

  @override
  final String wireName = r'BlockedUsers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BlockedUsers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userIds';
    yield serializers.serialize(
      object.userIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.pageToken != null) {
      yield r'pageToken';
      yield serializers.serialize(
        object.pageToken,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BlockedUsers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BlockedUsersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.userIds.replace(valueDes);
          break;
        case r'pageToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.pageToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BlockedUsers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BlockedUsersBuilder();
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

