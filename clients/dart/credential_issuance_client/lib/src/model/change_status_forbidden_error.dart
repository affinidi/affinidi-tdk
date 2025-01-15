//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'change_status_forbidden_error.g.dart';

/// ChangeStatusForbiddenError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class ChangeStatusForbiddenError implements Built<ChangeStatusForbiddenError, ChangeStatusForbiddenErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  ChangeStatusForbiddenErrorNameEnum get name;
  // enum nameEnum {  ChangeStatusForbiddenError,  };

  @BuiltValueField(wireName: r'message')
  ChangeStatusForbiddenErrorMessageEnum get message;
  // enum messageEnum {  Related VC status cannot be changed,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  ChangeStatusForbiddenErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  ChangeStatusForbiddenError._();

  factory ChangeStatusForbiddenError([void updates(ChangeStatusForbiddenErrorBuilder b)]) = _$ChangeStatusForbiddenError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ChangeStatusForbiddenErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ChangeStatusForbiddenError> get serializer => _$ChangeStatusForbiddenErrorSerializer();
}

class _$ChangeStatusForbiddenErrorSerializer implements PrimitiveSerializer<ChangeStatusForbiddenError> {
  @override
  final Iterable<Type> types = const [ChangeStatusForbiddenError, _$ChangeStatusForbiddenError];

  @override
  final String wireName = r'ChangeStatusForbiddenError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ChangeStatusForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(ChangeStatusForbiddenErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ChangeStatusForbiddenErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(ChangeStatusForbiddenErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ChangeStatusForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ChangeStatusForbiddenErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChangeStatusForbiddenErrorNameEnum),
          ) as ChangeStatusForbiddenErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChangeStatusForbiddenErrorMessageEnum),
          ) as ChangeStatusForbiddenErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ChangeStatusForbiddenErrorHttpStatusCodeEnum),
          ) as ChangeStatusForbiddenErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(BuiltList, [FullType(ActionForbiddenErrorDetailsInner)]),
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
  ChangeStatusForbiddenError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ChangeStatusForbiddenErrorBuilder();
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

class ChangeStatusForbiddenErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ChangeStatusForbiddenError')
  static const ChangeStatusForbiddenErrorNameEnum changeStatusForbiddenError = _$changeStatusForbiddenErrorNameEnum_changeStatusForbiddenError;

  static Serializer<ChangeStatusForbiddenErrorNameEnum> get serializer => _$changeStatusForbiddenErrorNameEnumSerializer;

  const ChangeStatusForbiddenErrorNameEnum._(String name): super(name);

  static BuiltSet<ChangeStatusForbiddenErrorNameEnum> get values => _$changeStatusForbiddenErrorNameEnumValues;
  static ChangeStatusForbiddenErrorNameEnum valueOf(String name) => _$changeStatusForbiddenErrorNameEnumValueOf(name);
}

class ChangeStatusForbiddenErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Related VC status cannot be changed')
  static const ChangeStatusForbiddenErrorMessageEnum relatedVCStatusCannotBeChanged = _$changeStatusForbiddenErrorMessageEnum_relatedVCStatusCannotBeChanged;

  static Serializer<ChangeStatusForbiddenErrorMessageEnum> get serializer => _$changeStatusForbiddenErrorMessageEnumSerializer;

  const ChangeStatusForbiddenErrorMessageEnum._(String name): super(name);

  static BuiltSet<ChangeStatusForbiddenErrorMessageEnum> get values => _$changeStatusForbiddenErrorMessageEnumValues;
  static ChangeStatusForbiddenErrorMessageEnum valueOf(String name) => _$changeStatusForbiddenErrorMessageEnumValueOf(name);
}

class ChangeStatusForbiddenErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const ChangeStatusForbiddenErrorHttpStatusCodeEnum number400 = _$changeStatusForbiddenErrorHttpStatusCodeEnum_number400;

  static Serializer<ChangeStatusForbiddenErrorHttpStatusCodeEnum> get serializer => _$changeStatusForbiddenErrorHttpStatusCodeEnumSerializer;

  const ChangeStatusForbiddenErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<ChangeStatusForbiddenErrorHttpStatusCodeEnum> get values => _$changeStatusForbiddenErrorHttpStatusCodeEnumValues;
  static ChangeStatusForbiddenErrorHttpStatusCodeEnum valueOf(String name) => _$changeStatusForbiddenErrorHttpStatusCodeEnumValueOf(name);
}

