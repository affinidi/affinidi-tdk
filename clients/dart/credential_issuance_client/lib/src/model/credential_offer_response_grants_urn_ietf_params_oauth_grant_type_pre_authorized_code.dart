//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:affinidi_tdk_credential_issuance_client/src/model/credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.g.dart';

/// Grant type for `pre-authorized_code` flow
///
/// Properties:
/// * [preAuthorizedCode] - pre authorized code to be exchanged with jwt token
/// * [txCode] 
@BuiltValue()
abstract class CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode implements Built<CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode, CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder> {
  /// pre authorized code to be exchanged with jwt token
  @BuiltValueField(wireName: r'pre-authorized_code')
  String get preAuthorizedCode;

  @BuiltValueField(wireName: r'tx_code')
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode? get txCode;

  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode._();

  factory CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode([void updates(CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder b)]) = _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode> get serializer => _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeSerializer();
}

class _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeSerializer implements PrimitiveSerializer<CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode> {
  @override
  final Iterable<Type> types = const [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode, _$CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode];

  @override
  final String wireName = r'CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'pre-authorized_code';
    yield serializers.serialize(
      object.preAuthorizedCode,
      specifiedType: const FullType(String),
    );
    if (object.txCode != null) {
      yield r'tx_code';
      yield serializers.serialize(
        object.txCode,
        specifiedType: const FullType(CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pre-authorized_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preAuthorizedCode = valueDes;
          break;
        case r'tx_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode),
          ) as CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode;
          result.txCode.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeBuilder();
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

