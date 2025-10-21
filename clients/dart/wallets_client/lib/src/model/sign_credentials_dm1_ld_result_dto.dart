//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm1_ld_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [credential] - Signed credential can be in Dm1Ld format
@BuiltValue()
abstract class SignCredentialsDm1LdResultDto
    implements
        Built<SignCredentialsDm1LdResultDto,
            SignCredentialsDm1LdResultDtoBuilder> {
  /// Signed credential can be in Dm1Ld format
  @BuiltValueField(wireName: r'credential')
  JsonObject get credential;

  SignCredentialsDm1LdResultDto._();

  factory SignCredentialsDm1LdResultDto(
          [void updates(SignCredentialsDm1LdResultDtoBuilder b)]) =
      _$SignCredentialsDm1LdResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm1LdResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm1LdResultDto> get serializer =>
      _$SignCredentialsDm1LdResultDtoSerializer();
}

class _$SignCredentialsDm1LdResultDtoSerializer
    implements PrimitiveSerializer<SignCredentialsDm1LdResultDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsDm1LdResultDto,
    _$SignCredentialsDm1LdResultDto
  ];

  @override
  final String wireName = r'SignCredentialsDm1LdResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm1LdResultDto object, {
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
    SignCredentialsDm1LdResultDto object, {
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
    required SignCredentialsDm1LdResultDtoBuilder result,
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
  SignCredentialsDm1LdResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm1LdResultDtoBuilder();
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
