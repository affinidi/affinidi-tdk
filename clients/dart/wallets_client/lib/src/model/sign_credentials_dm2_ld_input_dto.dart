//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm2_ld_input_dto.g.dart';

/// DTO contains params to sign credential
///
/// Properties:
/// * [unsignedCredential] - Unsigned Credential in Dm2 format 
/// * [revocable] 
@BuiltValue()
abstract class SignCredentialsDm2LdInputDto implements Built<SignCredentialsDm2LdInputDto, SignCredentialsDm2LdInputDtoBuilder> {
  /// Unsigned Credential in Dm2 format 
  @BuiltValueField(wireName: r'unsignedCredential')
  JsonObject get unsignedCredential;

  @BuiltValueField(wireName: r'revocable')
  bool? get revocable;

  SignCredentialsDm2LdInputDto._();

  factory SignCredentialsDm2LdInputDto([void updates(SignCredentialsDm2LdInputDtoBuilder b)]) = _$SignCredentialsDm2LdInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm2LdInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm2LdInputDto> get serializer => _$SignCredentialsDm2LdInputDtoSerializer();
}

class _$SignCredentialsDm2LdInputDtoSerializer implements PrimitiveSerializer<SignCredentialsDm2LdInputDto> {
  @override
  final Iterable<Type> types = const [SignCredentialsDm2LdInputDto, _$SignCredentialsDm2LdInputDto];

  @override
  final String wireName = r'SignCredentialsDm2LdInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm2LdInputDto object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsDm2LdInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignCredentialsDm2LdInputDtoBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignCredentialsDm2LdInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm2LdInputDtoBuilder();
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

