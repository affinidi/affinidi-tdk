//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'groups_per_user_limit_exceeded_error.g.dart';

/// GroupsPerUserLimitExceededError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class GroupsPerUserLimitExceededError implements Built<GroupsPerUserLimitExceededError, GroupsPerUserLimitExceededErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  GroupsPerUserLimitExceededErrorNameEnum get name;
  // enum nameEnum {  GroupsPerUserLimitExceededError,  };

  @BuiltValueField(wireName: r'message')
  GroupsPerUserLimitExceededErrorMessageEnum get message;
  // enum messageEnum {  Amount of groups per user is limited.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  GroupsPerUserLimitExceededErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  409,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  GroupsPerUserLimitExceededError._();

  factory GroupsPerUserLimitExceededError([void updates(GroupsPerUserLimitExceededErrorBuilder b)]) = _$GroupsPerUserLimitExceededError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupsPerUserLimitExceededErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupsPerUserLimitExceededError> get serializer => _$GroupsPerUserLimitExceededErrorSerializer();
}

class _$GroupsPerUserLimitExceededErrorSerializer implements PrimitiveSerializer<GroupsPerUserLimitExceededError> {
  @override
  final Iterable<Type> types = const [GroupsPerUserLimitExceededError, _$GroupsPerUserLimitExceededError];

  @override
  final String wireName = r'GroupsPerUserLimitExceededError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupsPerUserLimitExceededError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(GroupsPerUserLimitExceededErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(GroupsPerUserLimitExceededErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(GroupsPerUserLimitExceededErrorHttpStatusCodeEnum),
    );
    yield r'traceId';
    yield serializers.serialize(
      object.traceId,
      specifiedType: const FullType(String),
    );
    if (object.details != null) {
      yield r'details';
      yield serializers.serialize(
        object.details,
        specifiedType: const FullType(BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupsPerUserLimitExceededError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupsPerUserLimitExceededErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GroupsPerUserLimitExceededErrorNameEnum),
          ) as GroupsPerUserLimitExceededErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GroupsPerUserLimitExceededErrorMessageEnum),
          ) as GroupsPerUserLimitExceededErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GroupsPerUserLimitExceededErrorHttpStatusCodeEnum),
          ) as GroupsPerUserLimitExceededErrorHttpStatusCodeEnum;
          result.httpStatusCode = valueDes;
          break;
        case r'traceId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.traceId = valueDes;
          break;
        case r'details':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
          ) as BuiltList<InvalidParameterErrorDetailsInner>;
          result.details.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupsPerUserLimitExceededError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupsPerUserLimitExceededErrorBuilder();
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

class GroupsPerUserLimitExceededErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'GroupsPerUserLimitExceededError')
  static const GroupsPerUserLimitExceededErrorNameEnum groupsPerUserLimitExceededError = _$groupsPerUserLimitExceededErrorNameEnum_groupsPerUserLimitExceededError;

  static Serializer<GroupsPerUserLimitExceededErrorNameEnum> get serializer => _$groupsPerUserLimitExceededErrorNameEnumSerializer;

  const GroupsPerUserLimitExceededErrorNameEnum._(String name): super(name);

  static BuiltSet<GroupsPerUserLimitExceededErrorNameEnum> get values => _$groupsPerUserLimitExceededErrorNameEnumValues;
  static GroupsPerUserLimitExceededErrorNameEnum valueOf(String name) => _$groupsPerUserLimitExceededErrorNameEnumValueOf(name);
}

class GroupsPerUserLimitExceededErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Amount of groups per user is limited.')
  static const GroupsPerUserLimitExceededErrorMessageEnum amountOfGroupsPerUserIsLimitedPeriod = _$groupsPerUserLimitExceededErrorMessageEnum_amountOfGroupsPerUserIsLimitedPeriod;

  static Serializer<GroupsPerUserLimitExceededErrorMessageEnum> get serializer => _$groupsPerUserLimitExceededErrorMessageEnumSerializer;

  const GroupsPerUserLimitExceededErrorMessageEnum._(String name): super(name);

  static BuiltSet<GroupsPerUserLimitExceededErrorMessageEnum> get values => _$groupsPerUserLimitExceededErrorMessageEnumValues;
  static GroupsPerUserLimitExceededErrorMessageEnum valueOf(String name) => _$groupsPerUserLimitExceededErrorMessageEnumValueOf(name);
}

class GroupsPerUserLimitExceededErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 409)
  static const GroupsPerUserLimitExceededErrorHttpStatusCodeEnum number409 = _$groupsPerUserLimitExceededErrorHttpStatusCodeEnum_number409;

  static Serializer<GroupsPerUserLimitExceededErrorHttpStatusCodeEnum> get serializer => _$groupsPerUserLimitExceededErrorHttpStatusCodeEnumSerializer;

  const GroupsPerUserLimitExceededErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<GroupsPerUserLimitExceededErrorHttpStatusCodeEnum> get values => _$groupsPerUserLimitExceededErrorHttpStatusCodeEnumValues;
  static GroupsPerUserLimitExceededErrorHttpStatusCodeEnum valueOf(String name) => _$groupsPerUserLimitExceededErrorHttpStatusCodeEnumValueOf(name);
}

