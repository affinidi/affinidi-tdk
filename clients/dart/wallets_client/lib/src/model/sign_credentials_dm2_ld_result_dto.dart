//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm2_ld_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [credential] - Signed credential can be in Dm2Ld format
@BuiltValue()
abstract class SignCredentialsDm2LdResultDto
    implements
        Built<SignCredentialsDm2LdResultDto,
            SignCredentialsDm2LdResultDtoBuilder> {
  /// Signed credential can be in Dm2Ld format
  @BuiltValueField(wireName: r'credential')
  JsonObject get credential;

  SignCredentialsDm2LdResultDto._();

  factory SignCredentialsDm2LdResultDto(
          [void updates(SignCredentialsDm2LdResultDtoBuilder b)]) =
      _$SignCredentialsDm2LdResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm2LdResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm2LdResultDto> get serializer =>
      _$SignCredentialsDm2LdResultDtoSerializer();
}

class _$SignCredentialsDm2LdResultDtoSerializer
    implements PrimitiveSerializer<SignCredentialsDm2LdResultDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsDm2LdResultDto,
    _$SignCredentialsDm2LdResultDto
  ];

  @override
  final String wireName = r'SignCredentialsDm2LdResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm2LdResultDto object, {
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
    SignCredentialsDm2LdResultDto object, {
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
    required SignCredentialsDm2LdResultDtoBuilder result,
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
  SignCredentialsDm2LdResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm2LdResultDtoBuilder();
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
