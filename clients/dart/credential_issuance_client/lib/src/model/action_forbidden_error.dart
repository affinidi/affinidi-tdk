//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action_forbidden_error.g.dart';

/// ActionForbiddenError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class ActionForbiddenError
    implements Built<ActionForbiddenError, ActionForbiddenErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  ActionForbiddenErrorNameEnum get name;
  // enum nameEnum {  ActionForbiddenError,  };

  @BuiltValueField(wireName: r'message')
  ActionForbiddenErrorMessageEnum get message;
  // enum messageEnum {  Principal can not execute action on given resource,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  ActionForbiddenErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  403,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  ActionForbiddenError._();

  factory ActionForbiddenError([void updates(ActionForbiddenErrorBuilder b)]) =
      _$ActionForbiddenError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActionForbiddenErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActionForbiddenError> get serializer =>
      _$ActionForbiddenErrorSerializer();
}

class _$ActionForbiddenErrorSerializer
    implements PrimitiveSerializer<ActionForbiddenError> {
  @override
  final Iterable<Type> types = const [
    ActionForbiddenError,
    _$ActionForbiddenError
  ];

  @override
  final String wireName = r'ActionForbiddenError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActionForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(ActionForbiddenErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ActionForbiddenErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(ActionForbiddenErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(
            BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActionForbiddenError object, {
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
    required ActionForbiddenErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActionForbiddenErrorNameEnum),
          ) as ActionForbiddenErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActionForbiddenErrorMessageEnum),
          ) as ActionForbiddenErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ActionForbiddenErrorHttpStatusCodeEnum),
          ) as ActionForbiddenErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(
                BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
          ) as BuiltList<ActionForbiddenErrorDetailsInner>;
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
  ActionForbiddenError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActionForbiddenErrorBuilder();
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

class ActionForbiddenErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ActionForbiddenError')
  static const ActionForbiddenErrorNameEnum actionForbiddenError =
      _$actionForbiddenErrorNameEnum_actionForbiddenError;

  static Serializer<ActionForbiddenErrorNameEnum> get serializer =>
      _$actionForbiddenErrorNameEnumSerializer;

  const ActionForbiddenErrorNameEnum._(String name) : super(name);

  static BuiltSet<ActionForbiddenErrorNameEnum> get values =>
      _$actionForbiddenErrorNameEnumValues;
  static ActionForbiddenErrorNameEnum valueOf(String name) =>
      _$actionForbiddenErrorNameEnumValueOf(name);
}

class ActionForbiddenErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'Principal can not execute action on given resource')
  static const ActionForbiddenErrorMessageEnum
      principalCanNotExecuteActionOnGivenResource =
      _$actionForbiddenErrorMessageEnum_principalCanNotExecuteActionOnGivenResource;

  static Serializer<ActionForbiddenErrorMessageEnum> get serializer =>
      _$actionForbiddenErrorMessageEnumSerializer;

  const ActionForbiddenErrorMessageEnum._(String name) : super(name);

  static BuiltSet<ActionForbiddenErrorMessageEnum> get values =>
      _$actionForbiddenErrorMessageEnumValues;
  static ActionForbiddenErrorMessageEnum valueOf(String name) =>
      _$actionForbiddenErrorMessageEnumValueOf(name);
}

class ActionForbiddenErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 403)
  static const ActionForbiddenErrorHttpStatusCodeEnum number403 =
      _$actionForbiddenErrorHttpStatusCodeEnum_number403;

  static Serializer<ActionForbiddenErrorHttpStatusCodeEnum> get serializer =>
      _$actionForbiddenErrorHttpStatusCodeEnumSerializer;

  const ActionForbiddenErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<ActionForbiddenErrorHttpStatusCodeEnum> get values =>
      _$actionForbiddenErrorHttpStatusCodeEnumValues;
  static ActionForbiddenErrorHttpStatusCodeEnum valueOf(String name) =>
      _$actionForbiddenErrorHttpStatusCodeEnumValueOf(name);
}
