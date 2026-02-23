//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_jwt_v2_input_dto.g.dart';

/// DTO contains payload of JWT to be signed
///
/// Properties:
/// * [payload]
/// * [keyId] - wallet key ID to use for signing (defaults to wallet's default key)
@BuiltValue()
abstract class SignJwtV2InputDto
    implements Built<SignJwtV2InputDto, SignJwtV2InputDtoBuilder> {
  @BuiltValueField(wireName: r'payload')
  JsonObject get payload;

  /// wallet key ID to use for signing (defaults to wallet's default key)
  @BuiltValueField(wireName: r'keyId')
  String? get keyId;

  SignJwtV2InputDto._();

  factory SignJwtV2InputDto([void updates(SignJwtV2InputDtoBuilder b)]) =
      _$SignJwtV2InputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignJwtV2InputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignJwtV2InputDto> get serializer =>
      _$SignJwtV2InputDtoSerializer();
}

class _$SignJwtV2InputDtoSerializer
    implements PrimitiveSerializer<SignJwtV2InputDto> {
  @override
  final Iterable<Type> types = const [SignJwtV2InputDto, _$SignJwtV2InputDto];

  @override
  final String wireName = r'SignJwtV2InputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignJwtV2InputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'payload';
    yield serializers.serialize(
      object.payload,
      specifiedType: const FullType(JsonObject),
    );
    if (object.keyId != null) {
      yield r'keyId';
      yield serializers.serialize(
        object.keyId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignJwtV2InputDto object, {
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
    required SignJwtV2InputDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.payload = valueDes;
          break;
        case r'keyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignJwtV2InputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignJwtV2InputDtoBuilder();
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
