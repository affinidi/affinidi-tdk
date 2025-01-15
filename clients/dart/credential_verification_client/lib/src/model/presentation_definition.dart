//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_verification_client/src/model/submission_requirement.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/free_form_object.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/format.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/input_descriptor.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presentation_definition.g.dart';

/// Presentation definition
///
/// Properties:
/// * [id] - Definition id
/// * [name] - Definition name
/// * [purpose] - Definition purpose
/// * [format] 
/// * [submissionRequirements] 
/// * [inputDescriptors] 
/// * [frame] 
@BuiltValue()
abstract class PresentationDefinition implements Built<PresentationDefinition, PresentationDefinitionBuilder> {
  /// Definition id
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Definition name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Definition purpose
  @BuiltValueField(wireName: r'purpose')
  String? get purpose;

  @BuiltValueField(wireName: r'format')
  Format? get format;

  @BuiltValueField(wireName: r'submission_requirements')
  BuiltList<SubmissionRequirement>? get submissionRequirements;

  @BuiltValueField(wireName: r'input_descriptors')
  BuiltList<InputDescriptor> get inputDescriptors;

  @BuiltValueField(wireName: r'frame')
  FreeFormObject? get frame;

  PresentationDefinition._();

  factory PresentationDefinition([void updates(PresentationDefinitionBuilder b)]) = _$PresentationDefinition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresentationDefinitionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresentationDefinition> get serializer => _$PresentationDefinitionSerializer();
}

class _$PresentationDefinitionSerializer implements PrimitiveSerializer<PresentationDefinition> {
  @override
  final Iterable<Type> types = const [PresentationDefinition, _$PresentationDefinition];

  @override
  final String wireName = r'PresentationDefinition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresentationDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.purpose != null) {
      yield r'purpose';
      yield serializers.serialize(
        object.purpose,
        specifiedType: const FullType(String),
      );
    }
    if (object.format != null) {
      yield r'format';
      yield serializers.serialize(
        object.format,
        specifiedType: const FullType(Format),
      );
    }
    if (object.submissionRequirements != null) {
      yield r'submission_requirements';
      yield serializers.serialize(
        object.submissionRequirements,
        specifiedType: const FullType(BuiltList, [FullType(SubmissionRequirement)]),
      );
    }
    yield r'input_descriptors';
    yield serializers.serialize(
      object.inputDescriptors,
      specifiedType: const FullType(BuiltList, [FullType(InputDescriptor)]),
    );
    if (object.frame != null) {
      yield r'frame';
      yield serializers.serialize(
        object.frame,
        specifiedType: const FullType(FreeFormObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PresentationDefinition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PresentationDefinitionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'purpose':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.purpose = valueDes;
          break;
        case r'format':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Format),
          ) as Format;
          result.format.replace(valueDes);
          break;
        case r'submission_requirements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SubmissionRequirement)]),
          ) as BuiltList<SubmissionRequirement>;
          result.submissionRequirements.replace(valueDes);
          break;
        case r'input_descriptors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(InputDescriptor)]),
          ) as BuiltList<InputDescriptor>;
          result.inputDescriptors.replace(valueDes);
          break;
        case r'frame':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FreeFormObject),
          ) as FreeFormObject;
          result.frame = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PresentationDefinition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresentationDefinitionBuilder();
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

