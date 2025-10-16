//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iam_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'principal_does_not_belong_to_project_error.g.dart';

/// PrincipalDoesNotBelongToProjectError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class PrincipalDoesNotBelongToProjectError
    implements
        Built<PrincipalDoesNotBelongToProjectError,
            PrincipalDoesNotBelongToProjectErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  PrincipalDoesNotBelongToProjectErrorNameEnum get name;
  // enum nameEnum {  PrincipalDoesNotBelongToProjectError,  };

  @BuiltValueField(wireName: r'message')
  PrincipalDoesNotBelongToProjectErrorMessageEnum get message;
  // enum messageEnum {  Principal does not belong to the given project,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  403,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  PrincipalDoesNotBelongToProjectError._();

  factory PrincipalDoesNotBelongToProjectError(
          [void updates(PrincipalDoesNotBelongToProjectErrorBuilder b)]) =
      _$PrincipalDoesNotBelongToProjectError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrincipalDoesNotBelongToProjectErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrincipalDoesNotBelongToProjectError> get serializer =>
      _$PrincipalDoesNotBelongToProjectErrorSerializer();
}

class _$PrincipalDoesNotBelongToProjectErrorSerializer
    implements PrimitiveSerializer<PrincipalDoesNotBelongToProjectError> {
  @override
  final Iterable<Type> types = const [
    PrincipalDoesNotBelongToProjectError,
    _$PrincipalDoesNotBelongToProjectError
  ];

  @override
  final String wireName = r'PrincipalDoesNotBelongToProjectError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrincipalDoesNotBelongToProjectError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType:
          const FullType(PrincipalDoesNotBelongToProjectErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType:
          const FullType(PrincipalDoesNotBelongToProjectErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(
          PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum),
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
    PrincipalDoesNotBelongToProjectError object, {
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
    required PrincipalDoesNotBelongToProjectErrorBuilder result,
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
                const FullType(PrincipalDoesNotBelongToProjectErrorNameEnum),
          ) as PrincipalDoesNotBelongToProjectErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(PrincipalDoesNotBelongToProjectErrorMessageEnum),
          ) as PrincipalDoesNotBelongToProjectErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum),
          ) as PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum;
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
  PrincipalDoesNotBelongToProjectError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrincipalDoesNotBelongToProjectErrorBuilder();
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

class PrincipalDoesNotBelongToProjectErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PrincipalDoesNotBelongToProjectError')
  static const PrincipalDoesNotBelongToProjectErrorNameEnum
      principalDoesNotBelongToProjectError =
      _$principalDoesNotBelongToProjectErrorNameEnum_principalDoesNotBelongToProjectError;

  static Serializer<PrincipalDoesNotBelongToProjectErrorNameEnum>
      get serializer =>
          _$principalDoesNotBelongToProjectErrorNameEnumSerializer;

  const PrincipalDoesNotBelongToProjectErrorNameEnum._(String name)
      : super(name);

  static BuiltSet<PrincipalDoesNotBelongToProjectErrorNameEnum> get values =>
      _$principalDoesNotBelongToProjectErrorNameEnumValues;
  static PrincipalDoesNotBelongToProjectErrorNameEnum valueOf(String name) =>
      _$principalDoesNotBelongToProjectErrorNameEnumValueOf(name);
}

class PrincipalDoesNotBelongToProjectErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(
      wireName: r'Principal does not belong to the given project')
  static const PrincipalDoesNotBelongToProjectErrorMessageEnum
      principalDoesNotBelongToTheGivenProject =
      _$principalDoesNotBelongToProjectErrorMessageEnum_principalDoesNotBelongToTheGivenProject;

  static Serializer<PrincipalDoesNotBelongToProjectErrorMessageEnum>
      get serializer =>
          _$principalDoesNotBelongToProjectErrorMessageEnumSerializer;

  const PrincipalDoesNotBelongToProjectErrorMessageEnum._(String name)
      : super(name);

  static BuiltSet<PrincipalDoesNotBelongToProjectErrorMessageEnum> get values =>
      _$principalDoesNotBelongToProjectErrorMessageEnumValues;
  static PrincipalDoesNotBelongToProjectErrorMessageEnum valueOf(String name) =>
      _$principalDoesNotBelongToProjectErrorMessageEnumValueOf(name);
}

class PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 403)
  static const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum
      number403 =
      _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnum_number403;

  static Serializer<PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>
      get serializer =>
          _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnumSerializer;

  const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>
      get values =>
          _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnumValues;
  static PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum valueOf(
          String name) =>
      _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnumValueOf(name);
}
