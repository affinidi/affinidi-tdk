//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_not_found_error.g.dart';

/// EntityNotFoundError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class EntityNotFoundError implements Built<EntityNotFoundError, EntityNotFoundErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  EntityNotFoundErrorNameEnum get name;
  // enum nameEnum {  EntityNotFoundError,  };

  @BuiltValueField(wireName: r'message')
  EntityNotFoundErrorMessageEnum get message;
  // enum messageEnum {  Entity not found,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  EntityNotFoundErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  404,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  EntityNotFoundError._();

  factory EntityNotFoundError([void updates(EntityNotFoundErrorBuilder b)]) = _$EntityNotFoundError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityNotFoundErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityNotFoundError> get serializer => _$EntityNotFoundErrorSerializer();
}

class _$EntityNotFoundErrorSerializer implements PrimitiveSerializer<EntityNotFoundError> {
  @override
  final Iterable<Type> types = const [EntityNotFoundError, _$EntityNotFoundError];

  @override
  final String wireName = r'EntityNotFoundError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityNotFoundError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(EntityNotFoundErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(EntityNotFoundErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(EntityNotFoundErrorHttpStatusCodeEnum),
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
    EntityNotFoundError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityNotFoundErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityNotFoundErrorNameEnum),
          ) as EntityNotFoundErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityNotFoundErrorMessageEnum),
          ) as EntityNotFoundErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityNotFoundErrorHttpStatusCodeEnum),
          ) as EntityNotFoundErrorHttpStatusCodeEnum;
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
  EntityNotFoundError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityNotFoundErrorBuilder();
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

class EntityNotFoundErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'EntityNotFoundError')
  static const EntityNotFoundErrorNameEnum entityNotFoundError = _$entityNotFoundErrorNameEnum_entityNotFoundError;

  static Serializer<EntityNotFoundErrorNameEnum> get serializer => _$entityNotFoundErrorNameEnumSerializer;

  const EntityNotFoundErrorNameEnum._(String name): super(name);

  static BuiltSet<EntityNotFoundErrorNameEnum> get values => _$entityNotFoundErrorNameEnumValues;
  static EntityNotFoundErrorNameEnum valueOf(String name) => _$entityNotFoundErrorNameEnumValueOf(name);
}

class EntityNotFoundErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Entity not found')
  static const EntityNotFoundErrorMessageEnum entityNotFound = _$entityNotFoundErrorMessageEnum_entityNotFound;

  static Serializer<EntityNotFoundErrorMessageEnum> get serializer => _$entityNotFoundErrorMessageEnumSerializer;

  const EntityNotFoundErrorMessageEnum._(String name): super(name);

  static BuiltSet<EntityNotFoundErrorMessageEnum> get values => _$entityNotFoundErrorMessageEnumValues;
  static EntityNotFoundErrorMessageEnum valueOf(String name) => _$entityNotFoundErrorMessageEnumValueOf(name);
}

class EntityNotFoundErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 404)
  static const EntityNotFoundErrorHttpStatusCodeEnum number404 = _$entityNotFoundErrorHttpStatusCodeEnum_number404;

  static Serializer<EntityNotFoundErrorHttpStatusCodeEnum> get serializer => _$entityNotFoundErrorHttpStatusCodeEnumSerializer;

  const EntityNotFoundErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<EntityNotFoundErrorHttpStatusCodeEnum> get values => _$entityNotFoundErrorHttpStatusCodeEnumValues;
  static EntityNotFoundErrorHttpStatusCodeEnum valueOf(String name) => _$entityNotFoundErrorHttpStatusCodeEnumValueOf(name);
}

