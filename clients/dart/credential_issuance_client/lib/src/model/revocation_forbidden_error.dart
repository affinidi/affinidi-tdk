//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/action_forbidden_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revocation_forbidden_error.g.dart';

/// RevocationForbiddenError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class RevocationForbiddenError implements Built<RevocationForbiddenError, RevocationForbiddenErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  RevocationForbiddenErrorNameEnum get name;
  // enum nameEnum {  RevocationForbiddenError,  };

  @BuiltValueField(wireName: r'message')
  RevocationForbiddenErrorMessageEnum get message;
  // enum messageEnum {  Related VC has not been claimed yet,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  RevocationForbiddenErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ActionForbiddenErrorDetailsInner>? get details;

  RevocationForbiddenError._();

  factory RevocationForbiddenError([void updates(RevocationForbiddenErrorBuilder b)]) = _$RevocationForbiddenError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevocationForbiddenErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevocationForbiddenError> get serializer => _$RevocationForbiddenErrorSerializer();
}

class _$RevocationForbiddenErrorSerializer implements PrimitiveSerializer<RevocationForbiddenError> {
  @override
  final Iterable<Type> types = const [RevocationForbiddenError, _$RevocationForbiddenError];

  @override
  final String wireName = r'RevocationForbiddenError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevocationForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(RevocationForbiddenErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(RevocationForbiddenErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(RevocationForbiddenErrorHttpStatusCodeEnum),
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
    RevocationForbiddenError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevocationForbiddenErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RevocationForbiddenErrorNameEnum),
          ) as RevocationForbiddenErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RevocationForbiddenErrorMessageEnum),
          ) as RevocationForbiddenErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RevocationForbiddenErrorHttpStatusCodeEnum),
          ) as RevocationForbiddenErrorHttpStatusCodeEnum;
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
  RevocationForbiddenError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevocationForbiddenErrorBuilder();
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

class RevocationForbiddenErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'RevocationForbiddenError')
  static const RevocationForbiddenErrorNameEnum revocationForbiddenError = _$revocationForbiddenErrorNameEnum_revocationForbiddenError;

  static Serializer<RevocationForbiddenErrorNameEnum> get serializer => _$revocationForbiddenErrorNameEnumSerializer;

  const RevocationForbiddenErrorNameEnum._(String name): super(name);

  static BuiltSet<RevocationForbiddenErrorNameEnum> get values => _$revocationForbiddenErrorNameEnumValues;
  static RevocationForbiddenErrorNameEnum valueOf(String name) => _$revocationForbiddenErrorNameEnumValueOf(name);
}

class RevocationForbiddenErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Related VC has not been claimed yet')
  static const RevocationForbiddenErrorMessageEnum relatedVCHasNotBeenClaimedYet = _$revocationForbiddenErrorMessageEnum_relatedVCHasNotBeenClaimedYet;

  static Serializer<RevocationForbiddenErrorMessageEnum> get serializer => _$revocationForbiddenErrorMessageEnumSerializer;

  const RevocationForbiddenErrorMessageEnum._(String name): super(name);

  static BuiltSet<RevocationForbiddenErrorMessageEnum> get values => _$revocationForbiddenErrorMessageEnumValues;
  static RevocationForbiddenErrorMessageEnum valueOf(String name) => _$revocationForbiddenErrorMessageEnumValueOf(name);
}

class RevocationForbiddenErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const RevocationForbiddenErrorHttpStatusCodeEnum number400 = _$revocationForbiddenErrorHttpStatusCodeEnum_number400;

  static Serializer<RevocationForbiddenErrorHttpStatusCodeEnum> get serializer => _$revocationForbiddenErrorHttpStatusCodeEnumSerializer;

  const RevocationForbiddenErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<RevocationForbiddenErrorHttpStatusCodeEnum> get values => _$revocationForbiddenErrorHttpStatusCodeEnumValues;
  static RevocationForbiddenErrorHttpStatusCodeEnum valueOf(String name) => _$revocationForbiddenErrorHttpStatusCodeEnumValueOf(name);
}

