//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/descriptor.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'presentation_submission.g.dart';

/// PresentationSubmission
///
/// Properties:
/// * [id]
/// * [definitionId]
/// * [descriptorMap]
@BuiltValue()
abstract class PresentationSubmission
    implements Built<PresentationSubmission, PresentationSubmissionBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'definition_id')
  String get definitionId;

  @BuiltValueField(wireName: r'descriptor_map')
  BuiltList<Descriptor> get descriptorMap;

  PresentationSubmission._();

  factory PresentationSubmission(
          [void updates(PresentationSubmissionBuilder b)]) =
      _$PresentationSubmission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PresentationSubmissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PresentationSubmission> get serializer =>
      _$PresentationSubmissionSerializer();
}

class _$PresentationSubmissionSerializer
    implements PrimitiveSerializer<PresentationSubmission> {
  @override
  final Iterable<Type> types = const [
    PresentationSubmission,
    _$PresentationSubmission
  ];

  @override
  final String wireName = r'PresentationSubmission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PresentationSubmission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'definition_id';
    yield serializers.serialize(
      object.definitionId,
      specifiedType: const FullType(String),
    );
    yield r'descriptor_map';
    yield serializers.serialize(
      object.descriptorMap,
      specifiedType: const FullType(BuiltList, [FullType(Descriptor)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PresentationSubmission object, {
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
    required PresentationSubmissionBuilder result,
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
        case r'definition_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.definitionId = valueDes;
          break;
        case r'descriptor_map':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Descriptor)]),
          ) as BuiltList<Descriptor>;
          result.descriptorMap.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PresentationSubmission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PresentationSubmissionBuilder();
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
