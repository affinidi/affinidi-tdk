//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_did_parameter_error.g.dart';

/// InvalidDidParameterError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class InvalidDidParameterError implements Built<InvalidDidParameterError, InvalidDidParameterErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidDidParameterErrorNameEnum get name;
  // enum nameEnum {  InvalidDidParameterError,  };

  @BuiltValueField(wireName: r'message')
  InvalidDidParameterErrorMessageEnum get message;
  // enum messageEnum {  Given did in field toDid is invalid. Use only resolvable form of did.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidDidParameterErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  InvalidDidParameterError._();

  factory InvalidDidParameterError([void updates(InvalidDidParameterErrorBuilder b)]) = _$InvalidDidParameterError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidDidParameterErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidDidParameterError> get serializer => _$InvalidDidParameterErrorSerializer();
}

class _$InvalidDidParameterErrorSerializer implements PrimitiveSerializer<InvalidDidParameterError> {
  @override
  final Iterable<Type> types = const [InvalidDidParameterError, _$InvalidDidParameterError];

  @override
  final String wireName = r'InvalidDidParameterError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidDidParameterError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidDidParameterErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidDidParameterErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidDidParameterErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvalidDidParameterError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvalidDidParameterErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidDidParameterErrorNameEnum),
          ) as InvalidDidParameterErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidDidParameterErrorMessageEnum),
          ) as InvalidDidParameterErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidDidParameterErrorHttpStatusCodeEnum),
          ) as InvalidDidParameterErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
          ) as BuiltList<ServiceErrorResponseDetailsInner>;
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
  InvalidDidParameterError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidDidParameterErrorBuilder();
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

class InvalidDidParameterErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'InvalidDidParameterError')
  static const InvalidDidParameterErrorNameEnum invalidDidParameterError = _$invalidDidParameterErrorNameEnum_invalidDidParameterError;

  static Serializer<InvalidDidParameterErrorNameEnum> get serializer => _$invalidDidParameterErrorNameEnumSerializer;

  const InvalidDidParameterErrorNameEnum._(String name): super(name);

  static BuiltSet<InvalidDidParameterErrorNameEnum> get values => _$invalidDidParameterErrorNameEnumValues;
  static InvalidDidParameterErrorNameEnum valueOf(String name) => _$invalidDidParameterErrorNameEnumValueOf(name);
}

class InvalidDidParameterErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Given did in field toDid is invalid. Use only resolvable form of did.')
  static const InvalidDidParameterErrorMessageEnum givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod = _$invalidDidParameterErrorMessageEnum_givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod;

  static Serializer<InvalidDidParameterErrorMessageEnum> get serializer => _$invalidDidParameterErrorMessageEnumSerializer;

  const InvalidDidParameterErrorMessageEnum._(String name): super(name);

  static BuiltSet<InvalidDidParameterErrorMessageEnum> get values => _$invalidDidParameterErrorMessageEnumValues;
  static InvalidDidParameterErrorMessageEnum valueOf(String name) => _$invalidDidParameterErrorMessageEnumValueOf(name);
}

class InvalidDidParameterErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidDidParameterErrorHttpStatusCodeEnum number400 = _$invalidDidParameterErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidDidParameterErrorHttpStatusCodeEnum> get serializer => _$invalidDidParameterErrorHttpStatusCodeEnumSerializer;

  const InvalidDidParameterErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<InvalidDidParameterErrorHttpStatusCodeEnum> get values => _$invalidDidParameterErrorHttpStatusCodeEnumValues;
  static InvalidDidParameterErrorHttpStatusCodeEnum valueOf(String name) => _$invalidDidParameterErrorHttpStatusCodeEnumValueOf(name);
}

