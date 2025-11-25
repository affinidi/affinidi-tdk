//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_consumer_iam_client/src/model/invalid_jwt_token_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unauthorized_error.g.dart';

/// UnauthorizedError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class UnauthorizedError
    implements Built<UnauthorizedError, UnauthorizedErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  UnauthorizedErrorNameEnum get name;
  // enum nameEnum {  UnauthorizedError,  };

  @BuiltValueField(wireName: r'message')
  UnauthorizedErrorMessageEnum get message;
  // enum messageEnum {  Unauthorized,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  UnauthorizedErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  403,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidJwtTokenErrorDetailsInner>? get details;

  UnauthorizedError._();

  factory UnauthorizedError([void updates(UnauthorizedErrorBuilder b)]) =
      _$UnauthorizedError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnauthorizedErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnauthorizedError> get serializer =>
      _$UnauthorizedErrorSerializer();
}

class _$UnauthorizedErrorSerializer
    implements PrimitiveSerializer<UnauthorizedError> {
  @override
  final Iterable<Type> types = const [UnauthorizedError, _$UnauthorizedError];

  @override
  final String wireName = r'UnauthorizedError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnauthorizedError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(UnauthorizedErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(UnauthorizedErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(UnauthorizedErrorHttpStatusCodeEnum),
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
            BuiltList, [FullType(InvalidJwtTokenErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UnauthorizedError object, {
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
    required UnauthorizedErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnauthorizedErrorNameEnum),
          ) as UnauthorizedErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnauthorizedErrorMessageEnum),
          ) as UnauthorizedErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UnauthorizedErrorHttpStatusCodeEnum),
          ) as UnauthorizedErrorHttpStatusCodeEnum;
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
                BuiltList, [FullType(InvalidJwtTokenErrorDetailsInner)]),
          ) as BuiltList<InvalidJwtTokenErrorDetailsInner>;
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
  UnauthorizedError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnauthorizedErrorBuilder();
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

class UnauthorizedErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UnauthorizedError')
  static const UnauthorizedErrorNameEnum unauthorizedError =
      _$unauthorizedErrorNameEnum_unauthorizedError;

  static Serializer<UnauthorizedErrorNameEnum> get serializer =>
      _$unauthorizedErrorNameEnumSerializer;

  const UnauthorizedErrorNameEnum._(String name) : super(name);

  static BuiltSet<UnauthorizedErrorNameEnum> get values =>
      _$unauthorizedErrorNameEnumValues;
  static UnauthorizedErrorNameEnum valueOf(String name) =>
      _$unauthorizedErrorNameEnumValueOf(name);
}

class UnauthorizedErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Unauthorized')
  static const UnauthorizedErrorMessageEnum unauthorized =
      _$unauthorizedErrorMessageEnum_unauthorized;

  static Serializer<UnauthorizedErrorMessageEnum> get serializer =>
      _$unauthorizedErrorMessageEnumSerializer;

  const UnauthorizedErrorMessageEnum._(String name) : super(name);

  static BuiltSet<UnauthorizedErrorMessageEnum> get values =>
      _$unauthorizedErrorMessageEnumValues;
  static UnauthorizedErrorMessageEnum valueOf(String name) =>
      _$unauthorizedErrorMessageEnumValueOf(name);
}

class UnauthorizedErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 403)
  static const UnauthorizedErrorHttpStatusCodeEnum number403 =
      _$unauthorizedErrorHttpStatusCodeEnum_number403;

  static Serializer<UnauthorizedErrorHttpStatusCodeEnum> get serializer =>
      _$unauthorizedErrorHttpStatusCodeEnumSerializer;

  const UnauthorizedErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<UnauthorizedErrorHttpStatusCodeEnum> get values =>
      _$unauthorizedErrorHttpStatusCodeEnumValues;
  static UnauthorizedErrorHttpStatusCodeEnum valueOf(String name) =>
      _$unauthorizedErrorHttpStatusCodeEnumValueOf(name);
}
