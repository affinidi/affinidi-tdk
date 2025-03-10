import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';
import 'package:uuid/uuid.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'dart:convert';
import 'environment.dart';

void main() {
  group('Iota Client Integration Tests', () {
    late IotaApi iotaApi;
    late CallbackApi callbackApi;
    late ConfigurationsApi configurationsApi;

    setUp(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final apiClient = AffinidiTdkIotaClient(
          authTokenHook: authProvider.fetchProjectScopedToken);

      iotaApi = apiClient.getIotaApi();
      callbackApi = AffinidiTdkIotaClient().getCallbackApi();
      configurationsApi = apiClient.getConfigurationsApi();
    });

    test('List Iota configurations', () async {
      final listIotaConfigurations = (await configurationsApi.listIotaConfigurations()).data;

      print(listIotaConfigurations);
      expect(listIotaConfigurations, isNotNull);
    });

    test('Iota redirect flow', () async {
      final envIota = getIotaEnvironment();
      final queryId = envIota.queryId;
      final uuid = Uuid();
      final correlationId = uuid.v4();
      final redirectUri = envIota.redirectUri;
      final nonce = correlationId.substring(0, 10);
      final mode = InitiateDataSharingRequestInputModeEnum.redirect;
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

      if (jwt == null) { return ; }

      final Map<String, dynamic> decodedToken = Jwt.parseJwt(jwt);
      final state = decodedToken['state'];

      final callbackInputBuilder =
        CallbackInputBuilder()
          ..state = state
          ..presentationSubmission = presentationSubmission
          ..vpToken = vpToken;

      final callbackResponse = (await callbackApi.iotOIDC4VPCallback(
        callbackInput:
          callbackInputBuilder.build()))
        .data;

      final redirectUri = callbackResponse?.redirectUri;
      final responseCode = callbackResponse?.responseCode;

      expect(redirectUri, isNotNull);
      expect(responseCode, isNotNull);

      final fetchIOTAVPResponseInputBuilder =
        FetchIOTAVPResponseInputBuilder()
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
      // final vp = iotaVpResponse?.vpToken;
      // if (vp == null) { return ; }

      // final vpDecoded = jsonDecode(vp);
      // final email = vpDecoded['verifiableCredential'][0]?['credentialSubject']['email'];

      // expect(email, isNotNull);
    });
  });
}
