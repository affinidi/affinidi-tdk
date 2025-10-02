//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_presentation_ldp_input_dto.g.dart';

/// DTO contains params to sign presentation
///
/// Properties:
/// * [unsignedPresentation] - Unsigned presentation in Dm1 format
@BuiltValue()
abstract class SignPresentationLdpInputDto
    implements
        Built<SignPresentationLdpInputDto, SignPresentationLdpInputDtoBuilder> {
  /// Unsigned presentation in Dm1 format
  @BuiltValueField(wireName: r'unsignedPresentation')
  JsonObject get unsignedPresentation;

  SignPresentationLdpInputDto._();

  factory SignPresentationLdpInputDto(
          [void updates(SignPresentationLdpInputDtoBuilder b)]) =
      _$SignPresentationLdpInputDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignPresentationLdpInputDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignPresentationLdpInputDto> get serializer =>
      _$SignPresentationLdpInputDtoSerializer();
}

class _$SignPresentationLdpInputDtoSerializer
    implements PrimitiveSerializer<SignPresentationLdpInputDto> {
  @override
  final Iterable<Type> types = const [
    SignPresentationLdpInputDto,
    _$SignPresentationLdpInputDto
  ];

  @override
  final String wireName = r'SignPresentationLdpInputDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignPresentationLdpInputDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'unsignedPresentation';
    yield serializers.serialize(
      object.unsignedPresentation,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SignPresentationLdpInputDto object, {
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
    required SignPresentationLdpInputDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'unsignedPresentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.unsignedPresentation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignPresentationLdpInputDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignPresentationLdpInputDtoBuilder();
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
