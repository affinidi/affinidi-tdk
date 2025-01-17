//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'not_found_error.g.dart';

/// NotFoundError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class NotFoundError implements Built<NotFoundError, NotFoundErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  NotFoundErrorNameEnum get name;
  // enum nameEnum {  NotFoundError,  };

  @BuiltValueField(wireName: r'message')
  NotFoundErrorMessageEnum get message;
  // enum messageEnum {  Not found: ${param}.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  NotFoundErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  404,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  NotFoundError._();

  factory NotFoundError([void updates(NotFoundErrorBuilder b)]) = _$NotFoundError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotFoundErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotFoundError> get serializer => _$NotFoundErrorSerializer();
}

class _$NotFoundErrorSerializer implements PrimitiveSerializer<NotFoundError> {
  @override
  final Iterable<Type> types = const [NotFoundError, _$NotFoundError];

  @override
  final String wireName = r'NotFoundError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotFoundError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(NotFoundErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(NotFoundErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(NotFoundErrorHttpStatusCodeEnum),
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
    NotFoundError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NotFoundErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotFoundErrorNameEnum),
          ) as NotFoundErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotFoundErrorMessageEnum),
          ) as NotFoundErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotFoundErrorHttpStatusCodeEnum),
          ) as NotFoundErrorHttpStatusCodeEnum;
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
  NotFoundError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotFoundErrorBuilder();
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

class NotFoundErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'NotFoundError')
  static const NotFoundErrorNameEnum notFoundError = _$notFoundErrorNameEnum_notFoundError;

  static Serializer<NotFoundErrorNameEnum> get serializer => _$notFoundErrorNameEnumSerializer;

  const NotFoundErrorNameEnum._(String name): super(name);

  static BuiltSet<NotFoundErrorNameEnum> get values => _$notFoundErrorNameEnumValues;
  static NotFoundErrorNameEnum valueOf(String name) => _$notFoundErrorNameEnumValueOf(name);
}

class NotFoundErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Not found: ${param}.')
  static const NotFoundErrorMessageEnum notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = _$notFoundErrorMessageEnum_notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;

  static Serializer<NotFoundErrorMessageEnum> get serializer => _$notFoundErrorMessageEnumSerializer;

  const NotFoundErrorMessageEnum._(String name): super(name);

  static BuiltSet<NotFoundErrorMessageEnum> get values => _$notFoundErrorMessageEnumValues;
  static NotFoundErrorMessageEnum valueOf(String name) => _$notFoundErrorMessageEnumValueOf(name);
}

class NotFoundErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 404)
  static const NotFoundErrorHttpStatusCodeEnum number404 = _$notFoundErrorHttpStatusCodeEnum_number404;

  static Serializer<NotFoundErrorHttpStatusCodeEnum> get serializer => _$notFoundErrorHttpStatusCodeEnumSerializer;

  const NotFoundErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<NotFoundErrorHttpStatusCodeEnum> get values => _$notFoundErrorHttpStatusCodeEnumValues;
  static NotFoundErrorHttpStatusCodeEnum valueOf(String name) => _$notFoundErrorHttpStatusCodeEnumValueOf(name);
}

