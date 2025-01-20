//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_configuration_read_invalid_client_id_error.g.dart';

/// LoginConfigurationReadInvalidClientIdError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class LoginConfigurationReadInvalidClientIdError implements Built<LoginConfigurationReadInvalidClientIdError, LoginConfigurationReadInvalidClientIdErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  LoginConfigurationReadInvalidClientIdErrorNameEnum get name;
  // enum nameEnum {  LoginConfigurationReadInvalidClientIdError,  };

  @BuiltValueField(wireName: r'message')
  LoginConfigurationReadInvalidClientIdErrorMessageEnum get message;
  // enum messageEnum {  LoginConfigurationReadInvalidClientIdError,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  LoginConfigurationReadInvalidClientIdError._();

  factory LoginConfigurationReadInvalidClientIdError([void updates(LoginConfigurationReadInvalidClientIdErrorBuilder b)]) = _$LoginConfigurationReadInvalidClientIdError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginConfigurationReadInvalidClientIdErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginConfigurationReadInvalidClientIdError> get serializer => _$LoginConfigurationReadInvalidClientIdErrorSerializer();
}

class _$LoginConfigurationReadInvalidClientIdErrorSerializer implements PrimitiveSerializer<LoginConfigurationReadInvalidClientIdError> {
  @override
  final Iterable<Type> types = const [LoginConfigurationReadInvalidClientIdError, _$LoginConfigurationReadInvalidClientIdError];

  @override
  final String wireName = r'LoginConfigurationReadInvalidClientIdError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginConfigurationReadInvalidClientIdError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(LoginConfigurationReadInvalidClientIdErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(LoginConfigurationReadInvalidClientIdErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum),
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
    LoginConfigurationReadInvalidClientIdError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LoginConfigurationReadInvalidClientIdErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoginConfigurationReadInvalidClientIdErrorNameEnum),
          ) as LoginConfigurationReadInvalidClientIdErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoginConfigurationReadInvalidClientIdErrorMessageEnum),
          ) as LoginConfigurationReadInvalidClientIdErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum),
          ) as LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum;
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
  LoginConfigurationReadInvalidClientIdError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginConfigurationReadInvalidClientIdErrorBuilder();
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

class LoginConfigurationReadInvalidClientIdErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'LoginConfigurationReadInvalidClientIdError')
  static const LoginConfigurationReadInvalidClientIdErrorNameEnum loginConfigurationReadInvalidClientIdError = _$loginConfigurationReadInvalidClientIdErrorNameEnum_loginConfigurationReadInvalidClientIdError;

  static Serializer<LoginConfigurationReadInvalidClientIdErrorNameEnum> get serializer => _$loginConfigurationReadInvalidClientIdErrorNameEnumSerializer;

  const LoginConfigurationReadInvalidClientIdErrorNameEnum._(String name): super(name);

  static BuiltSet<LoginConfigurationReadInvalidClientIdErrorNameEnum> get values => _$loginConfigurationReadInvalidClientIdErrorNameEnumValues;
  static LoginConfigurationReadInvalidClientIdErrorNameEnum valueOf(String name) => _$loginConfigurationReadInvalidClientIdErrorNameEnumValueOf(name);
}

class LoginConfigurationReadInvalidClientIdErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'LoginConfigurationReadInvalidClientIdError')
  static const LoginConfigurationReadInvalidClientIdErrorMessageEnum loginConfigurationReadInvalidClientIdError = _$loginConfigurationReadInvalidClientIdErrorMessageEnum_loginConfigurationReadInvalidClientIdError;

  static Serializer<LoginConfigurationReadInvalidClientIdErrorMessageEnum> get serializer => _$loginConfigurationReadInvalidClientIdErrorMessageEnumSerializer;

  const LoginConfigurationReadInvalidClientIdErrorMessageEnum._(String name): super(name);

  static BuiltSet<LoginConfigurationReadInvalidClientIdErrorMessageEnum> get values => _$loginConfigurationReadInvalidClientIdErrorMessageEnumValues;
  static LoginConfigurationReadInvalidClientIdErrorMessageEnum valueOf(String name) => _$loginConfigurationReadInvalidClientIdErrorMessageEnumValueOf(name);
}

class LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum number400 = _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum_number400;

  static Serializer<LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum> get serializer => _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumSerializer;

  const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum> get values => _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumValues;
  static LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum valueOf(String name) => _$loginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumValueOf(name);
}

