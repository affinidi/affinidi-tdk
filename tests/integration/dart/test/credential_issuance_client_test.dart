import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:built_value/json_object.dart' as built_value;
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';

import 'helpers/helpers.dart';

void main() {
  group('Credential Issuance Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late IssuanceApi issuanceApi;
    late CredentialsApi credentialsApi;
    late OfferApi offerApi;
    late WellKnownApi wellKnownApi;
    late String configurationId;
    late String walletId;
    late String configurationIssuerWalletId;
    late ConsumerAuthProvider consumerAuthProvider;
    final envVault = getVaultEnvironment();

    final env = getProjectEnvironment();

    setUpAll(() async {
      final tempWallet = await ResourceFactory.createWallet();
      walletId = tempWallet.id;

      final wallet = Bip32Wallet.fromSeed(envVault.seed);
      final keyPair = await wallet.generateKey(keyId: "m/44'/60'/0'/0/0");
      final didDoc = DidKey.generateDocument(keyPair.publicKey);
      final didSigner = DidSigner(
        did: didDoc.id,
        didKeyId: didDoc.verificationMethod.first.id,
        keyPair: keyPair,
        signatureScheme: SignatureScheme.ecdsa_secp256k1_sha256,
      );
      consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);

      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride = replaceBaseDomain(
          AffinidiTdkCredentialIssuanceClient.basePath, apiGwUrl);

      final issuanceClient = AffinidiTdkCredentialIssuanceClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);
      configurationApi = issuanceClient.getConfigurationApi();
      issuanceApi = issuanceClient.getIssuanceApi();
      offerApi = issuanceClient.getOfferApi();
      credentialsApi = issuanceClient.getCredentialsApi();
      wellKnownApi = issuanceClient.getWellKnownApi();
    });

    tearDownAll(() async {
      await ResourceFactory.deleteWallet(walletId);
    });

    group("issuance config", () {
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
        configurationIssuerWalletId = configs.first.issuerWalletId!;
        expect(configurationId, isNotEmpty,
            reason: 'First configuration ID should not be empty');
      });

      test('Updates issuance configuration', () async {
        final String updatedDescription = 'UpdatedDescription';

        final foundWallet =
            await ResourceFactory.getWalletById(configurationIssuerWalletId);

        final updateIssuanceConfigInput = UpdateIssuanceConfigInputBuilder()
          ..description = updatedDescription;

        if (foundWallet == null) {
          updateIssuanceConfigInput.issuerWalletId = walletId;
        }

        final config = (await configurationApi.updateIssuanceConfigById(
                configurationId: configurationId,
                updateIssuanceConfigInput: updateIssuanceConfigInput.build()))
            .data;

        expect(config, isNotNull);
        expect(config?.description, equals(updatedDescription));
      });

      test('Reads issuance configuration', () async {
        final config = (await configurationApi.getIssuanceConfigById(
                configurationId: configurationId))
            .data;

        expect(config, isNotNull);
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

        final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
        String basePathOverride = replaceBaseDomain(
            AffinidiTdkCredentialIssuanceClient.basePath, apiGwUrl);

        final client = AffinidiTdkCredentialIssuanceClient(
            basePathOverride: basePathOverride);
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
      }, skip: 'TODO: unskip when fixed on the backend');
    });
  });
}
