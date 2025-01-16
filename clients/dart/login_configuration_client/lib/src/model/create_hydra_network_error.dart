//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_hydra_network_error.g.dart';

/// CreateHydraNetworkError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CreateHydraNetworkError implements Built<CreateHydraNetworkError, CreateHydraNetworkErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  CreateHydraNetworkErrorNameEnum get name;
  // enum nameEnum {  CreateHydraNetworkError,  };

  @BuiltValueField(wireName: r'message')
  CreateHydraNetworkErrorMessageEnum get message;
  // enum messageEnum {  CreateHydraNetworkError,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  CreateHydraNetworkErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  CreateHydraNetworkError._();

  factory CreateHydraNetworkError([void updates(CreateHydraNetworkErrorBuilder b)]) = _$CreateHydraNetworkError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateHydraNetworkErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateHydraNetworkError> get serializer => _$CreateHydraNetworkErrorSerializer();
}

class _$CreateHydraNetworkErrorSerializer implements PrimitiveSerializer<CreateHydraNetworkError> {
  @override
  final Iterable<Type> types = const [CreateHydraNetworkError, _$CreateHydraNetworkError];

  @override
  final String wireName = r'CreateHydraNetworkError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateHydraNetworkError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(CreateHydraNetworkErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(CreateHydraNetworkErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(CreateHydraNetworkErrorHttpStatusCodeEnum),
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
    CreateHydraNetworkError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateHydraNetworkErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateHydraNetworkErrorNameEnum),
          ) as CreateHydraNetworkErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateHydraNetworkErrorMessageEnum),
          ) as CreateHydraNetworkErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateHydraNetworkErrorHttpStatusCodeEnum),
          ) as CreateHydraNetworkErrorHttpStatusCodeEnum;
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
  CreateHydraNetworkError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateHydraNetworkErrorBuilder();
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

class CreateHydraNetworkErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreateHydraNetworkError')
  static const CreateHydraNetworkErrorNameEnum createHydraNetworkError = _$createHydraNetworkErrorNameEnum_createHydraNetworkError;

  static Serializer<CreateHydraNetworkErrorNameEnum> get serializer => _$createHydraNetworkErrorNameEnumSerializer;

  const CreateHydraNetworkErrorNameEnum._(String name): super(name);

  static BuiltSet<CreateHydraNetworkErrorNameEnum> get values => _$createHydraNetworkErrorNameEnumValues;
  static CreateHydraNetworkErrorNameEnum valueOf(String name) => _$createHydraNetworkErrorNameEnumValueOf(name);
}

class CreateHydraNetworkErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreateHydraNetworkError')
  static const CreateHydraNetworkErrorMessageEnum createHydraNetworkError = _$createHydraNetworkErrorMessageEnum_createHydraNetworkError;

  static Serializer<CreateHydraNetworkErrorMessageEnum> get serializer => _$createHydraNetworkErrorMessageEnumSerializer;

  const CreateHydraNetworkErrorMessageEnum._(String name): super(name);

  static BuiltSet<CreateHydraNetworkErrorMessageEnum> get values => _$createHydraNetworkErrorMessageEnumValues;
  static CreateHydraNetworkErrorMessageEnum valueOf(String name) => _$createHydraNetworkErrorMessageEnumValueOf(name);
}

class CreateHydraNetworkErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CreateHydraNetworkErrorHttpStatusCodeEnum number400 = _$createHydraNetworkErrorHttpStatusCodeEnum_number400;

  static Serializer<CreateHydraNetworkErrorHttpStatusCodeEnum> get serializer => _$createHydraNetworkErrorHttpStatusCodeEnumSerializer;

  const CreateHydraNetworkErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CreateHydraNetworkErrorHttpStatusCodeEnum> get values => _$createHydraNetworkErrorHttpStatusCodeEnumValues;
  static CreateHydraNetworkErrorHttpStatusCodeEnum valueOf(String name) => _$createHydraNetworkErrorHttpStatusCodeEnumValueOf(name);
}

