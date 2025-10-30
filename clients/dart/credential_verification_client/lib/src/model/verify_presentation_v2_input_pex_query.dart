//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_presentation_v2_input_pex_query.g.dart';

/// Presentation Exchange Query containing presentation definition and submission
///
/// Properties:
/// * [presentationDefinition] - Presentation definition for the verification request
/// * [presentationSubmission] - Presentation submission for the verification request
@BuiltValue()
abstract class VerifyPresentationV2InputPexQuery
    implements
        Built<VerifyPresentationV2InputPexQuery,
            VerifyPresentationV2InputPexQueryBuilder> {
  /// Presentation definition for the verification request
  @BuiltValueField(wireName: r'presentationDefinition')
  JsonObject? get presentationDefinition;

  /// Presentation submission for the verification request
  @BuiltValueField(wireName: r'presentationSubmission')
  JsonObject? get presentationSubmission;

  VerifyPresentationV2InputPexQuery._();

  factory VerifyPresentationV2InputPexQuery(
          [void updates(VerifyPresentationV2InputPexQueryBuilder b)]) =
      _$VerifyPresentationV2InputPexQuery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyPresentationV2InputPexQueryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyPresentationV2InputPexQuery> get serializer =>
      _$VerifyPresentationV2InputPexQuerySerializer();
}

class _$VerifyPresentationV2InputPexQuerySerializer
    implements PrimitiveSerializer<VerifyPresentationV2InputPexQuery> {
  @override
  final Iterable<Type> types = const [
    VerifyPresentationV2InputPexQuery,
    _$VerifyPresentationV2InputPexQuery
  ];

  @override
  final String wireName = r'VerifyPresentationV2InputPexQuery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyPresentationV2InputPexQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyPresentationV2InputPexQuery object, {
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
    required VerifyPresentationV2InputPexQueryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyPresentationV2InputPexQuery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyPresentationV2InputPexQueryBuilder();
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
