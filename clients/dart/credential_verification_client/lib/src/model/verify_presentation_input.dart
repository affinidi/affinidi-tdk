//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_presentation_input.g.dart';

/// Request model of /verify-vp
///
/// Properties:
/// * [verifiablePresentation] 
/// * [signedPresentation] 
/// * [presentationDefinition] 
/// * [presentationSubmission] 
/// * [dcqlQuery] 
/// * [challenge] 
@BuiltValue()
abstract class VerifyPresentationInput implements Built<VerifyPresentationInput, VerifyPresentationInputBuilder> {
  @BuiltValueField(wireName: r'verifiablePresentation')
  JsonObject? get verifiablePresentation;

  @BuiltValueField(wireName: r'signedPresentation')
  JsonObject? get signedPresentation;

  @BuiltValueField(wireName: r'presentationDefinition')
  JsonObject? get presentationDefinition;

  @BuiltValueField(wireName: r'presentationSubmission')
  JsonObject? get presentationSubmission;

  @BuiltValueField(wireName: r'dcqlQuery')
  JsonObject? get dcqlQuery;

  @BuiltValueField(wireName: r'challenge')
  String? get challenge;

  VerifyPresentationInput._();

  factory VerifyPresentationInput([void updates(VerifyPresentationInputBuilder b)]) = _$VerifyPresentationInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyPresentationInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyPresentationInput> get serializer => _$VerifyPresentationInputSerializer();
}

class _$VerifyPresentationInputSerializer implements PrimitiveSerializer<VerifyPresentationInput> {
  @override
  final Iterable<Type> types = const [VerifyPresentationInput, _$VerifyPresentationInput];

  @override
  final String wireName = r'VerifyPresentationInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyPresentationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.verifiablePresentation != null) {
      yield r'verifiablePresentation';
      yield serializers.serialize(
        object.verifiablePresentation,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.signedPresentation != null) {
      yield r'signedPresentation';
      yield serializers.serialize(
        object.signedPresentation,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.presentationDefinition != null) {
      yield r'presentationDefinition';
      yield serializers.serialize(
        object.presentationDefinition,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.presentationSubmission != null) {
      yield r'presentationSubmission';
      yield serializers.serialize(
        object.presentationSubmission,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.dcqlQuery != null) {
      yield r'dcqlQuery';
      yield serializers.serialize(
        object.dcqlQuery,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.challenge != null) {
      yield r'challenge';
      yield serializers.serialize(
        object.challenge,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyPresentationInput object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyPresentationInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'verifiablePresentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.verifiablePresentation = valueDes;
          break;
        case r'signedPresentation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.signedPresentation = valueDes;
          break;
        case r'presentationDefinition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.presentationDefinition = valueDes;
          break;
        case r'presentationSubmission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.presentationSubmission = valueDes;
          break;
        case r'dcqlQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.dcqlQuery = valueDes;
          break;
        case r'challenge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.challenge = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyPresentationInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyPresentationInputBuilder();
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

