//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'unpack_message_result_dto.g.dart';

/// DTO contains decrypted message in JSON fromat
///
/// Properties:
/// * [message] - decrypted message in JSON format
@BuiltValue()
abstract class UnpackMessageResultDto
    implements Built<UnpackMessageResultDto, UnpackMessageResultDtoBuilder> {
  /// decrypted message in JSON format
  @BuiltValueField(wireName: r'message')
  JsonObject get message;

  UnpackMessageResultDto._();

  factory UnpackMessageResultDto(
          [void updates(UnpackMessageResultDtoBuilder b)]) =
      _$UnpackMessageResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UnpackMessageResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UnpackMessageResultDto> get serializer =>
      _$UnpackMessageResultDtoSerializer();
}

class _$UnpackMessageResultDtoSerializer
    implements PrimitiveSerializer<UnpackMessageResultDto> {
  @override
  final Iterable<Type> types = const [
    UnpackMessageResultDto,
    _$UnpackMessageResultDto
  ];

  @override
  final String wireName = r'UnpackMessageResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UnpackMessageResultDto object, {
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
    UnpackMessageResultDto object, {
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
    required UnpackMessageResultDtoBuilder result,
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
  UnpackMessageResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UnpackMessageResultDtoBuilder();
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
