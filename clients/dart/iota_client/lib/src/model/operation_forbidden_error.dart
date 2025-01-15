//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iota_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'operation_forbidden_error.g.dart';

/// OperationForbiddenError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class OperationForbiddenError implements Built<OperationForbiddenError, OperationForbiddenErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  OperationForbiddenErrorNameEnum get name;
  // enum nameEnum {  OperationForbiddenError,  };

  @BuiltValueField(wireName: r'message')
  OperationForbiddenErrorMessageEnum get message;
  // enum messageEnum {  Operation forbidden: ${param}.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  OperationForbiddenErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  403,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  OperationForbiddenError._();

  factory OperationForbiddenError([void updates(OperationForbiddenErrorBuilder b)]) = _$OperationForbiddenError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OperationForbiddenErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OperationForbiddenError> get serializer => _$OperationForbiddenErrorSerializer();
}

class _$OperationForbiddenErrorSerializer implements PrimitiveSerializer<OperationForbiddenError> {
  @override
  final Iterable<Type> types = const [OperationForbiddenError, _$OperationForbiddenError];

  @override
  final String wireName = r'OperationForbiddenError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OperationForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(OperationForbiddenErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(OperationForbiddenErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(OperationForbiddenErrorHttpStatusCodeEnum),
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
    OperationForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OperationForbiddenErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperationForbiddenErrorNameEnum),
          ) as OperationForbiddenErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperationForbiddenErrorMessageEnum),
          ) as OperationForbiddenErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OperationForbiddenErrorHttpStatusCodeEnum),
          ) as OperationForbiddenErrorHttpStatusCodeEnum;
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
  OperationForbiddenError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OperationForbiddenErrorBuilder();
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

class OperationForbiddenErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OperationForbiddenError')
  static const OperationForbiddenErrorNameEnum operationForbiddenError = _$operationForbiddenErrorNameEnum_operationForbiddenError;

  static Serializer<OperationForbiddenErrorNameEnum> get serializer => _$operationForbiddenErrorNameEnumSerializer;

  const OperationForbiddenErrorNameEnum._(String name): super(name);

  static BuiltSet<OperationForbiddenErrorNameEnum> get values => _$operationForbiddenErrorNameEnumValues;
  static OperationForbiddenErrorNameEnum valueOf(String name) => _$operationForbiddenErrorNameEnumValueOf(name);
}

class OperationForbiddenErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Operation forbidden: ${param}.')
  static const OperationForbiddenErrorMessageEnum operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = _$operationForbiddenErrorMessageEnum_operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;

  static Serializer<OperationForbiddenErrorMessageEnum> get serializer => _$operationForbiddenErrorMessageEnumSerializer;

  const OperationForbiddenErrorMessageEnum._(String name): super(name);

  static BuiltSet<OperationForbiddenErrorMessageEnum> get values => _$operationForbiddenErrorMessageEnumValues;
  static OperationForbiddenErrorMessageEnum valueOf(String name) => _$operationForbiddenErrorMessageEnumValueOf(name);
}

class OperationForbiddenErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 403)
  static const OperationForbiddenErrorHttpStatusCodeEnum number403 = _$operationForbiddenErrorHttpStatusCodeEnum_number403;

  static Serializer<OperationForbiddenErrorHttpStatusCodeEnum> get serializer => _$operationForbiddenErrorHttpStatusCodeEnumSerializer;

  const OperationForbiddenErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<OperationForbiddenErrorHttpStatusCodeEnum> get values => _$operationForbiddenErrorHttpStatusCodeEnumValues;
  static OperationForbiddenErrorHttpStatusCodeEnum valueOf(String name) => _$operationForbiddenErrorHttpStatusCodeEnumValueOf(name);
}

