//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invalid_groups_error.g.dart';

/// InvalidGroupsError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class InvalidGroupsError
    implements Built<InvalidGroupsError, InvalidGroupsErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  InvalidGroupsErrorNameEnum get name;
  // enum nameEnum {  InvalidGroupsError,  };

  @BuiltValueField(wireName: r'message')
  InvalidGroupsErrorMessageEnum get message;
  // enum messageEnum {  Invalid groups names,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  InvalidGroupsErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  400,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  InvalidGroupsError._();

  factory InvalidGroupsError([void updates(InvalidGroupsErrorBuilder b)]) =
      _$InvalidGroupsError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvalidGroupsErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvalidGroupsError> get serializer =>
      _$InvalidGroupsErrorSerializer();
}

class _$InvalidGroupsErrorSerializer
    implements PrimitiveSerializer<InvalidGroupsError> {
  @override
  final Iterable<Type> types = const [InvalidGroupsError, _$InvalidGroupsError];

  @override
  final String wireName = r'InvalidGroupsError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvalidGroupsError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(InvalidGroupsErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(InvalidGroupsErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(InvalidGroupsErrorHttpStatusCodeEnum),
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
    InvalidGroupsError object, {
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
    required InvalidGroupsErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidGroupsErrorNameEnum),
          ) as InvalidGroupsErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidGroupsErrorMessageEnum),
          ) as InvalidGroupsErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InvalidGroupsErrorHttpStatusCodeEnum),
          ) as InvalidGroupsErrorHttpStatusCodeEnum;
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
  InvalidGroupsError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvalidGroupsErrorBuilder();
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

class InvalidGroupsErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'InvalidGroupsError')
  static const InvalidGroupsErrorNameEnum invalidGroupsError =
      _$invalidGroupsErrorNameEnum_invalidGroupsError;

  static Serializer<InvalidGroupsErrorNameEnum> get serializer =>
      _$invalidGroupsErrorNameEnumSerializer;

  const InvalidGroupsErrorNameEnum._(String name) : super(name);

  static BuiltSet<InvalidGroupsErrorNameEnum> get values =>
      _$invalidGroupsErrorNameEnumValues;
  static InvalidGroupsErrorNameEnum valueOf(String name) =>
      _$invalidGroupsErrorNameEnumValueOf(name);
}

class InvalidGroupsErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Invalid groups names')
  static const InvalidGroupsErrorMessageEnum invalidGroupsNames =
      _$invalidGroupsErrorMessageEnum_invalidGroupsNames;

  static Serializer<InvalidGroupsErrorMessageEnum> get serializer =>
      _$invalidGroupsErrorMessageEnumSerializer;

  const InvalidGroupsErrorMessageEnum._(String name) : super(name);

  static BuiltSet<InvalidGroupsErrorMessageEnum> get values =>
      _$invalidGroupsErrorMessageEnumValues;
  static InvalidGroupsErrorMessageEnum valueOf(String name) =>
      _$invalidGroupsErrorMessageEnumValueOf(name);
}

class InvalidGroupsErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 400)
  static const InvalidGroupsErrorHttpStatusCodeEnum number400 =
      _$invalidGroupsErrorHttpStatusCodeEnum_number400;

  static Serializer<InvalidGroupsErrorHttpStatusCodeEnum> get serializer =>
      _$invalidGroupsErrorHttpStatusCodeEnumSerializer;

  const InvalidGroupsErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<InvalidGroupsErrorHttpStatusCodeEnum> get values =>
      _$invalidGroupsErrorHttpStatusCodeEnumValues;
  static InvalidGroupsErrorHttpStatusCodeEnum valueOf(String name) =>
      _$invalidGroupsErrorHttpStatusCodeEnumValueOf(name);
}
