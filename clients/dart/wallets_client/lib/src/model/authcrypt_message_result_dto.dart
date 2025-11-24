//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authcrypt_message_result_dto.g.dart';

/// DTO contains authcrypted message in JSON fromat
///
/// Properties:
/// * [authcryptedMessage] - Authcrypted message in JSON format
@BuiltValue()
abstract class AuthcryptMessageResultDto
    implements
        Built<AuthcryptMessageResultDto, AuthcryptMessageResultDtoBuilder> {
  /// Authcrypted message in JSON format
  @BuiltValueField(wireName: r'authcryptedMessage')
  JsonObject get authcryptedMessage;

  AuthcryptMessageResultDto._();

  factory AuthcryptMessageResultDto(
          [void updates(AuthcryptMessageResultDtoBuilder b)]) =
      _$AuthcryptMessageResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthcryptMessageResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthcryptMessageResultDto> get serializer =>
      _$AuthcryptMessageResultDtoSerializer();
}

class _$AuthcryptMessageResultDtoSerializer
    implements PrimitiveSerializer<AuthcryptMessageResultDto> {
  @override
  final Iterable<Type> types = const [
    AuthcryptMessageResultDto,
    _$AuthcryptMessageResultDto
  ];

  @override
  final String wireName = r'AuthcryptMessageResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthcryptMessageResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'authcryptedMessage';
    yield serializers.serialize(
      object.authcryptedMessage,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthcryptMessageResultDto object, {
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
    required AuthcryptMessageResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authcryptedMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.authcryptedMessage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthcryptMessageResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthcryptMessageResultDtoBuilder();
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
