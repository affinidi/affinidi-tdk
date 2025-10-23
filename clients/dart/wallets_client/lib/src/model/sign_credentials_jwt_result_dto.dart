//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_credentials_jwt_result_dto.g.dart';

/// DTO contains signed credential
///
/// Properties:
/// * [credential] - Signed credential in DM2 jwt format
@BuiltValue()
abstract class SignCredentialsJwtResultDto
    implements
        Built<SignCredentialsJwtResultDto, SignCredentialsJwtResultDtoBuilder> {
  /// Signed credential in DM2 jwt format
  @BuiltValueField(wireName: r'credential')
  String get credential;

  SignCredentialsJwtResultDto._();

  factory SignCredentialsJwtResultDto(
          [void updates(SignCredentialsJwtResultDtoBuilder b)]) =
      _$SignCredentialsJwtResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignCredentialsJwtResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignCredentialsJwtResultDto> get serializer =>
      _$SignCredentialsJwtResultDtoSerializer();
}

class _$SignCredentialsJwtResultDtoSerializer
    implements PrimitiveSerializer<SignCredentialsJwtResultDto> {
  @override
  final Iterable<Type> types = const [
    SignCredentialsJwtResultDto,
    _$SignCredentialsJwtResultDto
  ];

  @override
  final String wireName = r'SignCredentialsJwtResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignCredentialsJwtResultDto object, {
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
    SignCredentialsJwtResultDto object, {
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
    required SignCredentialsJwtResultDtoBuilder result,
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
  SignCredentialsJwtResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignCredentialsJwtResultDtoBuilder();
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
