//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'fetch_iotavp_response_ok.g.dart';

/// FetchIOTAVPResponseOK
///
/// Properties:
/// * [correlationId] - A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
/// * [presentationSubmission] - A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard.
/// * [vpToken] - A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.
@BuiltValue()
abstract class FetchIOTAVPResponseOK implements Built<FetchIOTAVPResponseOK, FetchIOTAVPResponseOKBuilder> {
  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  @BuiltValueField(wireName: r'correlationId')
  String? get correlationId;

  /// A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard.
  @BuiltValueField(wireName: r'presentation_submission')
  String? get presentationSubmission;

  /// A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.
  @BuiltValueField(wireName: r'vp_token')
  String? get vpToken;

  FetchIOTAVPResponseOK._();

  factory FetchIOTAVPResponseOK([void updates(FetchIOTAVPResponseOKBuilder b)]) = _$FetchIOTAVPResponseOK;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FetchIOTAVPResponseOKBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FetchIOTAVPResponseOK> get serializer => _$FetchIOTAVPResponseOKSerializer();
}

class _$FetchIOTAVPResponseOKSerializer implements PrimitiveSerializer<FetchIOTAVPResponseOK> {
  @override
  final Iterable<Type> types = const [FetchIOTAVPResponseOK, _$FetchIOTAVPResponseOK];

  @override
  final String wireName = r'FetchIOTAVPResponseOK';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FetchIOTAVPResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.correlationId != null) {
      yield r'correlationId';
      yield serializers.serialize(
        object.correlationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.presentationSubmission != null) {
      yield r'presentation_submission';
      yield serializers.serialize(
        object.presentationSubmission,
        specifiedType: const FullType(String),
      );
    }
    if (object.vpToken != null) {
      yield r'vp_token';
      yield serializers.serialize(
        object.vpToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FetchIOTAVPResponseOK object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FetchIOTAVPResponseOKBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'correlationId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.correlationId = valueDes;
          break;
        case r'presentation_submission':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.presentationSubmission = valueDes;
          break;
        case r'vp_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.vpToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FetchIOTAVPResponseOK deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FetchIOTAVPResponseOKBuilder();
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

