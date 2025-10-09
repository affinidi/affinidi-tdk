//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/batch_credential_input_credential_requests_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_credential_input.g.dart';

/// BatchCredentialInput
///
/// Properties:
/// * [credentialRequests] - Array that contains Credential Request objects.
@BuiltValue()
abstract class BatchCredentialInput
    implements Built<BatchCredentialInput, BatchCredentialInputBuilder> {
  /// Array that contains Credential Request objects.
  @BuiltValueField(wireName: r'credential_requests')
  BuiltList<BatchCredentialInputCredentialRequestsInner> get credentialRequests;

  BatchCredentialInput._();

  factory BatchCredentialInput([void updates(BatchCredentialInputBuilder b)]) =
      _$BatchCredentialInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchCredentialInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchCredentialInput> get serializer =>
      _$BatchCredentialInputSerializer();
}

class _$BatchCredentialInputSerializer
    implements PrimitiveSerializer<BatchCredentialInput> {
  @override
  final Iterable<Type> types = const [
    BatchCredentialInput,
    _$BatchCredentialInput
  ];

  @override
  final String wireName = r'BatchCredentialInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchCredentialInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential_requests';
    yield serializers.serialize(
      object.credentialRequests,
      specifiedType: const FullType(
          BuiltList, [FullType(BatchCredentialInputCredentialRequestsInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchCredentialInput object, {
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
    required BatchCredentialInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential_requests':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList,
                [FullType(BatchCredentialInputCredentialRequestsInner)]),
          ) as BuiltList<BatchCredentialInputCredentialRequestsInner>;
          result.credentialRequests.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchCredentialInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchCredentialInputBuilder();
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
