//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_credential_type_error.g.dart';

/// InvalidCredentialTypeError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class InvalidCredentialTypeError implements Built<InvalidCredentialTypeError, InvalidCredentialTypeErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidCredentialTypeErrorNameEnum get name;
  // enum nameEnum {  InvalidCredentialTypeError,  };

  @BuiltValueField(wireName: r'message')
  InvalidCredentialTypeErrorMessageEnum get message;
  // enum messageEnum {  The requested credential type is not supported,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidCredentialTypeErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  InvalidCredentialTypeError._();

  factory InvalidCredentialTypeError([void updates(InvalidCredentialTypeErrorBuilder b)]) = _$InvalidCredentialTypeError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidCredentialTypeErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidCredentialTypeError> get serializer => _$InvalidCredentialTypeErrorSerializer();
}

class _$InvalidCredentialTypeErrorSerializer implements PrimitiveSerializer<InvalidCredentialTypeError> {
  @override
  final Iterable<Type> types = const [InvalidCredentialTypeError, _$InvalidCredentialTypeError];

  @override
  final String wireName = r'InvalidCredentialTypeError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidCredentialTypeError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidCredentialTypeErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidCredentialTypeErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidCredentialTypeErrorHttpStatusCodeEnum),
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
    InvalidCredentialTypeError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvalidCredentialTypeErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidCredentialTypeErrorNameEnum),
          ) as InvalidCredentialTypeErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidCredentialTypeErrorMessageEnum),
          ) as InvalidCredentialTypeErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidCredentialTypeErrorHttpStatusCodeEnum),
          ) as InvalidCredentialTypeErrorHttpStatusCodeEnum;
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
  InvalidCredentialTypeError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidCredentialTypeErrorBuilder();
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

class InvalidCredentialTypeErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'InvalidCredentialTypeError')
  static const InvalidCredentialTypeErrorNameEnum invalidCredentialTypeError = _$invalidCredentialTypeErrorNameEnum_invalidCredentialTypeError;

  static Serializer<InvalidCredentialTypeErrorNameEnum> get serializer => _$invalidCredentialTypeErrorNameEnumSerializer;

  const InvalidCredentialTypeErrorNameEnum._(String name): super(name);

  static BuiltSet<InvalidCredentialTypeErrorNameEnum> get values => _$invalidCredentialTypeErrorNameEnumValues;
  static InvalidCredentialTypeErrorNameEnum valueOf(String name) => _$invalidCredentialTypeErrorNameEnumValueOf(name);
}

class InvalidCredentialTypeErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'The requested credential type is not supported')
  static const InvalidCredentialTypeErrorMessageEnum theRequestedCredentialTypeIsNotSupported = _$invalidCredentialTypeErrorMessageEnum_theRequestedCredentialTypeIsNotSupported;

  static Serializer<InvalidCredentialTypeErrorMessageEnum> get serializer => _$invalidCredentialTypeErrorMessageEnumSerializer;

  const InvalidCredentialTypeErrorMessageEnum._(String name): super(name);

  static BuiltSet<InvalidCredentialTypeErrorMessageEnum> get values => _$invalidCredentialTypeErrorMessageEnumValues;
  static InvalidCredentialTypeErrorMessageEnum valueOf(String name) => _$invalidCredentialTypeErrorMessageEnumValueOf(name);
}

class InvalidCredentialTypeErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidCredentialTypeErrorHttpStatusCodeEnum number400 = _$invalidCredentialTypeErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidCredentialTypeErrorHttpStatusCodeEnum> get serializer => _$invalidCredentialTypeErrorHttpStatusCodeEnumSerializer;

  const InvalidCredentialTypeErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<InvalidCredentialTypeErrorHttpStatusCodeEnum> get values => _$invalidCredentialTypeErrorHttpStatusCodeEnumValues;
  static InvalidCredentialTypeErrorHttpStatusCodeEnum valueOf(String name) => _$invalidCredentialTypeErrorHttpStatusCodeEnumValueOf(name);
}

