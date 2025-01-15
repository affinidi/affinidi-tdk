//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_offer_claimed_error.g.dart';

/// CredentialOfferClaimedError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CredentialOfferClaimedError implements Built<CredentialOfferClaimedError, CredentialOfferClaimedErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  CredentialOfferClaimedErrorNameEnum get name;
  // enum nameEnum {  CredentialOfferClaimedError,  };

  @BuiltValueField(wireName: r'message')
  CredentialOfferClaimedErrorMessageEnum get message;
  // enum messageEnum {  Credential offer is already claimed,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  CredentialOfferClaimedErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  CredentialOfferClaimedError._();

  factory CredentialOfferClaimedError([void updates(CredentialOfferClaimedErrorBuilder b)]) = _$CredentialOfferClaimedError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialOfferClaimedErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialOfferClaimedError> get serializer => _$CredentialOfferClaimedErrorSerializer();
}

class _$CredentialOfferClaimedErrorSerializer implements PrimitiveSerializer<CredentialOfferClaimedError> {
  @override
  final Iterable<Type> types = const [CredentialOfferClaimedError, _$CredentialOfferClaimedError];

  @override
  final String wireName = r'CredentialOfferClaimedError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialOfferClaimedError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(CredentialOfferClaimedErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(CredentialOfferClaimedErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(CredentialOfferClaimedErrorHttpStatusCodeEnum),
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
    CredentialOfferClaimedError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialOfferClaimedErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferClaimedErrorNameEnum),
          ) as CredentialOfferClaimedErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferClaimedErrorMessageEnum),
          ) as CredentialOfferClaimedErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferClaimedErrorHttpStatusCodeEnum),
          ) as CredentialOfferClaimedErrorHttpStatusCodeEnum;
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
  CredentialOfferClaimedError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialOfferClaimedErrorBuilder();
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

class CredentialOfferClaimedErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CredentialOfferClaimedError')
  static const CredentialOfferClaimedErrorNameEnum credentialOfferClaimedError = _$credentialOfferClaimedErrorNameEnum_credentialOfferClaimedError;

  static Serializer<CredentialOfferClaimedErrorNameEnum> get serializer => _$credentialOfferClaimedErrorNameEnumSerializer;

  const CredentialOfferClaimedErrorNameEnum._(String name): super(name);

  static BuiltSet<CredentialOfferClaimedErrorNameEnum> get values => _$credentialOfferClaimedErrorNameEnumValues;
  static CredentialOfferClaimedErrorNameEnum valueOf(String name) => _$credentialOfferClaimedErrorNameEnumValueOf(name);
}

class CredentialOfferClaimedErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Credential offer is already claimed')
  static const CredentialOfferClaimedErrorMessageEnum credentialOfferIsAlreadyClaimed = _$credentialOfferClaimedErrorMessageEnum_credentialOfferIsAlreadyClaimed;

  static Serializer<CredentialOfferClaimedErrorMessageEnum> get serializer => _$credentialOfferClaimedErrorMessageEnumSerializer;

  const CredentialOfferClaimedErrorMessageEnum._(String name): super(name);

  static BuiltSet<CredentialOfferClaimedErrorMessageEnum> get values => _$credentialOfferClaimedErrorMessageEnumValues;
  static CredentialOfferClaimedErrorMessageEnum valueOf(String name) => _$credentialOfferClaimedErrorMessageEnumValueOf(name);
}

class CredentialOfferClaimedErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CredentialOfferClaimedErrorHttpStatusCodeEnum number400 = _$credentialOfferClaimedErrorHttpStatusCodeEnum_number400;

  static Serializer<CredentialOfferClaimedErrorHttpStatusCodeEnum> get serializer => _$credentialOfferClaimedErrorHttpStatusCodeEnumSerializer;

  const CredentialOfferClaimedErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CredentialOfferClaimedErrorHttpStatusCodeEnum> get values => _$credentialOfferClaimedErrorHttpStatusCodeEnumValues;
  static CredentialOfferClaimedErrorHttpStatusCodeEnum valueOf(String name) => _$credentialOfferClaimedErrorHttpStatusCodeEnumValueOf(name);
}

