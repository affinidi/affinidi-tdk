//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_issuance_id_exist_error.g.dart';

/// CredentialIssuanceIdExistError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CredentialIssuanceIdExistError implements Built<CredentialIssuanceIdExistError, CredentialIssuanceIdExistErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  CredentialIssuanceIdExistErrorNameEnum get name;
  // enum nameEnum {  CredentialIssuanceIdExistError,  };

  @BuiltValueField(wireName: r'message')
  CredentialIssuanceIdExistErrorMessageEnum get message;
  // enum messageEnum {  issuanceId exist for the project, please use different issuanceId,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  CredentialIssuanceIdExistErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  CredentialIssuanceIdExistError._();

  factory CredentialIssuanceIdExistError([void updates(CredentialIssuanceIdExistErrorBuilder b)]) = _$CredentialIssuanceIdExistError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialIssuanceIdExistErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialIssuanceIdExistError> get serializer => _$CredentialIssuanceIdExistErrorSerializer();
}

class _$CredentialIssuanceIdExistErrorSerializer implements PrimitiveSerializer<CredentialIssuanceIdExistError> {
  @override
  final Iterable<Type> types = const [CredentialIssuanceIdExistError, _$CredentialIssuanceIdExistError];

  @override
  final String wireName = r'CredentialIssuanceIdExistError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialIssuanceIdExistError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(CredentialIssuanceIdExistErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(CredentialIssuanceIdExistErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(CredentialIssuanceIdExistErrorHttpStatusCodeEnum),
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
    CredentialIssuanceIdExistError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialIssuanceIdExistErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialIssuanceIdExistErrorNameEnum),
          ) as CredentialIssuanceIdExistErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialIssuanceIdExistErrorMessageEnum),
          ) as CredentialIssuanceIdExistErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialIssuanceIdExistErrorHttpStatusCodeEnum),
          ) as CredentialIssuanceIdExistErrorHttpStatusCodeEnum;
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
  CredentialIssuanceIdExistError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialIssuanceIdExistErrorBuilder();
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

class CredentialIssuanceIdExistErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CredentialIssuanceIdExistError')
  static const CredentialIssuanceIdExistErrorNameEnum credentialIssuanceIdExistError = _$credentialIssuanceIdExistErrorNameEnum_credentialIssuanceIdExistError;

  static Serializer<CredentialIssuanceIdExistErrorNameEnum> get serializer => _$credentialIssuanceIdExistErrorNameEnumSerializer;

  const CredentialIssuanceIdExistErrorNameEnum._(String name): super(name);

  static BuiltSet<CredentialIssuanceIdExistErrorNameEnum> get values => _$credentialIssuanceIdExistErrorNameEnumValues;
  static CredentialIssuanceIdExistErrorNameEnum valueOf(String name) => _$credentialIssuanceIdExistErrorNameEnumValueOf(name);
}

class CredentialIssuanceIdExistErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'issuanceId exist for the project, please use different issuanceId')
  static const CredentialIssuanceIdExistErrorMessageEnum issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId = _$credentialIssuanceIdExistErrorMessageEnum_issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId;

  static Serializer<CredentialIssuanceIdExistErrorMessageEnum> get serializer => _$credentialIssuanceIdExistErrorMessageEnumSerializer;

  const CredentialIssuanceIdExistErrorMessageEnum._(String name): super(name);

  static BuiltSet<CredentialIssuanceIdExistErrorMessageEnum> get values => _$credentialIssuanceIdExistErrorMessageEnumValues;
  static CredentialIssuanceIdExistErrorMessageEnum valueOf(String name) => _$credentialIssuanceIdExistErrorMessageEnumValueOf(name);
}

class CredentialIssuanceIdExistErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CredentialIssuanceIdExistErrorHttpStatusCodeEnum number400 = _$credentialIssuanceIdExistErrorHttpStatusCodeEnum_number400;

  static Serializer<CredentialIssuanceIdExistErrorHttpStatusCodeEnum> get serializer => _$credentialIssuanceIdExistErrorHttpStatusCodeEnumSerializer;

  const CredentialIssuanceIdExistErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CredentialIssuanceIdExistErrorHttpStatusCodeEnum> get values => _$credentialIssuanceIdExistErrorHttpStatusCodeEnumValues;
  static CredentialIssuanceIdExistErrorHttpStatusCodeEnum valueOf(String name) => _$credentialIssuanceIdExistErrorHttpStatusCodeEnumValueOf(name);
}

