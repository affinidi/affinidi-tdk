import 'package:affinidi_tdk_claim_verifiable_credential/oid4vci_claim_verifiable_credential.dart';

class OID4VCIClaimContextFixtures {
  static OID4VCIClaimContext general(
          {required String tokenEndpoint,
          required String credentialEndpoint}) =>
      OID4VCIClaimContext(
        issuerMetadata: OID4VCIIssuerMetadata(
          tokenEndpoint: tokenEndpoint,
          credentialEndpoint: credentialEndpoint,
          returnUris: [],
        ),
        credentialOffer: const OID4VCICredentialOffer(
          credentialIdentifier: 'test_credential_id',
          preAuthCode: 'test_pre_auth_code',
          isTxCodeRequired: true,
        ),
      );
}
