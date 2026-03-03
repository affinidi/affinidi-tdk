//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_jwt_v2_result_dto.g.dart';

/// SignJwtV2ResultDto
///
/// Properties:
/// * [signedJwt]
@BuiltValue()
abstract class SignJwtV2ResultDto
    implements Built<SignJwtV2ResultDto, SignJwtV2ResultDtoBuilder> {
  @BuiltValueField(wireName: r'signedJwt')
  String? get signedJwt;

  SignJwtV2ResultDto._();

  factory SignJwtV2ResultDto([void updates(SignJwtV2ResultDtoBuilder b)]) =
      _$SignJwtV2ResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignJwtV2ResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignJwtV2ResultDto> get serializer =>
      _$SignJwtV2ResultDtoSerializer();
}

class _$SignJwtV2ResultDtoSerializer
    implements PrimitiveSerializer<SignJwtV2ResultDto> {
  @override
  final Iterable<Type> types = const [SignJwtV2ResultDto, _$SignJwtV2ResultDto];

  @override
  final String wireName = r'SignJwtV2ResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignJwtV2ResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signedJwt != null) {
      yield r'signedJwt';
      yield serializers.serialize(
        object.signedJwt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignJwtV2ResultDto object, {
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
    required SignJwtV2ResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signedJwt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signedJwt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignJwtV2ResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignJwtV2ResultDtoBuilder();
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
