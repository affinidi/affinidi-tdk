//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_vault_data_manager_client/src/model/json_web_key_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_web_key_set_dto.g.dart';

/// JsonWebKeySetDto
///
/// Properties:
/// * [keys]
@BuiltValue()
abstract class JsonWebKeySetDto
    implements Built<JsonWebKeySetDto, JsonWebKeySetDtoBuilder> {
  @BuiltValueField(wireName: r'keys')
  BuiltList<JsonWebKeyDto> get keys;

  JsonWebKeySetDto._();

  factory JsonWebKeySetDto([void updates(JsonWebKeySetDtoBuilder b)]) =
      _$JsonWebKeySetDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonWebKeySetDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonWebKeySetDto> get serializer =>
      _$JsonWebKeySetDtoSerializer();
}

class _$JsonWebKeySetDtoSerializer
    implements PrimitiveSerializer<JsonWebKeySetDto> {
  @override
  final Iterable<Type> types = const [JsonWebKeySetDto, _$JsonWebKeySetDto];

  @override
  final String wireName = r'JsonWebKeySetDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonWebKeySetDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'keys';
    yield serializers.serialize(
      object.keys,
      specifiedType: const FullType(BuiltList, [FullType(JsonWebKeyDto)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonWebKeySetDto object, {
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
    required JsonWebKeySetDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonWebKeyDto)]),
          ) as BuiltList<JsonWebKeyDto>;
          result.keys.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonWebKeySetDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonWebKeySetDtoBuilder();
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
