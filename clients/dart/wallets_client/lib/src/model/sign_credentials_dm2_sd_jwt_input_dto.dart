//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm2_sd_jwt_input_dto.g.dart';

/// DTO contains params to sign credential
///
/// Properties:
/// * [unsignedCredential] - Unsigned Credential in Dm2 format
/// * [revocable]
/// * [disclosureFrame]
@BuiltValue()
abstract class SignCredentialsDm2SdJwtInputDto
    implements
        Built<SignCredentialsDm2SdJwtInputDto,
            SignCredentialsDm2SdJwtInputDtoBuilder> {
  /// Unsigned Credential in Dm2 format
  @BuiltValueField(wireName: r'unsignedCredential')
  JsonObject get unsignedCredential;

  @BuiltValueField(wireName: r'revocable')
  bool? get revocable;

  @BuiltValueField(wireName: r'disclosureFrame')
  JsonObject get disclosureFrame;

  SignCredentialsDm2SdJwtInputDto._();

  factory SignCredentialsDm2SdJwtInputDto(
          [void updates(SignCredentialsDm2SdJwtInputDtoBuilder b)]) =
      _$SignCredentialsDm2SdJwtInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm2SdJwtInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm2SdJwtInputDto> get serializer =>
      _$SignCredentialsDm2SdJwtInputDtoSerializer();
}

class _$SignCredentialsDm2SdJwtInputDtoSerializer
    implements PrimitiveSerializer<SignCredentialsDm2SdJwtInputDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsDm2SdJwtInputDto,
    _$SignCredentialsDm2SdJwtInputDto
  ];

  @override
  final String wireName = r'SignCredentialsDm2SdJwtInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm2SdJwtInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unsignedCredential';
    yield serializers.serialize(
      object.unsignedCredential,
      specifiedType: const FullType(JsonObject),
    );
    if (object.revocable != null) {
      yield r'revocable';
      yield serializers.serialize(
        object.revocable,
        specifiedType: const FullType(bool),
      );
    }
    yield r'disclosureFrame';
    yield serializers.serialize(
      object.disclosureFrame,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsDm2SdJwtInputDto object, {
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
    required SignCredentialsDm2SdJwtInputDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unsignedCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.unsignedCredential = valueDes;
          break;
        case r'revocable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.revocable = valueDes;
          break;
        case r'disclosureFrame':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.disclosureFrame = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialsDm2SdJwtInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm2SdJwtInputDtoBuilder();
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
