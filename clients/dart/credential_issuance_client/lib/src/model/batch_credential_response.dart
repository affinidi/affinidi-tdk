//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/batch_credential_response_credential_responses_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'batch_credential_response.g.dart';

/// BatchCredentialResponse
///
/// Properties:
/// * [credentialResponses] 
/// * [cNonce] 
/// * [cNonceExpiresIn] - Expiration time in seconds
@BuiltValue()
abstract class BatchCredentialResponse implements Built<BatchCredentialResponse, BatchCredentialResponseBuilder> {
  @BuiltValueField(wireName: r'credential_responses')
  BuiltList<BatchCredentialResponseCredentialResponsesInner> get credentialResponses;

  @BuiltValueField(wireName: r'c_nonce')
  String? get cNonce;

  /// Expiration time in seconds
  @BuiltValueField(wireName: r'c_nonce_expires_in')
  int? get cNonceExpiresIn;

  BatchCredentialResponse._();

  factory BatchCredentialResponse([void updates(BatchCredentialResponseBuilder b)]) = _$BatchCredentialResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BatchCredentialResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BatchCredentialResponse> get serializer => _$BatchCredentialResponseSerializer();
}

class _$BatchCredentialResponseSerializer implements PrimitiveSerializer<BatchCredentialResponse> {
  @override
  final Iterable<Type> types = const [BatchCredentialResponse, _$BatchCredentialResponse];

  @override
  final String wireName = r'BatchCredentialResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BatchCredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential_responses';
    yield serializers.serialize(
      object.credentialResponses,
      specifiedType: const FullType(BuiltList, [FullType(BatchCredentialResponseCredentialResponsesInner)]),
    );
    if (object.cNonce != null) {
      yield r'c_nonce';
      yield serializers.serialize(
        object.cNonce,
        specifiedType: const FullType(String),
      );
    }
    if (object.cNonceExpiresIn != null) {
      yield r'c_nonce_expires_in';
      yield serializers.serialize(
        object.cNonceExpiresIn,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BatchCredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BatchCredentialResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential_responses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(BatchCredentialResponseCredentialResponsesInner)]),
          ) as BuiltList<BatchCredentialResponseCredentialResponsesInner>;
          result.credentialResponses.replace(valueDes);
          break;
        case r'c_nonce':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cNonce = valueDes;
          break;
        case r'c_nonce_expires_in':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cNonceExpiresIn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BatchCredentialResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BatchCredentialResponseBuilder();
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

