//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_iota_client/src/model/invalid_parameter_error_details_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'message_publishing_error.g.dart';

/// MessagePublishingError
///
/// Properties:
/// * [name] 
/// * [message] 
/// * [httpStatusCode] 
/// * [traceId] 
/// * [details] 
@BuiltValue()
abstract class MessagePublishingError implements Built<MessagePublishingError, MessagePublishingErrorBuilder> {
  @BuiltValueField(wireName: r'name')
  MessagePublishingErrorNameEnum get name;
  // enum nameEnum {  MessagePublishingError,  };

  @BuiltValueField(wireName: r'message')
  MessagePublishingErrorMessageEnum get message;
  // enum messageEnum {  Not able to publish messages to topic,  };

  @BuiltValueField(wireName: r'httpStatusCode')
  MessagePublishingErrorHttpStatusCodeEnum get httpStatusCode;
  // enum httpStatusCodeEnum {  500,  };

  @BuiltValueField(wireName: r'traceId')
  String get traceId;

  @BuiltValueField(wireName: r'details')
  BuiltList<InvalidParameterErrorDetailsInner>? get details;

  MessagePublishingError._();

  factory MessagePublishingError([void updates(MessagePublishingErrorBuilder b)]) = _$MessagePublishingError;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MessagePublishingErrorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MessagePublishingError> get serializer => _$MessagePublishingErrorSerializer();
}

class _$MessagePublishingErrorSerializer implements PrimitiveSerializer<MessagePublishingError> {
  @override
  final Iterable<Type> types = const [MessagePublishingError, _$MessagePublishingError];

  @override
  final String wireName = r'MessagePublishingError';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MessagePublishingError object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(MessagePublishingErrorNameEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(MessagePublishingErrorMessageEnum),
    );
    yield r'httpStatusCode';
    yield serializers.serialize(
      object.httpStatusCode,
      specifiedType: const FullType(MessagePublishingErrorHttpStatusCodeEnum),
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
    MessagePublishingError object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MessagePublishingErrorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessagePublishingErrorNameEnum),
          ) as MessagePublishingErrorNameEnum;
          result.name = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessagePublishingErrorMessageEnum),
          ) as MessagePublishingErrorMessageEnum;
          result.message = valueDes;
          break;
        case r'httpStatusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MessagePublishingErrorHttpStatusCodeEnum),
          ) as MessagePublishingErrorHttpStatusCodeEnum;
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
  MessagePublishingError deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MessagePublishingErrorBuilder();
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

class MessagePublishingErrorNameEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'MessagePublishingError')
  static const MessagePublishingErrorNameEnum messagePublishingError = _$messagePublishingErrorNameEnum_messagePublishingError;

  static Serializer<MessagePublishingErrorNameEnum> get serializer => _$messagePublishingErrorNameEnumSerializer;

  const MessagePublishingErrorNameEnum._(String name): super(name);

  static BuiltSet<MessagePublishingErrorNameEnum> get values => _$messagePublishingErrorNameEnumValues;
  static MessagePublishingErrorNameEnum valueOf(String name) => _$messagePublishingErrorNameEnumValueOf(name);
}

class MessagePublishingErrorMessageEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'Not able to publish messages to topic')
  static const MessagePublishingErrorMessageEnum notAbleToPublishMessagesToTopic = _$messagePublishingErrorMessageEnum_notAbleToPublishMessagesToTopic;

  static Serializer<MessagePublishingErrorMessageEnum> get serializer => _$messagePublishingErrorMessageEnumSerializer;

  const MessagePublishingErrorMessageEnum._(String name): super(name);

  static BuiltSet<MessagePublishingErrorMessageEnum> get values => _$messagePublishingErrorMessageEnumValues;
  static MessagePublishingErrorMessageEnum valueOf(String name) => _$messagePublishingErrorMessageEnumValueOf(name);
}

class MessagePublishingErrorHttpStatusCodeEnum extends EnumClass {

  @BuiltValueEnumConst(wireNumber: 500)
  static const MessagePublishingErrorHttpStatusCodeEnum number500 = _$messagePublishingErrorHttpStatusCodeEnum_number500;

  static Serializer<MessagePublishingErrorHttpStatusCodeEnum> get serializer => _$messagePublishingErrorHttpStatusCodeEnumSerializer;

  const MessagePublishingErrorHttpStatusCodeEnum._(String name): super(name);

  static BuiltSet<MessagePublishingErrorHttpStatusCodeEnum> get values => _$messagePublishingErrorHttpStatusCodeEnumValues;
  static MessagePublishingErrorHttpStatusCodeEnum valueOf(String name) => _$messagePublishingErrorHttpStatusCodeEnumValueOf(name);
}

