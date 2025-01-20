//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_offer_response_grants.g.dart';

/// Object indicating to the Wallet the Grant Types the Credential Issuer's Authorization Server is prepared to process for this Credential Offer.
///
/// Properties:
/// * [urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode] 
@BuiltValue()
abstract class CredentialOfferResponseGrants implements Built<CredentialOfferResponseGrants, CredentialOfferResponseGrantsBuilder> {
  @BuiltValueField(wireName: r'urn:ietf:params:oauth:grant-type:pre-authorized_code')
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode get urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode;

  CredentialOfferResponseGrants._();

  factory CredentialOfferResponseGrants([void updates(CredentialOfferResponseGrantsBuilder b)]) = _$CredentialOfferResponseGrants;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialOfferResponseGrantsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialOfferResponseGrants> get serializer => _$CredentialOfferResponseGrantsSerializer();
}

class _$CredentialOfferResponseGrantsSerializer implements PrimitiveSerializer<CredentialOfferResponseGrants> {
  @override
  final Iterable<Type> types = const [CredentialOfferResponseGrants, _$CredentialOfferResponseGrants];

  @override
  final String wireName = r'CredentialOfferResponseGrants';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialOfferResponseGrants object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'urn:ietf:params:oauth:grant-type:pre-authorized_code';
    yield serializers.serialize(
      object.urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode,
      specifiedType: const FullType(CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialOfferResponseGrants object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialOfferResponseGrantsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'urn:ietf:params:oauth:grant-type:pre-authorized_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode),
          ) as CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode;
          result.urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialOfferResponseGrants deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialOfferResponseGrantsBuilder();
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

