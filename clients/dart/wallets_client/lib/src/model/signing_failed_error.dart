//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signing_failed_error.g.dart';

/// SigningFailedError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class SigningFailedError
    implements Built<SigningFailedError, SigningFailedErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  SigningFailedErrorNameEnum get name;
  // enum nameEnum {  SigningFailedError,  };

  @BuiltValueField(wireName: r'message')
  SigningFailedErrorMessageEnum get message;
  // enum messageEnum {  Signing failed.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  SigningFailedErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  SigningFailedError._();

  factory SigningFailedError([void updates(SigningFailedErrorBuilder b)]) =
      _$SigningFailedError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SigningFailedErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SigningFailedError> get serializer =>
      _$SigningFailedErrorSerializer();
}

class _$SigningFailedErrorSerializer
    implements PrimitiveSerializer<SigningFailedError> {
  @override
  final Iterable<Type> types = const [SigningFailedError, _$SigningFailedError];

  @override
  final String wireName = r'SigningFailedError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SigningFailedError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(SigningFailedErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(SigningFailedErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(SigningFailedErrorHttpStatusCodeEnum),
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
    SigningFailedError object, {
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
    required SigningFailedErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SigningFailedErrorNameEnum),
          ) as SigningFailedErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SigningFailedErrorMessageEnum),
          ) as SigningFailedErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SigningFailedErrorHttpStatusCodeEnum),
          ) as SigningFailedErrorHttpStatusCodeEnum;
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
  SigningFailedError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SigningFailedErrorBuilder();
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

class SigningFailedErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SigningFailedError')
  static const SigningFailedErrorNameEnum signingFailedError =
      _$signingFailedErrorNameEnum_signingFailedError;

  static Serializer<SigningFailedErrorNameEnum> get serializer =>
      _$signingFailedErrorNameEnumSerializer;

  const SigningFailedErrorNameEnum._(String name) : super(name);

  static BuiltSet<SigningFailedErrorNameEnum> get values =>
      _$signingFailedErrorNameEnumValues;
  static SigningFailedErrorNameEnum valueOf(String name) =>
      _$signingFailedErrorNameEnumValueOf(name);
}

class SigningFailedErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Signing failed.')
  static const SigningFailedErrorMessageEnum signingFailedPeriod =
      _$signingFailedErrorMessageEnum_signingFailedPeriod;

  static Serializer<SigningFailedErrorMessageEnum> get serializer =>
      _$signingFailedErrorMessageEnumSerializer;

  const SigningFailedErrorMessageEnum._(String name) : super(name);

  static BuiltSet<SigningFailedErrorMessageEnum> get values =>
      _$signingFailedErrorMessageEnumValues;
  static SigningFailedErrorMessageEnum valueOf(String name) =>
      _$signingFailedErrorMessageEnumValueOf(name);
}

class SigningFailedErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const SigningFailedErrorHttpStatusCodeEnum number400 =
      _$signingFailedErrorHttpStatusCodeEnum_number400;

  static Serializer<SigningFailedErrorHttpStatusCodeEnum> get serializer =>
      _$signingFailedErrorHttpStatusCodeEnumSerializer;

  const SigningFailedErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<SigningFailedErrorHttpStatusCodeEnum> get values =>
      _$signingFailedErrorHttpStatusCodeEnumValues;
  static SigningFailedErrorHttpStatusCodeEnum valueOf(String name) =>
      _$signingFailedErrorHttpStatusCodeEnumValueOf(name);
}
