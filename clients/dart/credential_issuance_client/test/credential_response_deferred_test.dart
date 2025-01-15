import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for CredentialResponseDeferred
void main() {
  final instance = CredentialResponseDeferredBuilder();
  // TODO add properties to the builder and call build()

  group(CredentialResponseDeferred, () {
    // String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
    // String transactionId
    test('to test the property `transactionId`', () async {
      // TODO
    });

    // String containing a nonce to be used when creating a proof of possession of the key proof
    // String cNonce
    test('to test the property `cNonce`', () async {
      // TODO
    });

    // Lifetime in seconds of the c_nonce
    // int cNonceExpiresIn
    test('to test the property `cNonceExpiresIn`', () async {
      // TODO
    });

  });
}
