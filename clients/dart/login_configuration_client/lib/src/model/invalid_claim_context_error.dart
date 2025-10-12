//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_claim_context_error.g.dart';

/// InvalidClaimContextError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidClaimContextError
    implements
        Built<InvalidClaimContextError, InvalidClaimContextErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidClaimContextErrorNameEnum get name;
  // enum nameEnum {  InvalidClaimContextError,  };

  @BuiltValueField(wireName: r'message')
  InvalidClaimContextErrorMessageEnum get message;
  // enum messageEnum {  Invalid Claim Context,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidClaimContextErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  InvalidClaimContextError._();

  factory InvalidClaimContextError(
          [void updates(InvalidClaimContextErrorBuilder b)]) =
      _$InvalidClaimContextError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidClaimContextErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidClaimContextError> get serializer =>
      _$InvalidClaimContextErrorSerializer();
}

class _$InvalidClaimContextErrorSerializer
    implements PrimitiveSerializer<InvalidClaimContextError> {
  @override
  final Iterable<Type> types = const [
    InvalidClaimContextError,
    _$InvalidClaimContextError
  ];

  @override
  final String wireName = r'InvalidClaimContextError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidClaimContextError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidClaimContextErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidClaimContextErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidClaimContextErrorHttpStatusCodeEnum),
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
    InvalidClaimContextError object, {
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
    required InvalidClaimContextErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidClaimContextErrorNameEnum),
          ) as InvalidClaimContextErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidClaimContextErrorMessageEnum),
          ) as InvalidClaimContextErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(InvalidClaimContextErrorHttpStatusCodeEnum),
          ) as InvalidClaimContextErrorHttpStatusCodeEnum;
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
  InvalidClaimContextError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidClaimContextErrorBuilder();
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

class InvalidClaimContextErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidClaimContextError')
  static const InvalidClaimContextErrorNameEnum invalidClaimContextError =
      _$invalidClaimContextErrorNameEnum_invalidClaimContextError;

  static Serializer<InvalidClaimContextErrorNameEnum> get serializer =>
      _$invalidClaimContextErrorNameEnumSerializer;

  const InvalidClaimContextErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidClaimContextErrorNameEnum> get values =>
      _$invalidClaimContextErrorNameEnumValues;
  static InvalidClaimContextErrorNameEnum valueOf(String name) =>
      _$invalidClaimContextErrorNameEnumValueOf(name);
}

class InvalidClaimContextErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Invalid Claim Context')
  static const InvalidClaimContextErrorMessageEnum invalidClaimContext =
      _$invalidClaimContextErrorMessageEnum_invalidClaimContext;

  static Serializer<InvalidClaimContextErrorMessageEnum> get serializer =>
      _$invalidClaimContextErrorMessageEnumSerializer;

  const InvalidClaimContextErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidClaimContextErrorMessageEnum> get values =>
      _$invalidClaimContextErrorMessageEnumValues;
  static InvalidClaimContextErrorMessageEnum valueOf(String name) =>
      _$invalidClaimContextErrorMessageEnumValueOf(name);
}

class InvalidClaimContextErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidClaimContextErrorHttpStatusCodeEnum number400 =
      _$invalidClaimContextErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidClaimContextErrorHttpStatusCodeEnum>
      get serializer => _$invalidClaimContextErrorHttpStatusCodeEnumSerializer;

  const InvalidClaimContextErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InvalidClaimContextErrorHttpStatusCodeEnum> get values =>
      _$invalidClaimContextErrorHttpStatusCodeEnumValues;
  static InvalidClaimContextErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidClaimContextErrorHttpStatusCodeEnumValueOf(name);
}
