//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_proof.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_credential_input_credential_requests_inner.g.dart';

/// BatchCredentialInputCredentialRequestsInner
///
/// Properties:
/// * [credentialIdentifier] - It is a String that identifies a Credential that is being requested to be issued.
/// * [proof]
@BuiltValue()
abstract class BatchCredentialInputCredentialRequestsInner
    implements
        Built<BatchCredentialInputCredentialRequestsInner,
            BatchCredentialInputCredentialRequestsInnerBuilder> {
  /// It is a String that identifies a Credential that is being requested to be issued.
  @BuiltValueField(wireName: r'credential_identifier')
  String? get credentialIdentifier;

  @BuiltValueField(wireName: r'proof')
  CredentialProof get proof;

  BatchCredentialInputCredentialRequestsInner._();

  factory BatchCredentialInputCredentialRequestsInner(
          [void updates(
              BatchCredentialInputCredentialRequestsInnerBuilder b)]) =
      _$BatchCredentialInputCredentialRequestsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchCredentialInputCredentialRequestsInnerBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchCredentialInputCredentialRequestsInner>
      get serializer =>
          _$BatchCredentialInputCredentialRequestsInnerSerializer();
}

class _$BatchCredentialInputCredentialRequestsInnerSerializer
    implements
        PrimitiveSerializer<BatchCredentialInputCredentialRequestsInner> {
  @override
  final Iterable<Type> types = const [
    BatchCredentialInputCredentialRequestsInner,
    _$BatchCredentialInputCredentialRequestsInner
  ];

  @override
  final String wireName = r'BatchCredentialInputCredentialRequestsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchCredentialInputCredentialRequestsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.credentialIdentifier != null) {
      yield r'credential_identifier';
      yield serializers.serialize(
        object.credentialIdentifier,
        specifiedType: const FullType(String),
      );
    }
    yield r'proof';
    yield serializers.serialize(
      object.proof,
      specifiedType: const FullType(CredentialProof),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchCredentialInputCredentialRequestsInner object, {
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
    required BatchCredentialInputCredentialRequestsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential_identifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialIdentifier = valueDes;
          break;
        case r'proof':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialProof),
          ) as CredentialProof;
          result.proof.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchCredentialInputCredentialRequestsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchCredentialInputCredentialRequestsInnerBuilder();
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
