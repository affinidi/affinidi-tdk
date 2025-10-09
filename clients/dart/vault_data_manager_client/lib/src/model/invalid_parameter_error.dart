//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_vault_data_manager_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_parameter_error.g.dart';

/// Some of the parameters are invalid
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidParameterError
    implements Built<InvalidParameterError, InvalidParameterErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidParameterErrorNameEnum get name;
  // enum nameEnum {  InvalidParameterError,  };

  @BuiltValueField(wireName: r'message')
  InvalidParameterErrorMessageEnum get message;
  // enum messageEnum {  Invalid parameter: ${param}.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidParameterErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  InvalidParameterError._();

  factory InvalidParameterError(
      [void updates(InvalidParameterErrorBuilder b)]) = _$InvalidParameterError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidParameterErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidParameterError> get serializer =>
      _$InvalidParameterErrorSerializer();
}

class _$InvalidParameterErrorSerializer
    implements PrimitiveSerializer<InvalidParameterError> {
  @override
  final Iterable<Type> types = const [
    InvalidParameterError,
    _$InvalidParameterError
  ];

  @override
  final String wireName = r'InvalidParameterError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidParameterError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidParameterErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidParameterErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidParameterErrorHttpStatusCodeEnum),
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
            BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvalidParameterError object, {
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
    required InvalidParameterErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidParameterErrorNameEnum),
          ) as InvalidParameterErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidParameterErrorMessageEnum),
          ) as InvalidParameterErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidParameterErrorHttpStatusCodeEnum),
          ) as InvalidParameterErrorHttpStatusCodeEnum;
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
                BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
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
  InvalidParameterError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidParameterErrorBuilder();
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

class InvalidParameterErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidParameterError')
  static const InvalidParameterErrorNameEnum invalidParameterError =
      _$invalidParameterErrorNameEnum_invalidParameterError;

  static Serializer<InvalidParameterErrorNameEnum> get serializer =>
      _$invalidParameterErrorNameEnumSerializer;

  const InvalidParameterErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidParameterErrorNameEnum> get values =>
      _$invalidParameterErrorNameEnumValues;
  static InvalidParameterErrorNameEnum valueOf(String name) =>
      _$invalidParameterErrorNameEnumValueOf(name);
}

class InvalidParameterErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Invalid parameter: ${param}.')
  static const InvalidParameterErrorMessageEnum
      invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
      _$invalidParameterErrorMessageEnum_invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;

  static Serializer<InvalidParameterErrorMessageEnum> get serializer =>
      _$invalidParameterErrorMessageEnumSerializer;

  const InvalidParameterErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidParameterErrorMessageEnum> get values =>
      _$invalidParameterErrorMessageEnumValues;
  static InvalidParameterErrorMessageEnum valueOf(String name) =>
      _$invalidParameterErrorMessageEnumValueOf(name);
}

class InvalidParameterErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidParameterErrorHttpStatusCodeEnum number400 =
      _$invalidParameterErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidParameterErrorHttpStatusCodeEnum> get serializer =>
      _$invalidParameterErrorHttpStatusCodeEnumSerializer;

  const InvalidParameterErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InvalidParameterErrorHttpStatusCodeEnum> get values =>
      _$invalidParameterErrorHttpStatusCodeEnumValues;
  static InvalidParameterErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidParameterErrorHttpStatusCodeEnumValueOf(name);
}
