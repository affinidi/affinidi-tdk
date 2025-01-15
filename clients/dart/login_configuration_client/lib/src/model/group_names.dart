//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_names.g.dart';

/// GroupNames
///
/// Properties:
/// * [groupNames] 
/// * [pageToken] 
@BuiltValue()
abstract class GroupNames implements Built<GroupNames, GroupNamesBuilder> {
  @BuiltValueField(wireName: r'groupNames')
  BuiltList<String> get groupNames;

  @BuiltValueField(wireName: r'pageToken')
  JsonObject? get pageToken;

  GroupNames._();

  factory GroupNames([void updates(GroupNamesBuilder b)]) = _$GroupNames;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupNamesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupNames> get serializer => _$GroupNamesSerializer();
}

class _$GroupNamesSerializer implements PrimitiveSerializer<GroupNames> {
  @override
  final Iterable<Type> types = const [GroupNames, _$GroupNames];

  @override
  final String wireName = r'GroupNames';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupNames object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupNames';
    yield serializers.serialize(
      object.groupNames,
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
    GroupNames object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupNamesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupNames':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.groupNames.replace(valueDes);
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
  GroupNames deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupNamesBuilder();
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

