//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_credential_request_error.g.dart';

/// InvalidCredentialRequestError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidCredentialRequestError
    implements
        Built<InvalidCredentialRequestError,
            InvalidCredentialRequestErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidCredentialRequestErrorNameEnum get name;
  // enum nameEnum {  InvalidCredentialRequestError,  };

  @BuiltValueField(wireName: r'message')
  InvalidCredentialRequestErrorMessageEnum get message;
  // enum messageEnum {  Credential Request is invalid,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidCredentialRequestErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  InvalidCredentialRequestError._();

  factory InvalidCredentialRequestError(
          [void updates(InvalidCredentialRequestErrorBuilder b)]) =
      _$InvalidCredentialRequestError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidCredentialRequestErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidCredentialRequestError> get serializer =>
      _$InvalidCredentialRequestErrorSerializer();
}

class _$InvalidCredentialRequestErrorSerializer
    implements PrimitiveSerializer<InvalidCredentialRequestError> {
  @override
  final Iterable<Type> types = const [
    InvalidCredentialRequestError,
    _$InvalidCredentialRequestError
  ];

  @override
  final String wireName = r'InvalidCredentialRequestError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidCredentialRequestError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidCredentialRequestErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidCredentialRequestErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType:
          const FullType(InvalidCredentialRequestErrorHttpStatusCodeEnum),
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
    InvalidCredentialRequestError object, {
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
    required InvalidCredentialRequestErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidCredentialRequestErrorNameEnum),
          ) as InvalidCredentialRequestErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidCredentialRequestErrorMessageEnum),
          ) as InvalidCredentialRequestErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidCredentialRequestErrorHttpStatusCodeEnum),
          ) as InvalidCredentialRequestErrorHttpStatusCodeEnum;
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
  InvalidCredentialRequestError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidCredentialRequestErrorBuilder();
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

class InvalidCredentialRequestErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidCredentialRequestError')
  static const InvalidCredentialRequestErrorNameEnum
      invalidCredentialRequestError =
      _$invalidCredentialRequestErrorNameEnum_invalidCredentialRequestError;

  static Serializer<InvalidCredentialRequestErrorNameEnum> get serializer =>
      _$invalidCredentialRequestErrorNameEnumSerializer;

  const InvalidCredentialRequestErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidCredentialRequestErrorNameEnum> get values =>
      _$invalidCredentialRequestErrorNameEnumValues;
  static InvalidCredentialRequestErrorNameEnum valueOf(String name) =>
      _$invalidCredentialRequestErrorNameEnumValueOf(name);
}

class InvalidCredentialRequestErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Credential Request is invalid')
  static const InvalidCredentialRequestErrorMessageEnum
      credentialRequestIsInvalid =
      _$invalidCredentialRequestErrorMessageEnum_credentialRequestIsInvalid;

  static Serializer<InvalidCredentialRequestErrorMessageEnum> get serializer =>
      _$invalidCredentialRequestErrorMessageEnumSerializer;

  const InvalidCredentialRequestErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidCredentialRequestErrorMessageEnum> get values =>
      _$invalidCredentialRequestErrorMessageEnumValues;
  static InvalidCredentialRequestErrorMessageEnum valueOf(String name) =>
      _$invalidCredentialRequestErrorMessageEnumValueOf(name);
}

class InvalidCredentialRequestErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidCredentialRequestErrorHttpStatusCodeEnum number400 =
      _$invalidCredentialRequestErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidCredentialRequestErrorHttpStatusCodeEnum>
      get serializer =>
          _$invalidCredentialRequestErrorHttpStatusCodeEnumSerializer;

  const InvalidCredentialRequestErrorHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<InvalidCredentialRequestErrorHttpStatusCodeEnum> get values =>
      _$invalidCredentialRequestErrorHttpStatusCodeEnumValues;
  static InvalidCredentialRequestErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidCredentialRequestErrorHttpStatusCodeEnumValueOf(name);
}
