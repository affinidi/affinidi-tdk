import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

import 'environment.dart';

void main() {
  group('Credential Issuance Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late String configurationId;
    late String walletId;

    setUp(() async {
      final env = getProjectEnvironment();
      walletId = env.walletId;

      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final issuanceClient = AffinidiTdkCredentialIssuanceClient(
        dio: Dio(BaseOptions(
          baseUrl: AffinidiTdkCredentialIssuanceClient.basePath,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        )),
        authTokenHook: authProvider.fetchProjectScopedToken);

      configurationApi = issuanceClient.getConfigurationApi();
    });

    test('Deletes issuance configuration if exists', () async {
      final configurations = (await configurationApi.getIssuanceConfigList()).data?.configurations;
      expect(configurations, isNotNull);

      if (configurations != null && configurations.isNotEmpty && configurations.length > 0) {
        configurationId = configurations.first.id;

        final statusCode = (await configurationApi.deleteIssuanceConfigById(configurationId: configurationId)).statusCode;
        expect(statusCode, 204);
      }
    });

    test('Creates issuance configuration', () async {
      final name = 'TestConfig';
      final description = 'Test issuance config';
      final format = CreateIssuanceConfigInputFormatEnum.ldpVc;
      final credentialOfferDuration = 600;
      final metadata = SupportedCredentialMetadataBuilder()
        ..display = ListBuilder([
          SupportedCredentialMetadataDisplayInner((b) => b
            ..name = 'Test Display'
            ..logo = (SupportedCredentialMetadataItemLogoBuilder()
              ..url = 'https://example.com/logo.png'
              ..altText = 'Logo'))
        ]);

      final credentialSupported = [
        CredentialSupportedObject((b) => b
          ..credentialTypeId = 'TDriversLicenseV1R1'
          ..jsonSchemaUrl = 'https://schema.affinidi.io/TDriversLicenseV1R1.json'
          ..jsonLdContextUrl = 'https://schema.affinidi.io/TDriversLicenseV1R1.jsonld'
          ..metadata = metadata),

        CredentialSupportedObject((b) => b
          ..credentialTypeId = 'TInstructorReviewV1R0'
          ..jsonSchemaUrl = 'https://schema.affinidi.io/TInstructorReviewV1R0.json'
          ..jsonLdContextUrl = 'https://schema.affinidi.io/TInstructorReviewV1R0.jsonld'
          ..metadata = metadata),

        CredentialSupportedObject((b) => b
          ..credentialTypeId = 'TSkillBadgeV1R0'
          ..jsonSchemaUrl = 'https://schema.affinidi.io/TSkillBadgeV1R0.json'
          ..jsonLdContextUrl = 'https://schema.affinidi.io/TSkillBadgeV1R0.jsonld'
          ..metadata = metadata),

        CredentialSupportedObject((b) => b
          ..credentialTypeId = 'TSimpleBioV1R0'
          ..jsonSchemaUrl = 'https://schema.affinidi.io/TSimpleBioV1R0.json'
          ..jsonLdContextUrl = 'https://schema.affinidi.io/TSimpleBioV1R0.jsonld'
          ..metadata = metadata),
      ];

      final configInputBuilder = CreateIssuanceConfigInputBuilder()
        ..issuerWalletId = walletId
        ..name = name
        ..description = description
        ..format = format
        ..credentialOfferDuration = credentialOfferDuration
        ..credentialSupported = ListBuilder(credentialSupported);

      // NOTE: You can have 1 issuance config per project
      final response = (await configurationApi.createIssuanceConfig(
            createIssuanceConfigInput: configInputBuilder.build()));

      expect(response.statusCode, 201);
      expect(response.data!.id, isNotEmpty);

      configurationId = response?.data?.id ?? '';
    });

    test('Updates issuance configuration', () async {
      final String updatedDescription = 'UpdatedDescription';

      final updateIssuanceConfigInput = UpdateIssuanceConfigInputBuilder()
        ..description = updatedDescription;

      final config = (await configurationApi.updateIssuanceConfigById(
        configurationId: configurationId,
        updateIssuanceConfigInput: updateIssuanceConfigInput.build())).data;

      expect(config, isNotNull);
      expect(config?.description, equals(updatedDescription));
    });

    test('Reads issuance configuration', () async {
      final config = (await configurationApi.getIssuanceConfigById(configurationId: configurationId)).data;

      expect(config, isNotNull);
      expect(config?.issuerWalletId, equals(walletId));
    });
  });
}
