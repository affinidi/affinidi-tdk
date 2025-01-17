//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_credential.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/w3c_presentation_context.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/presentation_submission.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'w3c_presentation.g.dart';

/// W3cPresentation
///
/// Properties:
/// * [atContext] 
/// * [id] 
/// * [type] 
/// * [holder] 
/// * [verifiableCredential] 
/// * [presentationSubmission] 
/// * [proof] 
@BuiltValue()
abstract class W3cPresentation implements Built<W3cPresentation, W3cPresentationBuilder> {
  @BuiltValueField(wireName: r'@context')
  W3cPresentationContext get atContext;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'type')
  BuiltList<String> get type;

  @BuiltValueField(wireName: r'holder')
  JsonObject get holder;

  @BuiltValueField(wireName: r'verifiableCredential')
  BuiltList<W3cCredential> get verifiableCredential;

  @BuiltValueField(wireName: r'presentation_submission')
  PresentationSubmission? get presentationSubmission;

  @BuiltValueField(wireName: r'proof')
  JsonObject get proof;

  W3cPresentation._();

  factory W3cPresentation([void updates(W3cPresentationBuilder b)]) = _$W3cPresentation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(W3cPresentationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<W3cPresentation> get serializer => _$W3cPresentationSerializer();
}

class _$W3cPresentationSerializer implements PrimitiveSerializer<W3cPresentation> {
  @override
  final Iterable<Type> types = const [W3cPresentation, _$W3cPresentation];

  @override
  final String wireName = r'W3cPresentation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    W3cPresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@context';
    yield serializers.serialize(
      object.atContext,
      specifiedType: const FullType(W3cPresentationContext),
    );
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'holder';
    yield serializers.serialize(
      object.holder,
      specifiedType: const FullType(JsonObject),
    );
    yield r'verifiableCredential';
    yield serializers.serialize(
      object.verifiableCredential,
      specifiedType: const FullType(BuiltList, [FullType(W3cCredential)]),
    );
    if (object.presentationSubmission != null) {
      yield r'presentation_submission';
      yield serializers.serialize(
        object.presentationSubmission,
        specifiedType: const FullType(PresentationSubmission),
      );
    }
    yield r'proof';
    yield serializers.serialize(
      object.proof,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    W3cPresentation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required W3cPresentationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@context':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(W3cPresentationContext),
          ) as W3cPresentationContext;
          result.atContext.replace(valueDes);
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.type.replace(valueDes);
          break;
        case r'holder':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.holder = valueDes;
          break;
        case r'verifiableCredential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(W3cCredential)]),
          ) as BuiltList<W3cCredential>;
          result.verifiableCredential.replace(valueDes);
          break;
        case r'presentation_submission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PresentationSubmission),
          ) as PresentationSubmission;
          result.presentationSubmission.replace(valueDes);
          break;
        case r'proof':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.proof = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  W3cPresentation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = W3cPresentationBuilder();
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

