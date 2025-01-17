//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_proof_error.g.dart';

/// InvalidProofError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class InvalidProofError implements Built<InvalidProofError, InvalidProofErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidProofErrorNameEnum get name;
  // enum nameEnum {  InvalidProofError,  };

  @BuiltValueField(wireName: r'message')
  InvalidProofErrorMessageEnum get message;
  // enum messageEnum {  The proof in the Credential Request is invalid,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidProofErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  InvalidProofError._();

  factory InvalidProofError([void updates(InvalidProofErrorBuilder b)]) = _$InvalidProofError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidProofErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidProofError> get serializer => _$InvalidProofErrorSerializer();
}

class _$InvalidProofErrorSerializer implements PrimitiveSerializer<InvalidProofError> {
  @override
  final Iterable<Type> types = const [InvalidProofError, _$InvalidProofError];

  @override
  final String wireName = r'InvalidProofError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidProofError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidProofErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidProofErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidProofErrorHttpStatusCodeEnum),
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
    InvalidProofError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required InvalidProofErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidProofErrorNameEnum),
          ) as InvalidProofErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidProofErrorMessageEnum),
          ) as InvalidProofErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidProofErrorHttpStatusCodeEnum),
          ) as InvalidProofErrorHttpStatusCodeEnum;
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
  InvalidProofError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidProofErrorBuilder();
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

class InvalidProofErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'InvalidProofError')
  static const InvalidProofErrorNameEnum invalidProofError = _$invalidProofErrorNameEnum_invalidProofError;

  static Serializer<InvalidProofErrorNameEnum> get serializer => _$invalidProofErrorNameEnumSerializer;

  const InvalidProofErrorNameEnum._(String name): super(name);

  static BuiltSet<InvalidProofErrorNameEnum> get values => _$invalidProofErrorNameEnumValues;
  static InvalidProofErrorNameEnum valueOf(String name) => _$invalidProofErrorNameEnumValueOf(name);
}

class InvalidProofErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'The proof in the Credential Request is invalid')
  static const InvalidProofErrorMessageEnum theProofInTheCredentialRequestIsInvalid = _$invalidProofErrorMessageEnum_theProofInTheCredentialRequestIsInvalid;

  static Serializer<InvalidProofErrorMessageEnum> get serializer => _$invalidProofErrorMessageEnumSerializer;

  const InvalidProofErrorMessageEnum._(String name): super(name);

  static BuiltSet<InvalidProofErrorMessageEnum> get values => _$invalidProofErrorMessageEnumValues;
  static InvalidProofErrorMessageEnum valueOf(String name) => _$invalidProofErrorMessageEnumValueOf(name);
}

class InvalidProofErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidProofErrorHttpStatusCodeEnum number400 = _$invalidProofErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidProofErrorHttpStatusCodeEnum> get serializer => _$invalidProofErrorHttpStatusCodeEnumSerializer;

  const InvalidProofErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<InvalidProofErrorHttpStatusCodeEnum> get values => _$invalidProofErrorHttpStatusCodeEnumValues;
  static InvalidProofErrorHttpStatusCodeEnum valueOf(String name) => _$invalidProofErrorHttpStatusCodeEnumValueOf(name);
}

