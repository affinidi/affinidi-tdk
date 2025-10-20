//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_jwt_token_error.g.dart';

/// InvalidJwtTokenError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidJwtTokenError
    implements Built<InvalidJwtTokenError, InvalidJwtTokenErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidJwtTokenErrorNameEnum get name;
  // enum nameEnum {  InvalidJwtTokenError,  };

  @BuiltValueField(wireName: r'message')
  InvalidJwtTokenErrorMessageEnum get message;
  // enum messageEnum {  JWT token is invalid,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidJwtTokenErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  401,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  InvalidJwtTokenError._();

  factory InvalidJwtTokenError([void updates(InvalidJwtTokenErrorBuilder b)]) =
      _$InvalidJwtTokenError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidJwtTokenErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidJwtTokenError> get serializer =>
      _$InvalidJwtTokenErrorSerializer();
}

class _$InvalidJwtTokenErrorSerializer
    implements PrimitiveSerializer<InvalidJwtTokenError> {
  @override
  final Iterable<Type> types = const [
    InvalidJwtTokenError,
    _$InvalidJwtTokenError
  ];

  @override
  final String wireName = r'InvalidJwtTokenError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidJwtTokenError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidJwtTokenErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidJwtTokenErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidJwtTokenErrorHttpStatusCodeEnum),
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
            BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvalidJwtTokenError object, {
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
    required InvalidJwtTokenErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidJwtTokenErrorNameEnum),
          ) as InvalidJwtTokenErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidJwtTokenErrorMessageEnum),
          ) as InvalidJwtTokenErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidJwtTokenErrorHttpStatusCodeEnum),
          ) as InvalidJwtTokenErrorHttpStatusCodeEnum;
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
                BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
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
  InvalidJwtTokenError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidJwtTokenErrorBuilder();
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

class InvalidJwtTokenErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidJwtTokenError')
  static const InvalidJwtTokenErrorNameEnum invalidJwtTokenError =
      _$invalidJwtTokenErrorNameEnum_invalidJwtTokenError;

  static Serializer<InvalidJwtTokenErrorNameEnum> get serializer =>
      _$invalidJwtTokenErrorNameEnumSerializer;

  const InvalidJwtTokenErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidJwtTokenErrorNameEnum> get values =>
      _$invalidJwtTokenErrorNameEnumValues;
  static InvalidJwtTokenErrorNameEnum valueOf(String name) =>
      _$invalidJwtTokenErrorNameEnumValueOf(name);
}

class InvalidJwtTokenErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'JWT token is invalid')
  static const InvalidJwtTokenErrorMessageEnum jWTTokenIsInvalid =
      _$invalidJwtTokenErrorMessageEnum_jWTTokenIsInvalid;

  static Serializer<InvalidJwtTokenErrorMessageEnum> get serializer =>
      _$invalidJwtTokenErrorMessageEnumSerializer;

  const InvalidJwtTokenErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidJwtTokenErrorMessageEnum> get values =>
      _$invalidJwtTokenErrorMessageEnumValues;
  static InvalidJwtTokenErrorMessageEnum valueOf(String name) =>
      _$invalidJwtTokenErrorMessageEnumValueOf(name);
}

class InvalidJwtTokenErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 401)
  static const InvalidJwtTokenErrorHttpStatusCodeEnum number401 =
      _$invalidJwtTokenErrorHttpStatusCodeEnum_number401;

  static Serializer<InvalidJwtTokenErrorHttpStatusCodeEnum> get serializer =>
      _$invalidJwtTokenErrorHttpStatusCodeEnumSerializer;

  const InvalidJwtTokenErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InvalidJwtTokenErrorHttpStatusCodeEnum> get values =>
      _$invalidJwtTokenErrorHttpStatusCodeEnumValues;
  static InvalidJwtTokenErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidJwtTokenErrorHttpStatusCodeEnumValueOf(name);
}
