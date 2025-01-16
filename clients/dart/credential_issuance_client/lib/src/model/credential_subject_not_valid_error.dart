//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_subject_not_valid_error.g.dart';

/// CredentialSubjectNotValidError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CredentialSubjectNotValidError implements Built<CredentialSubjectNotValidError, CredentialSubjectNotValidErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  CredentialSubjectNotValidErrorNameEnum get name;
  // enum nameEnum {  CredentialSubjectNotValidError,  };

  @BuiltValueField(wireName: r'message')
  CredentialSubjectNotValidErrorMessageEnum get message;
  // enum messageEnum {  Credential subject is not according to the vc schema,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  CredentialSubjectNotValidErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  CredentialSubjectNotValidError._();

  factory CredentialSubjectNotValidError([void updates(CredentialSubjectNotValidErrorBuilder b)]) = _$CredentialSubjectNotValidError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialSubjectNotValidErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialSubjectNotValidError> get serializer => _$CredentialSubjectNotValidErrorSerializer();
}

class _$CredentialSubjectNotValidErrorSerializer implements PrimitiveSerializer<CredentialSubjectNotValidError> {
  @override
  final Iterable<Type> types = const [CredentialSubjectNotValidError, _$CredentialSubjectNotValidError];

  @override
  final String wireName = r'CredentialSubjectNotValidError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialSubjectNotValidError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(CredentialSubjectNotValidErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(CredentialSubjectNotValidErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(CredentialSubjectNotValidErrorHttpStatusCodeEnum),
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
    CredentialSubjectNotValidError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialSubjectNotValidErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialSubjectNotValidErrorNameEnum),
          ) as CredentialSubjectNotValidErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialSubjectNotValidErrorMessageEnum),
          ) as CredentialSubjectNotValidErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialSubjectNotValidErrorHttpStatusCodeEnum),
          ) as CredentialSubjectNotValidErrorHttpStatusCodeEnum;
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
  CredentialSubjectNotValidError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialSubjectNotValidErrorBuilder();
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

class CredentialSubjectNotValidErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CredentialSubjectNotValidError')
  static const CredentialSubjectNotValidErrorNameEnum credentialSubjectNotValidError = _$credentialSubjectNotValidErrorNameEnum_credentialSubjectNotValidError;

  static Serializer<CredentialSubjectNotValidErrorNameEnum> get serializer => _$credentialSubjectNotValidErrorNameEnumSerializer;

  const CredentialSubjectNotValidErrorNameEnum._(String name): super(name);

  static BuiltSet<CredentialSubjectNotValidErrorNameEnum> get values => _$credentialSubjectNotValidErrorNameEnumValues;
  static CredentialSubjectNotValidErrorNameEnum valueOf(String name) => _$credentialSubjectNotValidErrorNameEnumValueOf(name);
}

class CredentialSubjectNotValidErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Credential subject is not according to the vc schema')
  static const CredentialSubjectNotValidErrorMessageEnum credentialSubjectIsNotAccordingToTheVcSchema = _$credentialSubjectNotValidErrorMessageEnum_credentialSubjectIsNotAccordingToTheVcSchema;

  static Serializer<CredentialSubjectNotValidErrorMessageEnum> get serializer => _$credentialSubjectNotValidErrorMessageEnumSerializer;

  const CredentialSubjectNotValidErrorMessageEnum._(String name): super(name);

  static BuiltSet<CredentialSubjectNotValidErrorMessageEnum> get values => _$credentialSubjectNotValidErrorMessageEnumValues;
  static CredentialSubjectNotValidErrorMessageEnum valueOf(String name) => _$credentialSubjectNotValidErrorMessageEnumValueOf(name);
}

class CredentialSubjectNotValidErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CredentialSubjectNotValidErrorHttpStatusCodeEnum number400 = _$credentialSubjectNotValidErrorHttpStatusCodeEnum_number400;

  static Serializer<CredentialSubjectNotValidErrorHttpStatusCodeEnum> get serializer => _$credentialSubjectNotValidErrorHttpStatusCodeEnumSerializer;

  const CredentialSubjectNotValidErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CredentialSubjectNotValidErrorHttpStatusCodeEnum> get values => _$credentialSubjectNotValidErrorHttpStatusCodeEnumValues;
  static CredentialSubjectNotValidErrorHttpStatusCodeEnum valueOf(String name) => _$credentialSubjectNotValidErrorHttpStatusCodeEnumValueOf(name);
}

