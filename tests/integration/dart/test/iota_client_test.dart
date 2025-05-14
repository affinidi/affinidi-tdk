import 'dart:convert';

import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'environment.dart';

void main() {
  group('Iota Client Integration Tests', () {
    late IotaApi iotaApi;
    late CallbackApi callbackApi;
    late ConfigurationsApi configurationsApi;
    late PexQueryApi pexQueryApi;

    late String configurationId;
    late String queryId;

    final envIota = getIotaEnvironment();

    setUp(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final dio = Dio(BaseOptions(
        baseUrl: AffinidiTdkIotaClient.basePath,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ));

      final apiClient = AffinidiTdkIotaClient(
          dio: dio, authTokenHook: authProvider.fetchProjectScopedToken);

      iotaApi = apiClient.getIotaApi();
      callbackApi = AffinidiTdkIotaClient().getCallbackApi();
      configurationsApi = apiClient.getConfigurationsApi();
      pexQueryApi = apiClient.getPexQueryApi();
    });

    group('Iota Configurations', () {
      test('Creates Iota configuration', () async {
        String walletAri = envIota.walletAri;
        String redirectUri = envIota.redirectUri;

        final clientMetadata = IotaConfigurationDtoClientMetadataBuilder()
          ..name = 'TestName'
          ..logo = 'https://example.com/logo.png'
          ..origin = 'https://example.com'
          ..build();

        final createIotaConfigurationInput =
            CreateIotaConfigurationInputBuilder()
              ..name = 'TestIotaConfiguration'
              ..walletAri = walletAri
              ..redirectUris = ListBuilder<String>([redirectUri])
              ..enableVerification = false
              ..enableConsentAuditLog = false
              ..clientMetadata = clientMetadata
              ..description = 'description'
              ..mode = CreateIotaConfigurationInputModeEnum.redirect
              ..enableIdvProviders = false;

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
            ..vpDefinition = envIota.vpDefinition
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

        test('Deletes PEX query', () async {
          final response = (await pexQueryApi.deletePexQueryById(
            configurationId: configurationId,
            queryId: queryId,
          ));

          expect(response.statusCode, 204);
        });

        test('Reads PEX query', () async {
          await expectLater(
            pexQueryApi.getPexQueryById(
                configurationId: configurationId, queryId: queryId),
            throwsA(isA<DioException>()
                .having((e) => e.response?.statusCode, 'status code', 404)),
          );
        });
      });

      test('Deletes Iota configuration', () async {
        final response = (await configurationsApi.deleteIotaConfigurationById(
            configurationId: configurationId));

        expect(response.statusCode, 204);
      });

      test('Reads Iota configuration', () async {
        await expectLater(
          configurationsApi.getIotaConfigurationById(
              configurationId: configurationId),
          throwsA(isA<DioException>()
              .having((e) => e.response?.statusCode, 'status code', 404)),
        );
      });
    });

    test('Iota redirect flow', () async {
      final queryId = envIota.queryId;
      final uuid = Uuid();
      final correlationId = uuid.v4();
      final configurationId = envIota.configurationId;
      final presentationSubmission = envIota.presentationSubmission;
      final vpToken = envIota.vpToken;

      final initiateDataSharingRequestInputBuilder =
          InitiateDataSharingRequestInputBuilder()
            ..mode = InitiateDataSharingRequestInputModeEnum.redirect
            ..configurationId = envIota.configurationId
            ..queryId = queryId
            ..nonce = correlationId.substring(0, 10)
            ..redirectUri = envIota.redirectUri
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
        ..presentationSubmission = presentationSubmission
        ..vpToken = vpToken;

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
