import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:built_value/json_object.dart' as built_value;
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

import 'environment.dart';

void main() {
  group('Credential Issuance Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late IssuanceApi issuanceApi;
    late CredentialsApi credentialsApi;
    late OfferApi offerApi;
    late WellKnownApi wellKnownApi;
    late String configurationId;
    late String walletId;
    late ConsumerAuthProvider consumerAuthProvider;
    final envVault = getVaultEnvironment();

    final env = getProjectEnvironment();

    setUp(() async {
      walletId = env.walletId;
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final wallet = Bip32Wallet.fromSeed(envVault.seed);
      final keyPair = await wallet.generateKey(keyId: "m/44'/60'/0'/0/0");
      final didDoc = DidKey.generateDocument(keyPair.publicKey);
      final didSigner = DidSigner(
        didDocument: didDoc,
        didKeyId: didDoc.verificationMethod.first.id,
        keyPair: keyPair,
        signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
      );
      consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);

      final issuanceClient = AffinidiTdkCredentialIssuanceClient(
          dio: Dio(BaseOptions(
            baseUrl: AffinidiTdkCredentialIssuanceClient.basePath,
            connectTimeout: const Duration(seconds: 10),
            receiveTimeout: const Duration(seconds: 10),
          )),
          authTokenHook: authProvider.fetchProjectScopedToken);
      configurationApi = issuanceClient.getConfigurationApi();
      issuanceApi = issuanceClient.getIssuanceApi();
      offerApi = issuanceClient.getOfferApi();
      credentialsApi = issuanceClient.getCredentialsApi();
      wellKnownApi = issuanceClient.getWellKnownApi();
    });
    group("issuance config", () {
      test('Deletes issuance configuration if exists', () async {
        final configurations = (await configurationApi.getIssuanceConfigList())
            .data
            ?.configurations;
        expect(configurations, isNotNull);

        if (configurations != null && configurations.isNotEmpty) {
          configurationId = configurations.first.id;

          final statusCode = (await configurationApi.deleteIssuanceConfigById(
                  configurationId: configurationId))
              .statusCode;
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
            ..jsonSchemaUrl =
                'https://schema.affinidi.io/TDriversLicenseV1R1.json'
            ..jsonLdContextUrl =
                'https://schema.affinidi.io/TDriversLicenseV1R1.jsonld'
            ..metadata = metadata),
          CredentialSupportedObject((b) => b
            ..credentialTypeId = 'TInstructorReviewV1R0'
            ..jsonSchemaUrl =
                'https://schema.affinidi.io/TInstructorReviewV1R0.json'
            ..jsonLdContextUrl =
                'https://schema.affinidi.io/TInstructorReviewV1R0.jsonld'
            ..metadata = metadata),
          CredentialSupportedObject((b) => b
            ..credentialTypeId = 'TSkillBadgeV1R0'
            ..jsonSchemaUrl = 'https://schema.affinidi.io/TSkillBadgeV1R0.json'
            ..jsonLdContextUrl =
                'https://schema.affinidi.io/TSkillBadgeV1R0.jsonld'
            ..metadata = metadata),
          CredentialSupportedObject((b) => b
            ..credentialTypeId = 'TSimpleBioV1R0'
            ..jsonSchemaUrl = 'https://schema.affinidi.io/TSimpleBioV1R0.json'
            ..jsonLdContextUrl =
                'https://schema.affinidi.io/TSimpleBioV1R0.jsonld'
            ..metadata = metadata),
          CredentialSupportedObject((b) => b
            ..credentialTypeId = 'UniversityDegree2024'
            ..jsonSchemaUrl =
                'https://schema.affinidi.io/AnyTUniversityDegreeV1R1.json'
            ..jsonLdContextUrl =
                'https://schema.affinidi.io/AnyTUniversityDegreeV1R1.jsonld'
            ..metadata = metadata),
        ];

        final webhookEndpoint = CisConfigurationWebhookSettingEndpointBuilder()
          ..url = "https://affinidi.com/webhook";
        final webhook = CisConfigurationWebhookSettingBuilder()
          ..enabled = true
          ..endpoint = webhookEndpoint;

        final configInputBuilder = CreateIssuanceConfigInputBuilder()
          ..issuerWalletId = walletId
          ..name = name
          ..description = description
          ..format = format
          ..credentialOfferDuration = credentialOfferDuration
          ..credentialSupported = ListBuilder(credentialSupported)
          ..webhook = webhook;

        // NOTE: You can have 1 issuance config per project
        final response = (await configurationApi.createIssuanceConfig(
            createIssuanceConfigInput: configInputBuilder.build()));

        expect(response.statusCode, 201);
        expect(response.data!.id, isNotEmpty);
        configurationId = response.data?.id ?? '';
      });

      test('Updates issuance configuration', () async {
        final String updatedDescription = 'UpdatedDescription';

        final updateIssuanceConfigInput = UpdateIssuanceConfigInputBuilder()
          ..description = updatedDescription;

        final config = (await configurationApi.updateIssuanceConfigById(
                configurationId: configurationId,
                updateIssuanceConfigInput: updateIssuanceConfigInput.build()))
            .data;

        expect(config, isNotNull);
        expect(config?.description, equals(updatedDescription));
      });

      test('Lists issuance configurations', () async {
        // When
        final response = await configurationApi.getIssuanceConfigList();

        // Then
        expect(response.data, isNotNull,
            reason: 'Response data should not be null');

        final configs = response.data?.configurations;
        expect(configs, isNotNull,
            reason: 'Configurations list should not be null');
        expect(configs!, isNotEmpty,
            reason: 'Configurations list should not be empty');

        // Store configuration ID
        configurationId = configs.first.id;
        expect(configurationId, isNotEmpty,
            reason: 'First configuration ID should not be empty');
      });

      test('Reads issuance configuration', () async {
        final config = (await configurationApi.getIssuanceConfigById(
                configurationId: configurationId))
            .data;

        expect(config, isNotNull);
        expect(config?.issuerWalletId, equals(walletId));
      });
    });
    group("Batch issuance", () {
      late String preAuthCode;
      late String? txCode;
      late String issuanceId;

      test('Start issuance', () async {
        // Update the credentialData MapBuilder to properly create JsonObject values
        final credentialData = MapBuilder<String, built_value.JsonObject?>({
          "studentID": built_value.JsonObject("1234"),
          "degreeName": built_value.JsonObject("FakeDegree"),
          "degreeType": built_value.JsonObject("SpecialDegree"),
          "awardedDate": built_value.JsonObject("2024-04-14T20:48:31.148Z"),
          "name": built_value.JsonObject("Mohamed 2"),
          "dateOfBirth": built_value.JsonObject("2024-04-14T20:48:31.148Z"),
        });
        final b1 = StartIssuanceInputDataInnerBuilder()
          ..credentialTypeId = "UniversityDegree2024"
          ..credentialData = credentialData;

        final startIssuanceInput = StartIssuanceInputBuilder()
          ..holderDid =
              "did:key:zQ3shNxQh9GT56poRxCvihKZJ4Qfs6Xc8aAAas6PF5nZSBdz7"
          ..claimMode = StartIssuanceInputClaimModeEnum.NORMAL
          ..data = ListBuilder([
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
            b1.build(),
          ]);

        final issuanceResponse = (await issuanceApi.startIssuance(
                projectId: env.projectId,
                startIssuanceInput: startIssuanceInput.build()))
            .data;

        expect(issuanceResponse, isNotNull);
        expect(issuanceResponse?.issuanceId, isNotEmpty);
        issuanceId = issuanceResponse!.issuanceId;
        txCode = issuanceResponse.txCode;
      });

      test('Get Offer', () async {
        final offerResponse = (await offerApi.getCredentialOffer(
                projectId: env.projectId, issuanceId: issuanceId))
            .data;

        expect(offerResponse, isNotNull);
        expect(offerResponse?.credentialIssuer, isNotEmpty);
        expect(offerResponse?.grants, isNotNull);
        expect(
            offerResponse?.grants
                .urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode,
            isNotNull);
        expect(
            offerResponse
                ?.grants
                .urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode
                .preAuthorizedCode,
            isNotEmpty);
        preAuthCode = offerResponse
                ?.grants
                .urnColonIetfColonParamsColonOauthColonGrantTypeColonPreAuthorizedCode
                .preAuthorizedCode ??
            '';
      });

      test("Claim batch credential", () async {
        final issuerMetadata = (await wellKnownApi
                .getWellKnownOpenIdCredentialIssuer(projectId: env.projectId))
            .data;
        expect(issuerMetadata, isNotNull);

        final tokenEndpoint = issuerMetadata?.tokenEndpoint;
        expect(tokenEndpoint, isNotNull);

        final tokenDetails =
            await consumerAuthProvider.exchangePreAuthCodeForToken(
                tokenEndpoint: issuerMetadata?.tokenEndpoint ?? '',
                preAuthCode: preAuthCode,
                txCode: txCode ?? '');

        expect(tokenDetails.accessToken, isNotNull);
        expect(tokenDetails.authorizationDetails, isNotNull);
        List<dynamic> authorizationDetails = tokenDetails.authorizationDetails!;
        final credentialRequests = [];
        for (var detail in authorizationDetails) {
          for (var credentialIdentifier in detail['credential_identifiers']) {
            final proof = CredentialProofBuilder()
              ..jwt = await consumerAuthProvider.fetchCisToken()
              ..proofType = CredentialProofProofTypeEnum.jwt;
            credentialRequests
                .add(BatchCredentialInputCredentialRequestsInner((b) => b
                  ..credentialIdentifier = credentialIdentifier
                  ..proof = proof));
          }
        }

        final batchCredentialInput = BatchCredentialInputBuilder()
          ..credentialRequests = ListBuilder(credentialRequests);

        final headers = {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${tokenDetails.accessToken}",
        };

        final client = AffinidiTdkCredentialIssuanceClient(
            dio: Dio(BaseOptions(
          baseUrl: AffinidiTdkCredentialIssuanceClient.basePath,
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 20),
        )));

        final credentialsApi = client.getCredentialsApi();
        final data = (await credentialsApi.batchCredential(
                projectId: env.projectId,
                batchCredentialInput: batchCredentialInput.build(),
                headers: headers))
            .data;
        expect(data, isNotNull);
        expect(data?.credentialResponses, isNotNull);
        expect(data?.credentialResponses.length, equals(10));
        expect(data?.credentialResponses.first, isNotNull);
        expect(data?.credentialResponses.first.credential, isNotNull);
      });

      test('Get issued credentials for specific flow', () async {
        final data = (await credentialsApi.getIssuanceIdClaimedCredential(
                configurationId: configurationId,
                projectId: env.projectId,
                issuanceId: issuanceId))
            .data;
        expect(data, isNotNull);
        expect(data?.credentials, isNotNull);
        expect(data?.credentials?.length, equals(10));
      });
    });
  });
}
