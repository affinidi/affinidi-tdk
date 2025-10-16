//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unexpected_error.g.dart';

/// UnexpectedError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class UnexpectedError
    implements Built<UnexpectedError, UnexpectedErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  UnexpectedErrorNameEnum get name;
  // enum nameEnum {  UnexpectedError,  };

  @BuiltValueField(wireName: r'message')
  UnexpectedErrorMessageEnum get message;
  // enum messageEnum {  Unexpected Error Occurred.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  UnexpectedErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  500,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  UnexpectedError._();

  factory UnexpectedError([void updates(UnexpectedErrorBuilder b)]) =
      _$UnexpectedError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnexpectedErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnexpectedError> get serializer =>
      _$UnexpectedErrorSerializer();
}

class _$UnexpectedErrorSerializer
    implements PrimitiveSerializer<UnexpectedError> {
  @override
  final Iterable<Type> types = const [UnexpectedError, _$UnexpectedError];

  @override
  final String wireName = r'UnexpectedError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnexpectedError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(UnexpectedErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(UnexpectedErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(UnexpectedErrorHttpStatusCodeEnum),
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
    UnexpectedError object, {
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
    required UnexpectedErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnexpectedErrorNameEnum),
          ) as UnexpectedErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnexpectedErrorMessageEnum),
          ) as UnexpectedErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnexpectedErrorHttpStatusCodeEnum),
          ) as UnexpectedErrorHttpStatusCodeEnum;
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
  UnexpectedError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnexpectedErrorBuilder();
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

class UnexpectedErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UnexpectedError')
  static const UnexpectedErrorNameEnum unexpectedError =
      _$unexpectedErrorNameEnum_unexpectedError;

  static Serializer<UnexpectedErrorNameEnum> get serializer =>
      _$unexpectedErrorNameEnumSerializer;

  const UnexpectedErrorNameEnum._(String name) : super(name);

  static BuiltSet<UnexpectedErrorNameEnum> get values =>
      _$unexpectedErrorNameEnumValues;
  static UnexpectedErrorNameEnum valueOf(String name) =>
      _$unexpectedErrorNameEnumValueOf(name);
}

class UnexpectedErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Unexpected Error Occurred.')
  static const UnexpectedErrorMessageEnum unexpectedErrorOccurredPeriod =
      _$unexpectedErrorMessageEnum_unexpectedErrorOccurredPeriod;

  static Serializer<UnexpectedErrorMessageEnum> get serializer =>
      _$unexpectedErrorMessageEnumSerializer;

  const UnexpectedErrorMessageEnum._(String name) : super(name);

  static BuiltSet<UnexpectedErrorMessageEnum> get values =>
      _$unexpectedErrorMessageEnumValues;
  static UnexpectedErrorMessageEnum valueOf(String name) =>
      _$unexpectedErrorMessageEnumValueOf(name);
}

class UnexpectedErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 500)
  static const UnexpectedErrorHttpStatusCodeEnum number500 =
      _$unexpectedErrorHttpStatusCodeEnum_number500;

  static Serializer<UnexpectedErrorHttpStatusCodeEnum> get serializer =>
      _$unexpectedErrorHttpStatusCodeEnumSerializer;

  const UnexpectedErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<UnexpectedErrorHttpStatusCodeEnum> get values =>
      _$unexpectedErrorHttpStatusCodeEnumValues;
  static UnexpectedErrorHttpStatusCodeEnum valueOf(String name) =>
      _$unexpectedErrorHttpStatusCodeEnumValueOf(name);
}
