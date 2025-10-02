//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credential_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [signedCredential]
@BuiltValue()
abstract class SignCredentialResultDto
    implements Built<SignCredentialResultDto, SignCredentialResultDtoBuilder> {
  @BuiltValueField(wireName: r'signedCredential')
  BuiltMap<String, JsonObject?> get signedCredential;

  SignCredentialResultDto._();

  factory SignCredentialResultDto(
          [void updates(SignCredentialResultDtoBuilder b)]) =
      _$SignCredentialResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialResultDto> get serializer =>
      _$SignCredentialResultDtoSerializer();
}

class _$SignCredentialResultDtoSerializer
    implements PrimitiveSerializer<SignCredentialResultDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialResultDto,
    _$SignCredentialResultDto
  ];

  @override
  final String wireName = r'SignCredentialResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'signedCredential';
    yield serializers.serialize(
      object.signedCredential,
      specifiedType: const FullType(
          BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialResultDto object, {
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
    required SignCredentialResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signedCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.signedCredential.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialResultDtoBuilder();
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
