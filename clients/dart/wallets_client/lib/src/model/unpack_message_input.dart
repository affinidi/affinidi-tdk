//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unpack_message_input.g.dart';

/// DTO contains params to unpack encrypted DIDComm message
///
/// Properties:
/// * [message] - Encrypted DIDComm message
@BuiltValue()
abstract class UnpackMessageInput
    implements Built<UnpackMessageInput, UnpackMessageInputBuilder> {
  /// Encrypted DIDComm message
  @BuiltValueField(wireName: r'message')
  JsonObject get message;

  UnpackMessageInput._();

  factory UnpackMessageInput([void updates(UnpackMessageInputBuilder b)]) =
      _$UnpackMessageInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnpackMessageInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnpackMessageInput> get serializer =>
      _$UnpackMessageInputSerializer();
}

class _$UnpackMessageInputSerializer
    implements PrimitiveSerializer<UnpackMessageInput> {
  @override
  final Iterable<Type> types = const [UnpackMessageInput, _$UnpackMessageInput];

  @override
  final String wireName = r'UnpackMessageInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnpackMessageInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UnpackMessageInput object, {
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
    required UnpackMessageInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UnpackMessageInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnpackMessageInputBuilder();
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
