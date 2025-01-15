//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response_grants.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_offer_response.g.dart';

/// CredentialOfferResponse
///
/// Properties:
/// * [credentialIssuer] - The URL of the Credential Issuer
/// * [credentialConfigurationIds] - Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported
/// * [grants] 
@BuiltValue()
abstract class CredentialOfferResponse implements Built<CredentialOfferResponse, CredentialOfferResponseBuilder> {
  /// The URL of the Credential Issuer
  @BuiltValueField(wireName: r'credential_issuer')
  String get credentialIssuer;

  /// Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported
  @BuiltValueField(wireName: r'credential_configuration_ids')
  BuiltList<String> get credentialConfigurationIds;

  @BuiltValueField(wireName: r'grants')
  CredentialOfferResponseGrants get grants;

  CredentialOfferResponse._();

  factory CredentialOfferResponse([void updates(CredentialOfferResponseBuilder b)]) = _$CredentialOfferResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialOfferResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialOfferResponse> get serializer => _$CredentialOfferResponseSerializer();
}

class _$CredentialOfferResponseSerializer implements PrimitiveSerializer<CredentialOfferResponse> {
  @override
  final Iterable<Type> types = const [CredentialOfferResponse, _$CredentialOfferResponse];

  @override
  final String wireName = r'CredentialOfferResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialOfferResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'credential_issuer';
    yield serializers.serialize(
      object.credentialIssuer,
      specifiedType: const FullType(String),
    );
    yield r'credential_configuration_ids';
    yield serializers.serialize(
      object.credentialConfigurationIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'grants';
    yield serializers.serialize(
      object.grants,
      specifiedType: const FullType(CredentialOfferResponseGrants),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialOfferResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialOfferResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'credential_issuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.credentialIssuer = valueDes;
          break;
        case r'credential_configuration_ids':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.credentialConfigurationIds.replace(valueDes);
          break;
        case r'grants':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferResponseGrants),
          ) as CredentialOfferResponseGrants;
          result.grants.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialOfferResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialOfferResponseBuilder();
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

