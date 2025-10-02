//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_wallets_client/src/model/service_error_response_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_not_found_error.g.dart';

/// KeyNotFoundError
///
/// Properties:
/// * [name]
/// * [message]
/// * [httpStatusCode]
/// * [traceId]
/// * [details]
@BuiltValue()
abstract class KeyNotFoundError
    implements Built<KeyNotFoundError, KeyNotFoundErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  KeyNotFoundErrorNameEnum get name;
  // enum nameEnum {  KeyNotFoundError,  };

  @BuiltValueField(wireName: r'message')
  KeyNotFoundErrorMessageEnum get message;
  // enum messageEnum {  Key not found,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  KeyNotFoundErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  500,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<ServiceErrorResponseDetailsInner>? get details;

  KeyNotFoundError._();

  factory KeyNotFoundError([void updates(KeyNotFoundErrorBuilder b)]) =
      _$KeyNotFoundError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KeyNotFoundErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<KeyNotFoundError> get serializer =>
      _$KeyNotFoundErrorSerializer();
}

class _$KeyNotFoundErrorSerializer
    implements PrimitiveSerializer<KeyNotFoundError> {
  @override
  final Iterable<Type> types = const [KeyNotFoundError, _$KeyNotFoundError];

  @override
  final String wireName = r'KeyNotFoundError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    KeyNotFoundError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(KeyNotFoundErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(KeyNotFoundErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(KeyNotFoundErrorHttpStatusCodeEnum),
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
            BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    KeyNotFoundError object, {
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
    required KeyNotFoundErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KeyNotFoundErrorNameEnum),
          ) as KeyNotFoundErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KeyNotFoundErrorMessageEnum),
          ) as KeyNotFoundErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(KeyNotFoundErrorHttpStatusCodeEnum),
          ) as KeyNotFoundErrorHttpStatusCodeEnum;
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
                BuiltList, [FullType(ServiceErrorResponseDetailsInner)]),
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
  KeyNotFoundError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KeyNotFoundErrorBuilder();
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

class KeyNotFoundErrorNameEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'KeyNotFoundError')
  static const KeyNotFoundErrorNameEnum keyNotFoundError =
      _$keyNotFoundErrorNameEnum_keyNotFoundError;

  static Serializer<KeyNotFoundErrorNameEnum> get serializer =>
      _$keyNotFoundErrorNameEnumSerializer;

  const KeyNotFoundErrorNameEnum._(String name) : super(name);

  static BuiltSet<KeyNotFoundErrorNameEnum> get values =>
      _$keyNotFoundErrorNameEnumValues;
  static KeyNotFoundErrorNameEnum valueOf(String name) =>
      _$keyNotFoundErrorNameEnumValueOf(name);
}

class KeyNotFoundErrorMessageEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'Key not found')
  static const KeyNotFoundErrorMessageEnum keyNotFound =
      _$keyNotFoundErrorMessageEnum_keyNotFound;

  static Serializer<KeyNotFoundErrorMessageEnum> get serializer =>
      _$keyNotFoundErrorMessageEnumSerializer;

  const KeyNotFoundErrorMessageEnum._(String name) : super(name);

  static BuiltSet<KeyNotFoundErrorMessageEnum> get values =>
      _$keyNotFoundErrorMessageEnumValues;
  static KeyNotFoundErrorMessageEnum valueOf(String name) =>
      _$keyNotFoundErrorMessageEnumValueOf(name);
}

class KeyNotFoundErrorHttpStatusCodeEnum extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 500)
  static const KeyNotFoundErrorHttpStatusCodeEnum number500 =
      _$keyNotFoundErrorHttpStatusCodeEnum_number500;

  static Serializer<KeyNotFoundErrorHttpStatusCodeEnum> get serializer =>
      _$keyNotFoundErrorHttpStatusCodeEnumSerializer;

  const KeyNotFoundErrorHttpStatusCodeEnum._(String name) : super(name);

  static BuiltSet<KeyNotFoundErrorHttpStatusCodeEnum> get values =>
      _$keyNotFoundErrorHttpStatusCodeEnumValues;
  static KeyNotFoundErrorHttpStatusCodeEnum valueOf(String name) =>
      _$keyNotFoundErrorHttpStatusCodeEnumValueOf(name);
}
