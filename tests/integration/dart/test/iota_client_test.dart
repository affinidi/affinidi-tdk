import 'dart:convert';

import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'helpers/helpers.dart';

void main() {
  group('Iota Client Integration Tests', () {
    late IotaApi iotaApi;
    late CallbackApi callbackApi;
    late ConfigurationsApi configurationsApi;
    late PexQueryApi pexQueryApi;

    late String configurationId;
    late String queryId;
    late String redirectUri;
    late String walletId;
    late String walletAri;

    setUpAll(() async {
      final wallet = await ResourceFactory.createWallet();
      walletId = wallet.id;
      walletAri = wallet.ari;

      final apiClient = AffinidiTdkIotaClient(
          authTokenHook: ResourceFactory.getAuthTokenHook());

      iotaApi = apiClient.getIotaApi();
      callbackApi = AffinidiTdkIotaClient().getCallbackApi();
      configurationsApi = apiClient.getConfigurationsApi();
      pexQueryApi = apiClient.getPexQueryApi();
    });

    tearDownAll(() async {
      await ResourceFactory.deleteWallet(walletId);
    });

    group('Iota Configurations', () {
      test('Creates Iota configuration', () async {
        final clientMetadata = IotaConfigurationDtoClientMetadataBuilder()
          ..name = 'TestName'
          ..logo = 'https://example.com/logo.png'
          ..origin = 'https://example.com'
          ..build();

        final fixture = getFixtures().iotaConfiguration;
        redirectUri = fixture['redirectUris'][0];

        final createIotaConfigurationInput =
            CreateIotaConfigurationInputBuilder()
              ..name = fixture['name']
              ..walletAri = walletAri
              ..redirectUris = ListBuilder<String>(
                  List<String>.from(fixture['redirectUris']))
              ..enableVerification = fixture['enableVerification'] ?? false
              ..enableConsentAuditLog =
                  fixture['enableConsentAuditLog'] ?? false
              ..clientMetadata = clientMetadata
              ..description = fixture['description']
              ..mode =
                  CreateIotaConfigurationInputModeEnum.valueOf(fixture['mode'])
              ..enableIdvProviders = fixture['enableIdvProviders'] ?? false;

        final configuration = (await configurationsApi.createIotaConfiguration(
                createIotaConfigurationInput:
                    createIotaConfigurationInput.build()))
            .data;

        expect(configuration, isNotNull);
        expect(configuration!.walletAri, walletAri);
        expect(configuration.mode, IotaConfigurationDtoModeEnum.redirect);

        configurationId = configuration.configurationId;
      });

      test('Reads Iota configurations', () async {
        final result = (await configurationsApi.listIotaConfigurations()).data;

        expect(result!.configurations, isNotNull);
        expect(result.configurations.length, greaterThan(0));
      });

      test('Updates Iota configuration', () async {
        String updatedName = 'UpdatedName';

        final updateConfigurationByIdInput =
            UpdateConfigurationByIdInputBuilder()..name = updatedName;

        final configuration =
            (await configurationsApi.updateIotaConfigurationById(
                    configurationId: configurationId,
                    updateConfigurationByIdInput:
                        updateConfigurationByIdInput.build()))
                .data;

        expect(configuration, isNotNull);
        expect(configuration!.name, updatedName);
      });

      group('PEX queries', () {
        test('Creates PEX query', () async {
          final createPexQueryInput = CreatePexQueryInputBuilder()
            ..name = 'TestQuery'
            ..vpDefinition =
                jsonEncode(getFixtures().iotaPresentationDefinition)
            ..description = '';

          final query = (await pexQueryApi.createPexQuery(
                  configurationId: configurationId,
                  createPexQueryInput: createPexQueryInput.build()))
              .data;

          expect(query, isNotNull);
          expect(query!.ari, isNotNull);

          queryId = query.queryId;
        });

        test('Reads PEX queries', () async {
          final result = (await pexQueryApi.listPexQueries(
                  configurationId: configurationId))
              .data;

          expect(result!.pexQueries, isNotNull);
          expect(result.pexQueries.length, greaterThan(0));
        });

        test('Updates PEX query', () async {
          String updatedDescription = 'UpdatedDescription';

          final updatePexQueryInput = UpdatePexQueryInputBuilder()
            ..description = updatedDescription;

          final query = (await pexQueryApi.updatePexQueryById(
                  configurationId: configurationId,
                  queryId: queryId,
                  updatePexQueryInput: updatePexQueryInput.build()))
              .data;

          expect(query, isNotNull);
          expect(query!.description, updatedDescription);
        });

        test('Reads PEX query', () async {
          final result = await pexQueryApi.getPexQueryById(
              configurationId: configurationId, queryId: queryId);
          expect(result, isNotNull);
        });
      });

      test('Reads Iota configuration', () async {
        final result = await configurationsApi.getIotaConfigurationById(
            configurationId: configurationId);
        expect(result, isNotNull);
      });
    });

    test('Iota redirect flow', () async {
      final uuid = Uuid();
      final correlationId = uuid.v4();
      final presentationSubmission = getFixtures()
          .iotaPresentationSubmission; // envIota.presentationSubmission;
      final vpToken = getFixtures().verifiablePresentation;

      final initiateDataSharingRequestInputBuilder =
          InitiateDataSharingRequestInputBuilder()
            ..mode = InitiateDataSharingRequestInputModeEnum.redirect
            ..configurationId = configurationId
            ..queryId = queryId
            ..nonce = correlationId.substring(0, 10)
            ..redirectUri = redirectUri
            ..correlationId = correlationId;

      final iotaDataSharingResponse = (await iotaApi.initiateDataSharingRequest(
              initiateDataSharingRequestInput:
                  initiateDataSharingRequestInputBuilder.build()))
          .data;

      final transactionId = iotaDataSharingResponse?.data?.transactionId;
      final jwt = iotaDataSharingResponse?.data?.jwt;

      expect(iotaDataSharingResponse, isNotNull);
      expect(jwt, isNotNull);

      if (jwt == null) {
        return;
      }

      final Map<String, dynamic> decodedToken = Jwt.parseJwt(jwt);
      final state = decodedToken['state'];

      final callbackInputBuilder = CallbackInputBuilder()
        ..state = state
        ..presentationSubmission = jsonEncode(presentationSubmission)
        ..vpToken = jsonEncode(vpToken);

      final callbackResponse = (await callbackApi.iotOIDC4VPCallback(
              callbackInput: callbackInputBuilder.build()))
          .data;

      final responseCode = callbackResponse?.responseCode;

      expect(responseCode, isNotNull);

      final fetchIOTAVPResponseInputBuilder = FetchIOTAVPResponseInputBuilder()
        ..configurationId = configurationId
        ..correlationId = correlationId
        ..transactionId = transactionId
        ..responseCode = responseCode;

      final iotaVpResponse = (await iotaApi.fetchIotaVpResponse(
              fetchIOTAVPResponseInput:
                  fetchIOTAVPResponseInputBuilder.build()))
          .data;

      expect(iotaVpResponse, isNotNull);

      // NOTE: testing email VC
      final vp = iotaVpResponse?.vpToken;
      if (vp == null) {
        return;
      }

      final vpDecoded = jsonDecode(vp);
      final email =
          vpDecoded['verifiableCredential'][0]?['credentialSubject']['email'];

      expect(email, isNotNull);
    });
  });
}
