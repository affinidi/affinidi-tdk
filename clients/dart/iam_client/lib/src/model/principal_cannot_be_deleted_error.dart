//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'principal_cannot_be_deleted_error.g.dart';

/// PrincipalCannotBeDeletedError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class PrincipalCannotBeDeletedError
    implements
        Built<PrincipalCannotBeDeletedError,
            PrincipalCannotBeDeletedErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  PrincipalCannotBeDeletedErrorNameEnum get name;
  // enum nameEnum {  PrincipalCannotBeDeletedError,  };

  @BuiltValueField(wireName: r'message')
  PrincipalCannotBeDeletedErrorMessageEnum get message;
  // enum messageEnum {  Cannot delete own record from the project with the same principalId,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  PrincipalCannotBeDeletedErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  409,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  PrincipalCannotBeDeletedError._();

  factory PrincipalCannotBeDeletedError(
          [void updates(PrincipalCannotBeDeletedErrorBuilder b)]) =
      _$PrincipalCannotBeDeletedError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrincipalCannotBeDeletedErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrincipalCannotBeDeletedError> get serializer =>
      _$PrincipalCannotBeDeletedErrorSerializer();
}

class _$PrincipalCannotBeDeletedErrorSerializer
    implements PrimitiveSerializer<PrincipalCannotBeDeletedError> {
  @override
  final Iterable<Type> types = const [
    PrincipalCannotBeDeletedError,
    _$PrincipalCannotBeDeletedError
  ];

  @override
  final String wireName = r'PrincipalCannotBeDeletedError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrincipalCannotBeDeletedError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(PrincipalCannotBeDeletedErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(PrincipalCannotBeDeletedErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType:
          const FullType(PrincipalCannotBeDeletedErrorHttpStatusCodeEnum),
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
            BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PrincipalCannotBeDeletedError object, {
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
    required PrincipalCannotBeDeletedErrorBuilder result,
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
                const FullType(PrincipalCannotBeDeletedErrorNameEnum),
          ) as PrincipalCannotBeDeletedErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(PrincipalCannotBeDeletedErrorMessageEnum),
          ) as PrincipalCannotBeDeletedErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(PrincipalCannotBeDeletedErrorHttpStatusCodeEnum),
          ) as PrincipalCannotBeDeletedErrorHttpStatusCodeEnum;
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
                BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
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
  PrincipalCannotBeDeletedError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalCannotBeDeletedErrorBuilder();
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

class PrincipalCannotBeDeletedErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PrincipalCannotBeDeletedError')
  static const PrincipalCannotBeDeletedErrorNameEnum
      principalCannotBeDeletedError =
      _$principalCannotBeDeletedErrorNameEnum_principalCannotBeDeletedError;

  static Serializer<PrincipalCannotBeDeletedErrorNameEnum> get serializer =>
      _$principalCannotBeDeletedErrorNameEnumSerializer;

  const PrincipalCannotBeDeletedErrorNameEnum._(String name) : super(name);

  static BuiltSet<PrincipalCannotBeDeletedErrorNameEnum> get values =>
      _$principalCannotBeDeletedErrorNameEnumValues;
  static PrincipalCannotBeDeletedErrorNameEnum valueOf(String name) =>
      _$principalCannotBeDeletedErrorNameEnumValueOf(name);
}

class PrincipalCannotBeDeletedErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName:
          r'Cannot delete own record from the project with the same principalId')
  static const PrincipalCannotBeDeletedErrorMessageEnum
      cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId =
      _$principalCannotBeDeletedErrorMessageEnum_cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId;

  static Serializer<PrincipalCannotBeDeletedErrorMessageEnum> get serializer =>
      _$principalCannotBeDeletedErrorMessageEnumSerializer;

  const PrincipalCannotBeDeletedErrorMessageEnum._(String name) : super(name);

  static BuiltSet<PrincipalCannotBeDeletedErrorMessageEnum> get values =>
      _$principalCannotBeDeletedErrorMessageEnumValues;
  static PrincipalCannotBeDeletedErrorMessageEnum valueOf(String name) =>
      _$principalCannotBeDeletedErrorMessageEnumValueOf(name);
}

class PrincipalCannotBeDeletedErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 409)
  static const PrincipalCannotBeDeletedErrorHttpStatusCodeEnum number409 =
      _$principalCannotBeDeletedErrorHttpStatusCodeEnum_number409;

  static Serializer<PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>
      get serializer =>
          _$principalCannotBeDeletedErrorHttpStatusCodeEnumSerializer;

  const PrincipalCannotBeDeletedErrorHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<PrincipalCannotBeDeletedErrorHttpStatusCodeEnum> get values =>
      _$principalCannotBeDeletedErrorHttpStatusCodeEnumValues;
  static PrincipalCannotBeDeletedErrorHttpStatusCodeEnum valueOf(String name) =>
      _$principalCannotBeDeletedErrorHttpStatusCodeEnumValueOf(name);
}
