import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';


/// tests for DefaultApi
void main() {
  final instance = AffinidiTdkCredentialVerificationClient().getDefaultApi();

  group(DefaultApi, () {
    // Verifying VC
    //
    // Verifying Verifiable Credentials (signatures)  `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.
    //
    //Future<VerifyCredentialOutput> verifyCredentials(VerifyCredentialInput verifyCredentialInput) async
    test('test verifyCredentials', () async {
      // TODO
    });

    // Verifying VP
    //
    // Verifying Verifiable Presentation (signatures)  `isValid` - true if presentation verified `error` verificaction error.
    //
    //Future<VerifyPresentationOutput> verifyPresentation(VerifyPresentationInput verifyPresentationInput) async
    test('test verifyPresentation', () async {
      // TODO
    });

  });
}
