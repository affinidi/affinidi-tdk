//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_dm1_jwt_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [credential] - Signed credential in DM2 jwt format
@BuiltValue()
abstract class SignCredentialsDm1JwtResultDto implements Built<SignCredentialsDm1JwtResultDto, SignCredentialsDm1JwtResultDtoBuilder> {
  /// Signed credential in DM2 jwt format
  @BuiltValueField(wireName: r'credential')
  String get credential;

  SignCredentialsDm1JwtResultDto._();

  factory SignCredentialsDm1JwtResultDto([void updates(SignCredentialsDm1JwtResultDtoBuilder b)]) = _$SignCredentialsDm1JwtResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsDm1JwtResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsDm1JwtResultDto> get serializer => _$SignCredentialsDm1JwtResultDtoSerializer();
}

class _$SignCredentialsDm1JwtResultDtoSerializer implements PrimitiveSerializer<SignCredentialsDm1JwtResultDto> {
  @override
  final Iterable<Type> types = const [SignCredentialsDm1JwtResultDto, _$SignCredentialsDm1JwtResultDto];

  @override
  final String wireName = r'SignCredentialsDm1JwtResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsDm1JwtResultDto object, {
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
    SignCredentialsDm1JwtResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SignCredentialsDm1JwtResultDtoBuilder result,
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
  SignCredentialsDm1JwtResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsDm1JwtResultDtoBuilder();
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

