//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iota_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'already_exists_error.g.dart';

/// AlreadyExistsError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class AlreadyExistsError implements Built<AlreadyExistsError, AlreadyExistsErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  AlreadyExistsErrorNameEnum get name;
  // enum nameEnum {  AlreadyExistsError,  };

  @BuiltValueField(wireName: r'message')
  AlreadyExistsErrorMessageEnum get message;
  // enum messageEnum {  Already exists: ${param}.,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  AlreadyExistsErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  409,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  AlreadyExistsError._();

  factory AlreadyExistsError([void updates(AlreadyExistsErrorBuilder b)]) = _$AlreadyExistsError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlreadyExistsErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlreadyExistsError> get serializer => _$AlreadyExistsErrorSerializer();
}

class _$AlreadyExistsErrorSerializer implements PrimitiveSerializer<AlreadyExistsError> {
  @override
  final Iterable<Type> types = const [AlreadyExistsError, _$AlreadyExistsError];

  @override
  final String wireName = r'AlreadyExistsError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlreadyExistsError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(AlreadyExistsErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(AlreadyExistsErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(AlreadyExistsErrorHttpStatusCodeEnum),
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
    AlreadyExistsError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlreadyExistsErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlreadyExistsErrorNameEnum),
          ) as AlreadyExistsErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlreadyExistsErrorMessageEnum),
          ) as AlreadyExistsErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlreadyExistsErrorHttpStatusCodeEnum),
          ) as AlreadyExistsErrorHttpStatusCodeEnum;
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
  AlreadyExistsError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlreadyExistsErrorBuilder();
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

class AlreadyExistsErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'AlreadyExistsError')
  static const AlreadyExistsErrorNameEnum alreadyExistsError = _$alreadyExistsErrorNameEnum_alreadyExistsError;

  static Serializer<AlreadyExistsErrorNameEnum> get serializer => _$alreadyExistsErrorNameEnumSerializer;

  const AlreadyExistsErrorNameEnum._(String name): super(name);

  static BuiltSet<AlreadyExistsErrorNameEnum> get values => _$alreadyExistsErrorNameEnumValues;
  static AlreadyExistsErrorNameEnum valueOf(String name) => _$alreadyExistsErrorNameEnumValueOf(name);
}

class AlreadyExistsErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Already exists: ${param}.')
  static const AlreadyExistsErrorMessageEnum alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = _$alreadyExistsErrorMessageEnum_alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;

  static Serializer<AlreadyExistsErrorMessageEnum> get serializer => _$alreadyExistsErrorMessageEnumSerializer;

  const AlreadyExistsErrorMessageEnum._(String name): super(name);

  static BuiltSet<AlreadyExistsErrorMessageEnum> get values => _$alreadyExistsErrorMessageEnumValues;
  static AlreadyExistsErrorMessageEnum valueOf(String name) => _$alreadyExistsErrorMessageEnumValueOf(name);
}

class AlreadyExistsErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 409)
  static const AlreadyExistsErrorHttpStatusCodeEnum number409 = _$alreadyExistsErrorHttpStatusCodeEnum_number409;

  static Serializer<AlreadyExistsErrorHttpStatusCodeEnum> get serializer => _$alreadyExistsErrorHttpStatusCodeEnumSerializer;

  const AlreadyExistsErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<AlreadyExistsErrorHttpStatusCodeEnum> get values => _$alreadyExistsErrorHttpStatusCodeEnumValues;
  static AlreadyExistsErrorHttpStatusCodeEnum valueOf(String name) => _$alreadyExistsErrorHttpStatusCodeEnumValueOf(name);
}

