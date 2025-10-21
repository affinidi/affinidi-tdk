//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_ldp_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [credential] - Signed credential can be in Dm2Ld format
@BuiltValue()
abstract class SignCredentialsLdpResultDto
    implements
        Built<SignCredentialsLdpResultDto, SignCredentialsLdpResultDtoBuilder> {
  /// Signed credential can be in Dm2Ld format
  @BuiltValueField(wireName: r'credential')
  JsonObject get credential;

  SignCredentialsLdpResultDto._();

  factory SignCredentialsLdpResultDto(
          [void updates(SignCredentialsLdpResultDtoBuilder b)]) =
      _$SignCredentialsLdpResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsLdpResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsLdpResultDto> get serializer =>
      _$SignCredentialsLdpResultDtoSerializer();
}

class _$SignCredentialsLdpResultDtoSerializer
    implements PrimitiveSerializer<SignCredentialsLdpResultDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsLdpResultDto,
    _$SignCredentialsLdpResultDto
  ];

  @override
  final String wireName = r'SignCredentialsLdpResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsLdpResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential';
    yield serializers.serialize(
      object.credential,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsLdpResultDto object, {
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
    required SignCredentialsLdpResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.credential = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialsLdpResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsLdpResultDtoBuilder();
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
