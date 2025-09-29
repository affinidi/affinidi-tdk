//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_status_list_result_dto.g.dart';

/// DTO contains revocation list credential
///
/// Properties:
/// * [revocationListCredential]
@BuiltValue()
abstract class GetStatusListResultDto
    implements Built<GetStatusListResultDto, GetStatusListResultDtoBuilder> {
  @BuiltValueField(wireName: r'revocationListCredential')
  JsonObject get revocationListCredential;

  GetStatusListResultDto._();

  factory GetStatusListResultDto(
          [void updates(GetStatusListResultDtoBuilder b)]) =
      _$GetStatusListResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetStatusListResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetStatusListResultDto> get serializer =>
      _$GetStatusListResultDtoSerializer();
}

class _$GetStatusListResultDtoSerializer
    implements PrimitiveSerializer<GetStatusListResultDto> {
  @override
  final Iterable<Type> types = const [
    GetStatusListResultDto,
    _$GetStatusListResultDto
  ];

  @override
  final String wireName = r'GetStatusListResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetStatusListResultDto object, {
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
    GetStatusListResultDto object, {
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
    required GetStatusListResultDtoBuilder result,
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
  GetStatusListResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetStatusListResultDtoBuilder();
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
