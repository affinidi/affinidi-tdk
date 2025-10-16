//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_did_error.g.dart';

/// InvalidDIDError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidDIDError
    implements Built<InvalidDIDError, InvalidDIDErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidDIDErrorNameEnum get name;
  // enum nameEnum {  InvalidDIDError,  };

  @BuiltValueField(wireName: r'message')
  InvalidDIDErrorMessageEnum get message;
  // enum messageEnum {  Unable to resolve DID method. Invalid public key,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidDIDErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  InvalidDIDError._();

  factory InvalidDIDError([void updates(InvalidDIDErrorBuilder b)]) =
      _$InvalidDIDError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidDIDErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidDIDError> get serializer =>
      _$InvalidDIDErrorSerializer();
}

class _$InvalidDIDErrorSerializer
    implements PrimitiveSerializer<InvalidDIDError> {
  @override
  final Iterable<Type> types = const [InvalidDIDError, _$InvalidDIDError];

  @override
  final String wireName = r'InvalidDIDError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidDIDError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidDIDErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidDIDErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidDIDErrorHttpStatusCodeEnum),
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
    InvalidDIDError object, {
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
    required InvalidDIDErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidDIDErrorNameEnum),
          ) as InvalidDIDErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidDIDErrorMessageEnum),
          ) as InvalidDIDErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidDIDErrorHttpStatusCodeEnum),
          ) as InvalidDIDErrorHttpStatusCodeEnum;
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
  InvalidDIDError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidDIDErrorBuilder();
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

class InvalidDIDErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidDIDError')
  static const InvalidDIDErrorNameEnum invalidDIDError =
      _$invalidDIDErrorNameEnum_invalidDIDError;

  static Serializer<InvalidDIDErrorNameEnum> get serializer =>
      _$invalidDIDErrorNameEnumSerializer;

  const InvalidDIDErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidDIDErrorNameEnum> get values =>
      _$invalidDIDErrorNameEnumValues;
  static InvalidDIDErrorNameEnum valueOf(String name) =>
      _$invalidDIDErrorNameEnumValueOf(name);
}

class InvalidDIDErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'Unable to resolve DID method. Invalid public key')
  static const InvalidDIDErrorMessageEnum
      unableToResolveDIDMethodPeriodInvalidPublicKey =
      _$invalidDIDErrorMessageEnum_unableToResolveDIDMethodPeriodInvalidPublicKey;

  static Serializer<InvalidDIDErrorMessageEnum> get serializer =>
      _$invalidDIDErrorMessageEnumSerializer;

  const InvalidDIDErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidDIDErrorMessageEnum> get values =>
      _$invalidDIDErrorMessageEnumValues;
  static InvalidDIDErrorMessageEnum valueOf(String name) =>
      _$invalidDIDErrorMessageEnumValueOf(name);
}

class InvalidDIDErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidDIDErrorHttpStatusCodeEnum number400 =
      _$invalidDIDErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidDIDErrorHttpStatusCodeEnum> get serializer =>
      _$invalidDIDErrorHttpStatusCodeEnumSerializer;

  const InvalidDIDErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InvalidDIDErrorHttpStatusCodeEnum> get values =>
      _$invalidDIDErrorHttpStatusCodeEnumValues;
  static InvalidDIDErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidDIDErrorHttpStatusCodeEnumValueOf(name);
}
