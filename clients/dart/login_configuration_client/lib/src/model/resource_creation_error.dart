//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'resource_creation_error.g.dart';

/// ResourceCreationError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class ResourceCreationError implements Built<ResourceCreationError, ResourceCreationErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  ResourceCreationErrorNameEnum get name;
  // enum nameEnum {  ResourceCreationError,  };

  @BuiltValueField(wireName: r'message')
  ResourceCreationErrorMessageEnum get message;
  // enum messageEnum {  Failed to create resources.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  ResourceCreationErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  424,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  ResourceCreationError._();

  factory ResourceCreationError([void updates(ResourceCreationErrorBuilder b)]) = _$ResourceCreationError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ResourceCreationErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ResourceCreationError> get serializer => _$ResourceCreationErrorSerializer();
}

class _$ResourceCreationErrorSerializer implements PrimitiveSerializer<ResourceCreationError> {
  @override
  final Iterable<Type> types = const [ResourceCreationError, _$ResourceCreationError];

  @override
  final String wireName = r'ResourceCreationError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ResourceCreationError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(ResourceCreationErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(ResourceCreationErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(ResourceCreationErrorHttpStatusCodeEnum),
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
        specifiedType: const FullType(BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ResourceCreationError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ResourceCreationErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceCreationErrorNameEnum),
          ) as ResourceCreationErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceCreationErrorMessageEnum),
          ) as ResourceCreationErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ResourceCreationErrorHttpStatusCodeEnum),
          ) as ResourceCreationErrorHttpStatusCodeEnum;
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
            specifiedType: const FullType(BuiltList, [FullType(InvalidParameterErrorDetailsInner)]),
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
  ResourceCreationError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ResourceCreationErrorBuilder();
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

class ResourceCreationErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ResourceCreationError')
  static const ResourceCreationErrorNameEnum resourceCreationError = _$resourceCreationErrorNameEnum_resourceCreationError;

  static Serializer<ResourceCreationErrorNameEnum> get serializer => _$resourceCreationErrorNameEnumSerializer;

  const ResourceCreationErrorNameEnum._(String name): super(name);

  static BuiltSet<ResourceCreationErrorNameEnum> get values => _$resourceCreationErrorNameEnumValues;
  static ResourceCreationErrorNameEnum valueOf(String name) => _$resourceCreationErrorNameEnumValueOf(name);
}

class ResourceCreationErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Failed to create resources.')
  static const ResourceCreationErrorMessageEnum failedToCreateResourcesPeriod = _$resourceCreationErrorMessageEnum_failedToCreateResourcesPeriod;

  static Serializer<ResourceCreationErrorMessageEnum> get serializer => _$resourceCreationErrorMessageEnumSerializer;

  const ResourceCreationErrorMessageEnum._(String name): super(name);

  static BuiltSet<ResourceCreationErrorMessageEnum> get values => _$resourceCreationErrorMessageEnumValues;
  static ResourceCreationErrorMessageEnum valueOf(String name) => _$resourceCreationErrorMessageEnumValueOf(name);
}

class ResourceCreationErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 424)
  static const ResourceCreationErrorHttpStatusCodeEnum number424 = _$resourceCreationErrorHttpStatusCodeEnum_number424;

  static Serializer<ResourceCreationErrorHttpStatusCodeEnum> get serializer => _$resourceCreationErrorHttpStatusCodeEnumSerializer;

  const ResourceCreationErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<ResourceCreationErrorHttpStatusCodeEnum> get values => _$resourceCreationErrorHttpStatusCodeEnumValues;
  static ResourceCreationErrorHttpStatusCodeEnum valueOf(String name) => _$resourceCreationErrorHttpStatusCodeEnumValueOf(name);
}

