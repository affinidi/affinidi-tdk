//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_message_result_dto.g.dart';

/// DTO contains signed JSON
///
/// Properties:
/// * [signedMessage] - Signed message in JSON format
@BuiltValue()
abstract class SignMessageResultDto
    implements Built<SignMessageResultDto, SignMessageResultDtoBuilder> {
  /// Signed message in JSON format
  @BuiltValueField(wireName: r'signedMessage')
  JsonObject get signedMessage;

  SignMessageResultDto._();

  factory SignMessageResultDto([void updates(SignMessageResultDtoBuilder b)]) =
      _$SignMessageResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignMessageResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignMessageResultDto> get serializer =>
      _$SignMessageResultDtoSerializer();
}

class _$SignMessageResultDtoSerializer
    implements PrimitiveSerializer<SignMessageResultDto> {
  @override
  final Iterable<Type> types = const [
    SignMessageResultDto,
    _$SignMessageResultDto
  ];

  @override
  final String wireName = r'SignMessageResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignMessageResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'signedMessage';
    yield serializers.serialize(
      object.signedMessage,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignMessageResultDto object, {
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
    required SignMessageResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signedMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.signedMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignMessageResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignMessageResultDtoBuilder();
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
