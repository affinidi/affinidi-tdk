//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm2_sd_jwt_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [credential] - Issued selective disclosure SD in jwt format
@BuiltValue()
abstract class SignCredentialsDm2SdJwtResultDto implements Built<SignCredentialsDm2SdJwtResultDto, SignCredentialsDm2SdJwtResultDtoBuilder> {
  /// Issued selective disclosure SD in jwt format
  @BuiltValueField(wireName: r'credential')
  String get credential;

  SignCredentialsDm2SdJwtResultDto._();

  factory SignCredentialsDm2SdJwtResultDto([void updates(SignCredentialsDm2SdJwtResultDtoBuilder b)]) = _$SignCredentialsDm2SdJwtResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm2SdJwtResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm2SdJwtResultDto> get serializer => _$SignCredentialsDm2SdJwtResultDtoSerializer();
}

class _$SignCredentialsDm2SdJwtResultDtoSerializer implements PrimitiveSerializer<SignCredentialsDm2SdJwtResultDto> {
  @override
  final Iterable<Type> types = const [SignCredentialsDm2SdJwtResultDto, _$SignCredentialsDm2SdJwtResultDto];

  @override
  final String wireName = r'SignCredentialsDm2SdJwtResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm2SdJwtResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential';
    yield serializers.serialize(
      object.credential,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignCredentialsDm2SdJwtResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignCredentialsDm2SdJwtResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  SignCredentialsDm2SdJwtResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm2SdJwtResultDtoBuilder();
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

