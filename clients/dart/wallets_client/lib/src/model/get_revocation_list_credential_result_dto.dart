//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_revocation_list_credential_result_dto.g.dart';

/// DTO contains revocation list credential
///
/// Properties:
/// * [revocationListCredential] 
@BuiltValue()
abstract class GetRevocationListCredentialResultDto implements Built<GetRevocationListCredentialResultDto, GetRevocationListCredentialResultDtoBuilder> {
  @BuiltValueField(wireName: r'revocationListCredential')
  JsonObject get revocationListCredential;

  GetRevocationListCredentialResultDto._();

  factory GetRevocationListCredentialResultDto([void updates(GetRevocationListCredentialResultDtoBuilder b)]) = _$GetRevocationListCredentialResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetRevocationListCredentialResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetRevocationListCredentialResultDto> get serializer => _$GetRevocationListCredentialResultDtoSerializer();
}

class _$GetRevocationListCredentialResultDtoSerializer implements PrimitiveSerializer<GetRevocationListCredentialResultDto> {
  @override
  final Iterable<Type> types = const [GetRevocationListCredentialResultDto, _$GetRevocationListCredentialResultDto];

  @override
  final String wireName = r'GetRevocationListCredentialResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetRevocationListCredentialResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'revocationListCredential';
    yield serializers.serialize(
      object.revocationListCredential,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GetRevocationListCredentialResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetRevocationListCredentialResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revocationListCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.revocationListCredential = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GetRevocationListCredentialResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetRevocationListCredentialResultDtoBuilder();
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

