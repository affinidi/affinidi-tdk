//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vp_token_validation_error.g.dart';

/// VPTokenValidationError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class VPTokenValidationError implements Built<VPTokenValidationError, VPTokenValidationErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  VPTokenValidationErrorNameEnum get name;
  // enum nameEnum {  VPTokenValidationError,  };

  @BuiltValueField(wireName: r'message')
  VPTokenValidationErrorMessageEnum get message;
  // enum messageEnum {  VP token validation ended with an error,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  VPTokenValidationErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  VPTokenValidationError._();

  factory VPTokenValidationError([void updates(VPTokenValidationErrorBuilder b)]) = _$VPTokenValidationError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VPTokenValidationErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VPTokenValidationError> get serializer => _$VPTokenValidationErrorSerializer();
}

class _$VPTokenValidationErrorSerializer implements PrimitiveSerializer<VPTokenValidationError> {
  @override
  final Iterable<Type> types = const [VPTokenValidationError, _$VPTokenValidationError];

  @override
  final String wireName = r'VPTokenValidationError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VPTokenValidationError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(VPTokenValidationErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(VPTokenValidationErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(VPTokenValidationErrorHttpStatusCodeEnum),
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
    VPTokenValidationError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VPTokenValidationErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VPTokenValidationErrorNameEnum),
          ) as VPTokenValidationErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VPTokenValidationErrorMessageEnum),
          ) as VPTokenValidationErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VPTokenValidationErrorHttpStatusCodeEnum),
          ) as VPTokenValidationErrorHttpStatusCodeEnum;
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
  VPTokenValidationError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VPTokenValidationErrorBuilder();
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

class VPTokenValidationErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'VPTokenValidationError')
  static const VPTokenValidationErrorNameEnum vPTokenValidationError = _$vPTokenValidationErrorNameEnum_vPTokenValidationError;

  static Serializer<VPTokenValidationErrorNameEnum> get serializer => _$vPTokenValidationErrorNameEnumSerializer;

  const VPTokenValidationErrorNameEnum._(String name): super(name);

  static BuiltSet<VPTokenValidationErrorNameEnum> get values => _$vPTokenValidationErrorNameEnumValues;
  static VPTokenValidationErrorNameEnum valueOf(String name) => _$vPTokenValidationErrorNameEnumValueOf(name);
}

class VPTokenValidationErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'VP token validation ended with an error')
  static const VPTokenValidationErrorMessageEnum vPTokenValidationEndedWithAnError = _$vPTokenValidationErrorMessageEnum_vPTokenValidationEndedWithAnError;

  static Serializer<VPTokenValidationErrorMessageEnum> get serializer => _$vPTokenValidationErrorMessageEnumSerializer;

  const VPTokenValidationErrorMessageEnum._(String name): super(name);

  static BuiltSet<VPTokenValidationErrorMessageEnum> get values => _$vPTokenValidationErrorMessageEnumValues;
  static VPTokenValidationErrorMessageEnum valueOf(String name) => _$vPTokenValidationErrorMessageEnumValueOf(name);
}

class VPTokenValidationErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 400)
  static const VPTokenValidationErrorHttpStatusCodeEnum number400 = _$vPTokenValidationErrorHttpStatusCodeEnum_number400;

  static Serializer<VPTokenValidationErrorHttpStatusCodeEnum> get serializer => _$vPTokenValidationErrorHttpStatusCodeEnumSerializer;

  const VPTokenValidationErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<VPTokenValidationErrorHttpStatusCodeEnum> get values => _$vPTokenValidationErrorHttpStatusCodeEnumValues;
  static VPTokenValidationErrorHttpStatusCodeEnum valueOf(String name) => _$vPTokenValidationErrorHttpStatusCodeEnumValueOf(name);
}

