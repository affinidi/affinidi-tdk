import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:test/test.dart';

import 'helpers/helpers.dart';

void main() {
  group('Credential Verification Client Integration Tests', () {
    late DefaultApi verificationApi;

    setUpAll(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );
      final apiClient = AffinidiTdkCredentialVerificationClient(
          authTokenHook: authProvider.fetchProjectScopedToken);
      verificationApi = apiClient.getDefaultApi();
    });

    test('Verify VC', () async {
      final credential = getFixtures().verifiableCredential;

      final verifyCredentialInputBuilder = VerifyCredentialInputBuilder()
        ..verifiableCredentials = ListBuilder<JsonObject>(
          [
            MapJsonObject(credential),
          ],
        );
      final verificationResponse = (await verificationApi.verifyCredentials(
              verifyCredentialInput: verifyCredentialInputBuilder.build()))
          .data;
      expect(verificationResponse, isNotNull);
      expect(verificationResponse!.isValid, isTrue);
      expect(verificationResponse.errors, isEmpty);
    });
  });
}
