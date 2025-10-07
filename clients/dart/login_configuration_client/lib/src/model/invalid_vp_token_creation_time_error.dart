//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_vp_token_creation_time_error.g.dart';

/// InvalidVPTokenCreationTimeError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidVPTokenCreationTimeError
    implements
        Built<InvalidVPTokenCreationTimeError,
            InvalidVPTokenCreationTimeErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidVPTokenCreationTimeErrorNameEnum get name;
  // enum nameEnum {  InvalidVPTokenCreationTimeError,  };

  @BuiltValueField(wireName: r'message')
  InvalidVPTokenCreationTimeErrorMessageEnum get message;
  // enum messageEnum {  VP token has expired,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  InvalidVPTokenCreationTimeError._();

  factory InvalidVPTokenCreationTimeError(
          [void updates(InvalidVPTokenCreationTimeErrorBuilder b)]) =
      _$InvalidVPTokenCreationTimeError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidVPTokenCreationTimeErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidVPTokenCreationTimeError> get serializer =>
      _$InvalidVPTokenCreationTimeErrorSerializer();
}

class _$InvalidVPTokenCreationTimeErrorSerializer
    implements PrimitiveSerializer<InvalidVPTokenCreationTimeError> {
  @override
  final Iterable<Type> types = const [
    InvalidVPTokenCreationTimeError,
    _$InvalidVPTokenCreationTimeError
  ];

  @override
  final String wireName = r'InvalidVPTokenCreationTimeError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidVPTokenCreationTimeError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidVPTokenCreationTimeErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidVPTokenCreationTimeErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType:
          const FullType(InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum),
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
            BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    InvalidVPTokenCreationTimeError object, {
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
    required InvalidVPTokenCreationTimeErrorBuilder result,
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
                const FullType(InvalidVPTokenCreationTimeErrorNameEnum),
          ) as InvalidVPTokenCreationTimeErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidVPTokenCreationTimeErrorMessageEnum),
          ) as InvalidVPTokenCreationTimeErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum),
          ) as InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum;
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
                BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
          ) as BuiltList<InvalidParameterErrorDetailsInner>;
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
  InvalidVPTokenCreationTimeError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidVPTokenCreationTimeErrorBuilder();
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

class InvalidVPTokenCreationTimeErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidVPTokenCreationTimeError')
  static const InvalidVPTokenCreationTimeErrorNameEnum
      invalidVPTokenCreationTimeError =
      _$invalidVPTokenCreationTimeErrorNameEnum_invalidVPTokenCreationTimeError;

  static Serializer<InvalidVPTokenCreationTimeErrorNameEnum> get serializer =>
      _$invalidVPTokenCreationTimeErrorNameEnumSerializer;

  const InvalidVPTokenCreationTimeErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidVPTokenCreationTimeErrorNameEnum> get values =>
      _$invalidVPTokenCreationTimeErrorNameEnumValues;
  static InvalidVPTokenCreationTimeErrorNameEnum valueOf(String name) =>
      _$invalidVPTokenCreationTimeErrorNameEnumValueOf(name);
}

class InvalidVPTokenCreationTimeErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'VP token has expired')
  static const InvalidVPTokenCreationTimeErrorMessageEnum vPTokenHasExpired =
      _$invalidVPTokenCreationTimeErrorMessageEnum_vPTokenHasExpired;

  static Serializer<InvalidVPTokenCreationTimeErrorMessageEnum>
      get serializer => _$invalidVPTokenCreationTimeErrorMessageEnumSerializer;

  const InvalidVPTokenCreationTimeErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidVPTokenCreationTimeErrorMessageEnum> get values =>
      _$invalidVPTokenCreationTimeErrorMessageEnumValues;
  static InvalidVPTokenCreationTimeErrorMessageEnum valueOf(String name) =>
      _$invalidVPTokenCreationTimeErrorMessageEnumValueOf(name);
}

class InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum number400 =
      _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>
      get serializer =>
          _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnumSerializer;

  const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>
      get values => _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnumValues;
  static InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum valueOf(
          String name) =>
      _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnumValueOf(name);
}
