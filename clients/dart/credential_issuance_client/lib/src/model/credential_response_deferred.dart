//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_response_deferred.g.dart';

/// CredentialResponseDeferred
///
/// Properties:
/// * [transactionId] - String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
/// * [cNonce] - String containing a nonce to be used when creating a proof of possession of the key proof
/// * [cNonceExpiresIn] - Lifetime in seconds of the c_nonce
@BuiltValue()
abstract class CredentialResponseDeferred
    implements
        Built<CredentialResponseDeferred, CredentialResponseDeferredBuilder> {
  /// String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
  @BuiltValueField(wireName: r'transaction_id')
  String get transactionId;

  /// String containing a nonce to be used when creating a proof of possession of the key proof
  @BuiltValueField(wireName: r'c_nonce')
  String get cNonce;

  /// Lifetime in seconds of the c_nonce
  @BuiltValueField(wireName: r'c_nonce_expires_in')
  int get cNonceExpiresIn;

  CredentialResponseDeferred._();

  factory CredentialResponseDeferred(
          [void updates(CredentialResponseDeferredBuilder b)]) =
      _$CredentialResponseDeferred;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialResponseDeferredBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialResponseDeferred> get serializer =>
      _$CredentialResponseDeferredSerializer();
}

class _$CredentialResponseDeferredSerializer
    implements PrimitiveSerializer<CredentialResponseDeferred> {
  @override
  final Iterable<Type> types = const [
    CredentialResponseDeferred,
    _$CredentialResponseDeferred
  ];

  @override
  final String wireName = r'CredentialResponseDeferred';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialResponseDeferred object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'transaction_id';
    yield serializers.serialize(
      object.transactionId,
      specifiedType: const FullType(String),
    );
    yield r'c_nonce';
    yield serializers.serialize(
      object.cNonce,
      specifiedType: const FullType(String),
    );
    yield r'c_nonce_expires_in';
    yield serializers.serialize(
      object.cNonceExpiresIn,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialResponseDeferred object, {
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
    required CredentialResponseDeferredBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transaction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionId = valueDes;
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
  CredentialResponseDeferred deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialResponseDeferredBuilder();
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
