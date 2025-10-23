//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'json_web_key_dto.g.dart';

/// JsonWebKeyDto
///
/// Properties:
/// * [kid]
/// * [kty]
/// * [n]
/// * [e]
/// * [x]
/// * [y]
/// * [crv]
/// * [alg]
/// * [use]
@BuiltValue()
abstract class JsonWebKeyDto
    implements Built<JsonWebKeyDto, JsonWebKeyDtoBuilder> {
  @BuiltValueField(wireName: r'kid')
  String get kid;

  @BuiltValueField(wireName: r'kty')
  String get kty;

  @BuiltValueField(wireName: r'n')
  String? get n;

  @BuiltValueField(wireName: r'e')
  String? get e;

  @BuiltValueField(wireName: r'x')
  String? get x;

  @BuiltValueField(wireName: r'y')
  String? get y;

  @BuiltValueField(wireName: r'crv')
  String? get crv;

  @BuiltValueField(wireName: r'alg')
  String get alg;

  @BuiltValueField(wireName: r'use')
  String get use;

  JsonWebKeyDto._();

  factory JsonWebKeyDto([void updates(JsonWebKeyDtoBuilder b)]) =
      _$JsonWebKeyDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JsonWebKeyDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JsonWebKeyDto> get serializer =>
      _$JsonWebKeyDtoSerializer();
}

class _$JsonWebKeyDtoSerializer implements PrimitiveSerializer<JsonWebKeyDto> {
  @override
  final Iterable<Type> types = const [JsonWebKeyDto, _$JsonWebKeyDto];

  @override
  final String wireName = r'JsonWebKeyDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JsonWebKeyDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'kid';
    yield serializers.serialize(
      object.kid,
      specifiedType: const FullType(String),
    );
    yield r'kty';
    yield serializers.serialize(
      object.kty,
      specifiedType: const FullType(String),
    );
    if (object.n != null) {
      yield r'n';
      yield serializers.serialize(
        object.n,
        specifiedType: const FullType(String),
      );
    }
    if (object.e != null) {
      yield r'e';
      yield serializers.serialize(
        object.e,
        specifiedType: const FullType(String),
      );
    }
    if (object.x != null) {
      yield r'x';
      yield serializers.serialize(
        object.x,
        specifiedType: const FullType(String),
      );
    }
    if (object.y != null) {
      yield r'y';
      yield serializers.serialize(
        object.y,
        specifiedType: const FullType(String),
      );
    }
    if (object.crv != null) {
      yield r'crv';
      yield serializers.serialize(
        object.crv,
        specifiedType: const FullType(String),
      );
    }
    yield r'alg';
    yield serializers.serialize(
      object.alg,
      specifiedType: const FullType(String),
    );
    yield r'use';
    yield serializers.serialize(
      object.use,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    JsonWebKeyDto object, {
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
    required JsonWebKeyDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'kid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kid = valueDes;
          break;
        case r'kty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kty = valueDes;
          break;
        case r'n':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.n = valueDes;
          break;
        case r'e':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.e = valueDes;
          break;
        case r'x':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.x = valueDes;
          break;
        case r'y':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.y = valueDes;
          break;
        case r'crv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.crv = valueDes;
          break;
        case r'alg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alg = valueDes;
          break;
        case r'use':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.use = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JsonWebKeyDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JsonWebKeyDtoBuilder();
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
