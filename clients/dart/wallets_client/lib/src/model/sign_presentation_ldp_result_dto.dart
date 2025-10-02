//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_presentation_ldp_result_dto.g.dart';

/// DTO contains signed presentation
///
/// Properties:
/// * [presentation] - Signed presentation in Dm1Ld format
@BuiltValue()
abstract class SignPresentationLdpResultDto
    implements
        Built<SignPresentationLdpResultDto,
            SignPresentationLdpResultDtoBuilder> {
  /// Signed presentation in Dm1Ld format
  @BuiltValueField(wireName: r'presentation')
  JsonObject get presentation;

  SignPresentationLdpResultDto._();

  factory SignPresentationLdpResultDto(
          [void updates(SignPresentationLdpResultDtoBuilder b)]) =
      _$SignPresentationLdpResultDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignPresentationLdpResultDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignPresentationLdpResultDto> get serializer =>
      _$SignPresentationLdpResultDtoSerializer();
}

class _$SignPresentationLdpResultDtoSerializer
    implements PrimitiveSerializer<SignPresentationLdpResultDto> {
  @override
  final Iterable<Type> types = const [
    SignPresentationLdpResultDto,
    _$SignPresentationLdpResultDto
  ];

  @override
  final String wireName = r'SignPresentationLdpResultDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignPresentationLdpResultDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'presentation';
    yield serializers.serialize(
      object.presentation,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignPresentationLdpResultDto object, {
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
    required SignPresentationLdpResultDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'presentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.presentation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignPresentationLdpResultDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignPresentationLdpResultDtoBuilder();
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
