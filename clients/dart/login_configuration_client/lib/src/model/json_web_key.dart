//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_login_configuration_client/src/model/json_web_key_keys_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_web_key.g.dart';

/// JsonWebKey
///
/// Properties:
/// * [keys] - The value of the \"keys\" parameter is an array of JSON Web Key (JWK) values.  By default, the order of the JWK values within the array does not imply an  order of preference among them, although applications of JWK Sets can choose  to assign a meaning to the order for their purposes, if desired. 
@BuiltValue()
abstract class JsonWebKey implements Built<JsonWebKey, JsonWebKeyBuilder> {
  /// The value of the \"keys\" parameter is an array of JSON Web Key (JWK) values.  By default, the order of the JWK values within the array does not imply an  order of preference among them, although applications of JWK Sets can choose  to assign a meaning to the order for their purposes, if desired. 
  @BuiltValueField(wireName: r'keys')
  BuiltList<JsonWebKeyKeysInner>? get keys;

  JsonWebKey._();

  factory JsonWebKey([void updates(JsonWebKeyBuilder b)]) = _$JsonWebKey;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonWebKeyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonWebKey> get serializer => _$JsonWebKeySerializer();
}

class _$JsonWebKeySerializer implements PrimitiveSerializer<JsonWebKey> {
  @override
  final Iterable<Type> types = const [JsonWebKey, _$JsonWebKey];

  @override
  final String wireName = r'JsonWebKey';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonWebKey object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.keys != null) {
      yield r'keys';
      yield serializers.serialize(
        object.keys,
        specifiedType: const FullType(BuiltList, [FullType(JsonWebKeyKeysInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonWebKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JsonWebKeyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'keys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(JsonWebKeyKeysInner)]),
          ) as BuiltList<JsonWebKeyKeysInner>;
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
  JsonWebKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonWebKeyBuilder();
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

