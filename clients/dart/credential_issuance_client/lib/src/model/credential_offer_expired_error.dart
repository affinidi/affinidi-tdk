//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_offer_expired_error.g.dart';

/// CredentialOfferExpiredError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CredentialOfferExpiredError implements Built<CredentialOfferExpiredError, CredentialOfferExpiredErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  CredentialOfferExpiredErrorNameEnum get name;
  // enum nameEnum {  CredentialOfferExpiredError,  };

  @BuiltValueField(wireName: r'message')
  CredentialOfferExpiredErrorMessageEnum get message;
  // enum messageEnum {  Credential offer is expired,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  CredentialOfferExpiredErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  CredentialOfferExpiredError._();

  factory CredentialOfferExpiredError([void updates(CredentialOfferExpiredErrorBuilder b)]) = _$CredentialOfferExpiredError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialOfferExpiredErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialOfferExpiredError> get serializer => _$CredentialOfferExpiredErrorSerializer();
}

class _$CredentialOfferExpiredErrorSerializer implements PrimitiveSerializer<CredentialOfferExpiredError> {
  @override
  final Iterable<Type> types = const [CredentialOfferExpiredError, _$CredentialOfferExpiredError];

  @override
  final String wireName = r'CredentialOfferExpiredError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialOfferExpiredError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(CredentialOfferExpiredErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(CredentialOfferExpiredErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(CredentialOfferExpiredErrorHttpStatusCodeEnum),
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
    CredentialOfferExpiredError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialOfferExpiredErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferExpiredErrorNameEnum),
          ) as CredentialOfferExpiredErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferExpiredErrorMessageEnum),
          ) as CredentialOfferExpiredErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferExpiredErrorHttpStatusCodeEnum),
          ) as CredentialOfferExpiredErrorHttpStatusCodeEnum;
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
  CredentialOfferExpiredError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialOfferExpiredErrorBuilder();
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

class CredentialOfferExpiredErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CredentialOfferExpiredError')
  static const CredentialOfferExpiredErrorNameEnum credentialOfferExpiredError = _$credentialOfferExpiredErrorNameEnum_credentialOfferExpiredError;

  static Serializer<CredentialOfferExpiredErrorNameEnum> get serializer => _$credentialOfferExpiredErrorNameEnumSerializer;

  const CredentialOfferExpiredErrorNameEnum._(String name): super(name);

  static BuiltSet<CredentialOfferExpiredErrorNameEnum> get values => _$credentialOfferExpiredErrorNameEnumValues;
  static CredentialOfferExpiredErrorNameEnum valueOf(String name) => _$credentialOfferExpiredErrorNameEnumValueOf(name);
}

class CredentialOfferExpiredErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Credential offer is expired')
  static const CredentialOfferExpiredErrorMessageEnum credentialOfferIsExpired = _$credentialOfferExpiredErrorMessageEnum_credentialOfferIsExpired;

  static Serializer<CredentialOfferExpiredErrorMessageEnum> get serializer => _$credentialOfferExpiredErrorMessageEnumSerializer;

  const CredentialOfferExpiredErrorMessageEnum._(String name): super(name);

  static BuiltSet<CredentialOfferExpiredErrorMessageEnum> get values => _$credentialOfferExpiredErrorMessageEnumValues;
  static CredentialOfferExpiredErrorMessageEnum valueOf(String name) => _$credentialOfferExpiredErrorMessageEnumValueOf(name);
}

class CredentialOfferExpiredErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CredentialOfferExpiredErrorHttpStatusCodeEnum number400 = _$credentialOfferExpiredErrorHttpStatusCodeEnum_number400;

  static Serializer<CredentialOfferExpiredErrorHttpStatusCodeEnum> get serializer => _$credentialOfferExpiredErrorHttpStatusCodeEnumSerializer;

  const CredentialOfferExpiredErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CredentialOfferExpiredErrorHttpStatusCodeEnum> get values => _$credentialOfferExpiredErrorHttpStatusCodeEnumValues;
  static CredentialOfferExpiredErrorHttpStatusCodeEnum valueOf(String name) => _$credentialOfferExpiredErrorHttpStatusCodeEnumValueOf(name);
}

