//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_user_mapping_dto.g.dart';

/// GroupUserMappingDto
///
/// Properties:
/// * [userId] - Unique identifier of the user
/// * [addedAt] - Group to user mapping creation date
@BuiltValue()
abstract class GroupUserMappingDto implements Built<GroupUserMappingDto, GroupUserMappingDtoBuilder> {
  /// Unique identifier of the user
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Group to user mapping creation date
  @BuiltValueField(wireName: r'addedAt')
  String get addedAt;

  GroupUserMappingDto._();

  factory GroupUserMappingDto([void updates(GroupUserMappingDtoBuilder b)]) = _$GroupUserMappingDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupUserMappingDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupUserMappingDto> get serializer => _$GroupUserMappingDtoSerializer();
}

class _$GroupUserMappingDtoSerializer implements PrimitiveSerializer<GroupUserMappingDto> {
  @override
  final Iterable<Type> types = const [GroupUserMappingDto, _$GroupUserMappingDto];

  @override
  final String wireName = r'GroupUserMappingDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupUserMappingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'addedAt';
    yield serializers.serialize(
      object.addedAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupUserMappingDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupUserMappingDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'addedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupUserMappingDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupUserMappingDtoBuilder();
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

