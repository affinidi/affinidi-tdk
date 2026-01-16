import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:test/test.dart';

import 'helpers/helpers.dart';

void main() {
  group('Credential Verification Client Integration Tests', () {
    late DefaultApi verificationApi;

    setUpAll(() async {
      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride = replaceBaseDomain(
          AffinidiTdkCredentialVerificationClient.basePath, apiGwUrl);

      final apiClient = AffinidiTdkCredentialVerificationClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);
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
    test('Verifies credentials v2 - LDP format', () async {
      final fixtures = getFixtures();
      final credential = fixtures.verifiableCredential;

      // Convert the credential map to BuiltMap<String, JsonObject?>
      final mapBuilder = MapBuilder<String, JsonObject?>();
      credential.forEach((key, value) {
        mapBuilder[key] = JsonObject(value);
      });
      final credentialBuiltMap = mapBuilder.build();

      final verifyBuilder = VerifyCredentialV2InputBuilder()
        ..ldpVcs = ListBuilder<BuiltMap<String, JsonObject?>>([
          credentialBuiltMap,
        ]);

      final verificationResponse = await verificationApi.verifyCredentialsV2(
          verifyCredentialV2Input: verifyBuilder.build());

      expect(verificationResponse.data, isNotNull);
      expect(verificationResponse.data!.isValid, isTrue);
    });

    test('Verifies credentials v2 - JWT format', () async {
      final fixtures = getFixtures();
      final jwtCredential = fixtures.jwtCredentialV2;

      final verifyBuilder = VerifyCredentialV2InputBuilder()
        ..jwtVcs = ListBuilder<String>([jwtCredential]);

      final verificationResponse = await verificationApi.verifyCredentialsV2(
          verifyCredentialV2Input: verifyBuilder.build());

      expect(verificationResponse.data, isNotNull);
      expect(verificationResponse.data!.isValid, isTrue);
    });

    test('Verifies presentation v2', () async {
      final fixtures = getFixtures();
      final presentation = fixtures.verifiablePresentation;

      final verifyBuilder = VerifyPresentationV2InputBuilder()
        ..verifiablePresentation = MapJsonObject(presentation);

      final verificationResponse = await verificationApi.verifyPresentationV2(
          verifyPresentationV2Input: verifyBuilder.build());

      expect(verificationResponse.data, isNotNull);
      expect(verificationResponse.data!.isValid, isTrue);
    });
  });
}
