//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iota_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_limit_exceeded_error.g.dart';

/// ResourceLimitExceededError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class ResourceLimitExceededError
    implements
        Built<ResourceLimitExceededError, ResourceLimitExceededErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  ResourceLimitExceededErrorNameEnum get name;
  // enum nameEnum {  ResourceLimitExceededError,  };

  @BuiltValueField(wireName: r'message')
  ResourceLimitExceededErrorMessageEnum get message;
  // enum messageEnum {  Resource limit exceeded: ${param}.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  ResourceLimitExceededErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  422,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  ResourceLimitExceededError._();

  factory ResourceLimitExceededError(
          [void updates(ResourceLimitExceededErrorBuilder b)]) =
      _$ResourceLimitExceededError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceLimitExceededErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceLimitExceededError> get serializer =>
      _$ResourceLimitExceededErrorSerializer();
}

class _$ResourceLimitExceededErrorSerializer
    implements PrimitiveSerializer<ResourceLimitExceededError> {
  @override
  final Iterable<Type> types = const [
    ResourceLimitExceededError,
    _$ResourceLimitExceededError
  ];

  @override
  final String wireName = r'ResourceLimitExceededError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceLimitExceededError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(ResourceLimitExceededErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ResourceLimitExceededErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType:
          const FullType(ResourceLimitExceededErrorHttpStatusCodeEnum),
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
    ResourceLimitExceededError object, {
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
    required ResourceLimitExceededErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceLimitExceededErrorNameEnum),
          ) as ResourceLimitExceededErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ResourceLimitExceededErrorMessageEnum),
          ) as ResourceLimitExceededErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(ResourceLimitExceededErrorHttpStatusCodeEnum),
          ) as ResourceLimitExceededErrorHttpStatusCodeEnum;
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
  ResourceLimitExceededError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceLimitExceededErrorBuilder();
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

class ResourceLimitExceededErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ResourceLimitExceededError')
  static const ResourceLimitExceededErrorNameEnum resourceLimitExceededError =
      _$resourceLimitExceededErrorNameEnum_resourceLimitExceededError;

  static Serializer<ResourceLimitExceededErrorNameEnum> get serializer =>
      _$resourceLimitExceededErrorNameEnumSerializer;

  const ResourceLimitExceededErrorNameEnum._(String name) : super(name);

  static BuiltSet<ResourceLimitExceededErrorNameEnum> get values =>
      _$resourceLimitExceededErrorNameEnumValues;
  static ResourceLimitExceededErrorNameEnum valueOf(String name) =>
      _$resourceLimitExceededErrorNameEnumValueOf(name);
}

class ResourceLimitExceededErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Resource limit exceeded: ${param}.')
  static const ResourceLimitExceededErrorMessageEnum
      resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
      _$resourceLimitExceededErrorMessageEnum_resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;

  static Serializer<ResourceLimitExceededErrorMessageEnum> get serializer =>
      _$resourceLimitExceededErrorMessageEnumSerializer;

  const ResourceLimitExceededErrorMessageEnum._(String name) : super(name);

  static BuiltSet<ResourceLimitExceededErrorMessageEnum> get values =>
      _$resourceLimitExceededErrorMessageEnumValues;
  static ResourceLimitExceededErrorMessageEnum valueOf(String name) =>
      _$resourceLimitExceededErrorMessageEnumValueOf(name);
}

class ResourceLimitExceededErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 422)
  static const ResourceLimitExceededErrorHttpStatusCodeEnum number422 =
      _$resourceLimitExceededErrorHttpStatusCodeEnum_number422;

  static Serializer<ResourceLimitExceededErrorHttpStatusCodeEnum>
      get serializer =>
          _$resourceLimitExceededErrorHttpStatusCodeEnumSerializer;

  const ResourceLimitExceededErrorHttpStatusCodeEnum._(String name)
      : super(name);

  static BuiltSet<ResourceLimitExceededErrorHttpStatusCodeEnum> get values =>
      _$resourceLimitExceededErrorHttpStatusCodeEnumValues;
  static ResourceLimitExceededErrorHttpStatusCodeEnum valueOf(String name) =>
      _$resourceLimitExceededErrorHttpStatusCodeEnumValueOf(name);
}
