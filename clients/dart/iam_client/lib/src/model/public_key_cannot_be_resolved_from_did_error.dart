//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'public_key_cannot_be_resolved_from_did_error.g.dart';

/// PublicKeyCannotBeResolvedFromDidError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class PublicKeyCannotBeResolvedFromDidError implements Built<PublicKeyCannotBeResolvedFromDidError, PublicKeyCannotBeResolvedFromDidErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  PublicKeyCannotBeResolvedFromDidErrorNameEnum get name;
  // enum nameEnum {  PublicKeyCannotBeResolvedFromDidError,  };

  @BuiltValueField(wireName: r'message')
  PublicKeyCannotBeResolvedFromDidErrorMessageEnum get message;
  // enum messageEnum {  Unable to resolve DID method. Invalid public key,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  PublicKeyCannotBeResolvedFromDidError._();

  factory PublicKeyCannotBeResolvedFromDidError([void updates(PublicKeyCannotBeResolvedFromDidErrorBuilder b)]) = _$PublicKeyCannotBeResolvedFromDidError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PublicKeyCannotBeResolvedFromDidErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PublicKeyCannotBeResolvedFromDidError> get serializer => _$PublicKeyCannotBeResolvedFromDidErrorSerializer();
}

class _$PublicKeyCannotBeResolvedFromDidErrorSerializer implements PrimitiveSerializer<PublicKeyCannotBeResolvedFromDidError> {
  @override
  final Iterable<Type> types = const [PublicKeyCannotBeResolvedFromDidError, _$PublicKeyCannotBeResolvedFromDidError];

  @override
  final String wireName = r'PublicKeyCannotBeResolvedFromDidError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PublicKeyCannotBeResolvedFromDidError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(PublicKeyCannotBeResolvedFromDidErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(PublicKeyCannotBeResolvedFromDidErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PublicKeyCannotBeResolvedFromDidError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PublicKeyCannotBeResolvedFromDidErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PublicKeyCannotBeResolvedFromDidErrorNameEnum),
          ) as PublicKeyCannotBeResolvedFromDidErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PublicKeyCannotBeResolvedFromDidErrorMessageEnum),
          ) as PublicKeyCannotBeResolvedFromDidErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum),
          ) as PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
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
  PublicKeyCannotBeResolvedFromDidError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PublicKeyCannotBeResolvedFromDidErrorBuilder();
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

class PublicKeyCannotBeResolvedFromDidErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'PublicKeyCannotBeResolvedFromDidError')
  static const PublicKeyCannotBeResolvedFromDidErrorNameEnum publicKeyCannotBeResolvedFromDidError = _$publicKeyCannotBeResolvedFromDidErrorNameEnum_publicKeyCannotBeResolvedFromDidError;

  static Serializer<PublicKeyCannotBeResolvedFromDidErrorNameEnum> get serializer => _$publicKeyCannotBeResolvedFromDidErrorNameEnumSerializer;

  const PublicKeyCannotBeResolvedFromDidErrorNameEnum._(String name): super(name);

  static BuiltSet<PublicKeyCannotBeResolvedFromDidErrorNameEnum> get values => _$publicKeyCannotBeResolvedFromDidErrorNameEnumValues;
  static PublicKeyCannotBeResolvedFromDidErrorNameEnum valueOf(String name) => _$publicKeyCannotBeResolvedFromDidErrorNameEnumValueOf(name);
}

class PublicKeyCannotBeResolvedFromDidErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Unable to resolve DID method. Invalid public key')
  static const PublicKeyCannotBeResolvedFromDidErrorMessageEnum unableToResolveDIDMethodPeriodInvalidPublicKey = _$publicKeyCannotBeResolvedFromDidErrorMessageEnum_unableToResolveDIDMethodPeriodInvalidPublicKey;

  static Serializer<PublicKeyCannotBeResolvedFromDidErrorMessageEnum> get serializer => _$publicKeyCannotBeResolvedFromDidErrorMessageEnumSerializer;

  const PublicKeyCannotBeResolvedFromDidErrorMessageEnum._(String name): super(name);

  static BuiltSet<PublicKeyCannotBeResolvedFromDidErrorMessageEnum> get values => _$publicKeyCannotBeResolvedFromDidErrorMessageEnumValues;
  static PublicKeyCannotBeResolvedFromDidErrorMessageEnum valueOf(String name) => _$publicKeyCannotBeResolvedFromDidErrorMessageEnumValueOf(name);
}

class PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum number400 = _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum_number400;

  static Serializer<PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum> get serializer => _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumSerializer;

  const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum> get values => _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumValues;
  static PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum valueOf(String name) => _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumValueOf(name);
}

