//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_deferred.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate_credential.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_response_immediate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'credential_response.g.dart';

/// CredentialResponse
///
/// Properties:
/// * [credential]
/// * [cNonce] - String containing a nonce to be used when creating a proof of possession of the key proof
/// * [cNonceExpiresIn] - Lifetime in seconds of the c_nonce
/// * [transactionId] - String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
@BuiltValue()
abstract class CredentialResponse
    implements Built<CredentialResponse, CredentialResponseBuilder> {
  /// One Of [CredentialResponseDeferred], [CredentialResponseImmediate]
  OneOf get oneOf;

  CredentialResponse._();

  factory CredentialResponse([void updates(CredentialResponseBuilder b)]) =
      _$CredentialResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialResponse> get serializer =>
      _$CredentialResponseSerializer();
}

class _$CredentialResponseSerializer
    implements PrimitiveSerializer<CredentialResponse> {
  @override
  final Iterable<Type> types = const [CredentialResponse, _$CredentialResponse];

  @override
  final String wireName = r'CredentialResponse';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, CredentialResponse object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    CredentialResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  CredentialResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(CredentialResponseImmediate),
      FullType(CredentialResponseDeferred),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}
