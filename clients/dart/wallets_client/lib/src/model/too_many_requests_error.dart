//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'too_many_requests_error.g.dart';

/// TooManyRequestsError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class TooManyRequestsError
    implements Built<TooManyRequestsError, TooManyRequestsErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  TooManyRequestsErrorNameEnum get name;
  // enum nameEnum {  TooManyRequestsError,  };

  @BuiltValueField(wireName: r'message')
  TooManyRequestsErrorMessageEnum get message;
  // enum messageEnum {  Too many concurrent requests to the same wallet. The operation failed after multiple retry attempts due to concurrent updates. Please retry your request after a short delay.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  TooManyRequestsErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  429,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  TooManyRequestsError._();

  factory TooManyRequestsError([void updates(TooManyRequestsErrorBuilder b)]) =
      _$TooManyRequestsError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TooManyRequestsErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TooManyRequestsError> get serializer =>
      _$TooManyRequestsErrorSerializer();
}

class _$TooManyRequestsErrorSerializer
    implements PrimitiveSerializer<TooManyRequestsError> {
  @override
  final Iterable<Type> types = const [
    TooManyRequestsError,
    _$TooManyRequestsError
  ];

  @override
  final String wireName = r'TooManyRequestsError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TooManyRequestsError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(TooManyRequestsErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(TooManyRequestsErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(TooManyRequestsErrorHttpStatusCodeEnum),
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
    TooManyRequestsError object, {
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
    required TooManyRequestsErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TooManyRequestsErrorNameEnum),
          ) as TooManyRequestsErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TooManyRequestsErrorMessageEnum),
          ) as TooManyRequestsErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(TooManyRequestsErrorHttpStatusCodeEnum),
          ) as TooManyRequestsErrorHttpStatusCodeEnum;
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
  TooManyRequestsError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TooManyRequestsErrorBuilder();
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

class TooManyRequestsErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TooManyRequestsError')
  static const TooManyRequestsErrorNameEnum tooManyRequestsError =
      _$tooManyRequestsErrorNameEnum_tooManyRequestsError;

  static Serializer<TooManyRequestsErrorNameEnum> get serializer =>
      _$tooManyRequestsErrorNameEnumSerializer;

  const TooManyRequestsErrorNameEnum._(String name) : super(name);

  static BuiltSet<TooManyRequestsErrorNameEnum> get values =>
      _$tooManyRequestsErrorNameEnumValues;
  static TooManyRequestsErrorNameEnum valueOf(String name) =>
      _$tooManyRequestsErrorNameEnumValueOf(name);
}

class TooManyRequestsErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName:
          r'Too many concurrent requests to the same wallet. The operation failed after multiple retry attempts due to concurrent updates. Please retry your request after a short delay.')
  static const TooManyRequestsErrorMessageEnum
      tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod =
      _$tooManyRequestsErrorMessageEnum_tooManyConcurrentRequestsToTheSameWalletPeriodTheOperationFailedAfterMultipleRetryAttemptsDueToConcurrentUpdatesPeriodPleaseRetryYourRequestAfterAShortDelayPeriod;

  static Serializer<TooManyRequestsErrorMessageEnum> get serializer =>
      _$tooManyRequestsErrorMessageEnumSerializer;

  const TooManyRequestsErrorMessageEnum._(String name) : super(name);

  static BuiltSet<TooManyRequestsErrorMessageEnum> get values =>
      _$tooManyRequestsErrorMessageEnumValues;
  static TooManyRequestsErrorMessageEnum valueOf(String name) =>
      _$tooManyRequestsErrorMessageEnumValueOf(name);
}

class TooManyRequestsErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 429)
  static const TooManyRequestsErrorHttpStatusCodeEnum number429 =
      _$tooManyRequestsErrorHttpStatusCodeEnum_number429;

  static Serializer<TooManyRequestsErrorHttpStatusCodeEnum> get serializer =>
      _$tooManyRequestsErrorHttpStatusCodeEnumSerializer;

  const TooManyRequestsErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<TooManyRequestsErrorHttpStatusCodeEnum> get values =>
      _$tooManyRequestsErrorHttpStatusCodeEnumValues;
  static TooManyRequestsErrorHttpStatusCodeEnum valueOf(String name) =>
      _$tooManyRequestsErrorHttpStatusCodeEnumValueOf(name);
}
