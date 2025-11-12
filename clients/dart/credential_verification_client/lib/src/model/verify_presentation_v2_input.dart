//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:affinidi_tdk_credential_verification_client/src/model/verify_presentation_v2_input_pex_query.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_presentation_v2_input.g.dart';

/// Request model of /v2/verify-vp
///
/// Properties:
/// * [verifiablePresentation]
/// * [pexQuery]
/// * [challenge] - Optional challenge string for domain/challenge verification
/// * [domain] - Optional domain for verification. Array of domain strings as per W3C VP standard
@BuiltValue()
abstract class VerifyPresentationV2Input
    implements
        Built<VerifyPresentationV2Input, VerifyPresentationV2InputBuilder> {
  @BuiltValueField(wireName: r'verifiablePresentation')
  JsonObject? get verifiablePresentation;

  @BuiltValueField(wireName: r'pexQuery')
  VerifyPresentationV2InputPexQuery? get pexQuery;

  /// Optional challenge string for domain/challenge verification
  @BuiltValueField(wireName: r'challenge')
  String? get challenge;

  /// Optional domain for verification. Array of domain strings as per W3C VP standard
  @BuiltValueField(wireName: r'domain')
  BuiltList<String>? get domain;

  VerifyPresentationV2Input._();

  factory VerifyPresentationV2Input(
          [void updates(VerifyPresentationV2InputBuilder b)]) =
      _$VerifyPresentationV2Input;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyPresentationV2InputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyPresentationV2Input> get serializer =>
      _$VerifyPresentationV2InputSerializer();
}

class _$VerifyPresentationV2InputSerializer
    implements PrimitiveSerializer<VerifyPresentationV2Input> {
  @override
  final Iterable<Type> types = const [
    VerifyPresentationV2Input,
    _$VerifyPresentationV2Input
  ];

  @override
  final String wireName = r'VerifyPresentationV2Input';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyPresentationV2Input object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.verifiablePresentation != null) {
      yield r'verifiablePresentation';
      yield serializers.serialize(
        object.verifiablePresentation,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.pexQuery != null) {
      yield r'pexQuery';
      yield serializers.serialize(
        object.pexQuery,
        specifiedType: const FullType(VerifyPresentationV2InputPexQuery),
      );
    }
    if (object.challenge != null) {
      yield r'challenge';
      yield serializers.serialize(
        object.challenge,
        specifiedType: const FullType(String),
      );
    }
    if (object.domain != null) {
      yield r'domain';
      yield serializers.serialize(
        object.domain,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyPresentationV2Input object, {
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
    required VerifyPresentationV2InputBuilder result,
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
        case r'pexQuery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VerifyPresentationV2InputPexQuery),
          ) as VerifyPresentationV2InputPexQuery;
          result.pexQuery.replace(valueDes);
          break;
        case r'challenge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.challenge = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.domain.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyPresentationV2Input deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyPresentationV2InputBuilder();
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
