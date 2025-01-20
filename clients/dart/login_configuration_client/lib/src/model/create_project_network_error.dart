//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_project_network_error.g.dart';

/// CreateProjectNetworkError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class CreateProjectNetworkError implements Built<CreateProjectNetworkError, CreateProjectNetworkErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  CreateProjectNetworkErrorNameEnum get name;
  // enum nameEnum {  CreateProjectNetworkError,  };

  @BuiltValueField(wireName: r'message')
  CreateProjectNetworkErrorMessageEnum get message;
  // enum messageEnum {  CreateProjectNetworkError,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  CreateProjectNetworkErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  CreateProjectNetworkError._();

  factory CreateProjectNetworkError([void updates(CreateProjectNetworkErrorBuilder b)]) = _$CreateProjectNetworkError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateProjectNetworkErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateProjectNetworkError> get serializer => _$CreateProjectNetworkErrorSerializer();
}

class _$CreateProjectNetworkErrorSerializer implements PrimitiveSerializer<CreateProjectNetworkError> {
  @override
  final Iterable<Type> types = const [CreateProjectNetworkError, _$CreateProjectNetworkError];

  @override
  final String wireName = r'CreateProjectNetworkError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateProjectNetworkError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(CreateProjectNetworkErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(CreateProjectNetworkErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(CreateProjectNetworkErrorHttpStatusCodeEnum),
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
    CreateProjectNetworkError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateProjectNetworkErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateProjectNetworkErrorNameEnum),
          ) as CreateProjectNetworkErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateProjectNetworkErrorMessageEnum),
          ) as CreateProjectNetworkErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateProjectNetworkErrorHttpStatusCodeEnum),
          ) as CreateProjectNetworkErrorHttpStatusCodeEnum;
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
  CreateProjectNetworkError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateProjectNetworkErrorBuilder();
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

class CreateProjectNetworkErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreateProjectNetworkError')
  static const CreateProjectNetworkErrorNameEnum createProjectNetworkError = _$createProjectNetworkErrorNameEnum_createProjectNetworkError;

  static Serializer<CreateProjectNetworkErrorNameEnum> get serializer => _$createProjectNetworkErrorNameEnumSerializer;

  const CreateProjectNetworkErrorNameEnum._(String name): super(name);

  static BuiltSet<CreateProjectNetworkErrorNameEnum> get values => _$createProjectNetworkErrorNameEnumValues;
  static CreateProjectNetworkErrorNameEnum valueOf(String name) => _$createProjectNetworkErrorNameEnumValueOf(name);
}

class CreateProjectNetworkErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'CreateProjectNetworkError')
  static const CreateProjectNetworkErrorMessageEnum createProjectNetworkError = _$createProjectNetworkErrorMessageEnum_createProjectNetworkError;

  static Serializer<CreateProjectNetworkErrorMessageEnum> get serializer => _$createProjectNetworkErrorMessageEnumSerializer;

  const CreateProjectNetworkErrorMessageEnum._(String name): super(name);

  static BuiltSet<CreateProjectNetworkErrorMessageEnum> get values => _$createProjectNetworkErrorMessageEnumValues;
  static CreateProjectNetworkErrorMessageEnum valueOf(String name) => _$createProjectNetworkErrorMessageEnumValueOf(name);
}

class CreateProjectNetworkErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const CreateProjectNetworkErrorHttpStatusCodeEnum number400 = _$createProjectNetworkErrorHttpStatusCodeEnum_number400;

  static Serializer<CreateProjectNetworkErrorHttpStatusCodeEnum> get serializer => _$createProjectNetworkErrorHttpStatusCodeEnumSerializer;

  const CreateProjectNetworkErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<CreateProjectNetworkErrorHttpStatusCodeEnum> get values => _$createProjectNetworkErrorHttpStatusCodeEnumValues;
  static CreateProjectNetworkErrorHttpStatusCodeEnum valueOf(String name) => _$createProjectNetworkErrorHttpStatusCodeEnumValueOf(name);
}

