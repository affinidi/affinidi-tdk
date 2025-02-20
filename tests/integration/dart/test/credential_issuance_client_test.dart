import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:one_of/one_of.dart';
import 'package:built_collection/built_collection.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';

import 'environment.dart';

void main() {
  group('Credential Issuance Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late WalletApi walletApi;
    late String walletId;

    setUp(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      // issuance client
      final issuanceClient = AffinidiTdkCredentialIssuanceClient(
          dio: Dio(BaseOptions(
            baseUrl: AffinidiTdkCredentialIssuanceClient.basePath,
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 5),
          )),
          authTokenHook: authProvider.fetchProjectScopedToken);
      configurationApi = issuanceClient.getConfigurationApi();

      // wallet client
      final walletClient = AffinidiTdkWalletsClient(
          dio: Dio(BaseOptions(
            baseUrl: AffinidiTdkWalletsClient.basePath,
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 5),
          )),
          authTokenHook: authProvider.fetchProjectScopedToken);
      walletApi = walletClient.getWalletApi();

      // Create wallet
      final didKeyInputBuilder = DidKeyInputParamsBuilder()
        ..name = 'Test Wallet';
      final walletInputBuilder = CreateWalletInputBuilder()
        ..oneOf = OneOf2<DidKeyInputParams, DidWebInputParams>(
            value: didKeyInputBuilder.build(), typeIndex: 0);
      final createdWallet = (await walletApi.createWallet(
              createWalletInput: walletInputBuilder.build()))
          .data;
      walletId = createdWallet!.wallet!.id!;
    });

    tearDown(() async {
      final configs =
          (await configurationApi.getIssuanceConfigList()).data!.configurations;
      if (configs.isNotEmpty) {
        for (var config in configs) {
          await configurationApi.deleteIssuanceConfigById(
              configurationId: config.id);
        }
      }
      if (walletId.isNotEmpty) {
        await walletApi.deleteWallet(walletId: walletId);
      }
    });

    test('CRUDL IssuanceConfig', () async {
      final name = 'TestConfig';
      final description = 'Test issuance config';
      final format = CreateIssuanceConfigInputFormatEnum.ldpVc;
      final credentialOfferDuration = 600;
      final credentialSupported = [
        CredentialSupportedObject((b) => b
          ..credentialTypeId = 'TDriversLicenseV1R1'
          ..jsonSchemaUrl =
              'https://schema.affinidi.io/TDriversLicenseV1R1.json'
          ..jsonLdContextUrl =
              'https://schema.affinidi.io/TDriversLicenseV1R1.jsonld'
          ..metadata = (SupportedCredentialMetadataBuilder()
            ..display = ListBuilder([
              SupportedCredentialMetadataDisplayInner((b) => b
                ..name = 'Test Display'
                ..logo = (SupportedCredentialMetadataItemLogoBuilder()
                  ..url = 'https://example.com/logo.png'
                  ..altText = 'Logo'))
            ])))
      ];

      // create config
      final configInputBuilder = CreateIssuanceConfigInputBuilder()
        ..issuerWalletId = walletId
        ..name = name
        ..description = description
        ..format = format
        ..credentialOfferDuration = credentialOfferDuration
        ..credentialSupported = ListBuilder(credentialSupported);
      final createdConfig = (await configurationApi.createIssuanceConfig(
              createIssuanceConfigInput: configInputBuilder.build()))
          .data;
      expect(createdConfig!.id, isNotEmpty);

      // get config
      final configDetails = (await configurationApi.getIssuanceConfigById(
              configurationId: createdConfig.id!))
          .data;
      print(configDetails);
      expect(configDetails, isNotNull);
      expect(configDetails!.id, equals(createdConfig.id));
      expect(configDetails.issuerWalletId, equals(walletId));
      expect(configDetails.name, equals(name));
      expect(configDetails.description, equals(description));
      expect(configDetails.format.toString(), equals(format.toString()));
      expect(configDetails.credentialOfferDuration,
          equals(credentialOfferDuration));
      expect(configDetails.issuerUri, isNotEmpty);
      expect(configDetails.issuerDid, isNotEmpty);
      expect(configDetails.credentialSupported, equals(credentialSupported));

      // list config
      var configs =
          (await configurationApi.getIssuanceConfigList()).data!.configurations;
      expect(configs, isNotNull);
      expect(configs.length, equals(1));
      expect(configs.first.id, equals(createdConfig.id));
      expect(configs.first.issuerWalletId, equals(walletId));
      expect(configs.first.name, equals(name));
      expect(configs.first.format.toString(), equals(format.toString()));
      expect(configs.first.credentialOfferDuration,
          equals(credentialOfferDuration));
      expect(configs.first.issuerUri, isNotEmpty);
      expect(configs.first.issuerDid, isNotEmpty);

      // delete config
      await configurationApi.deleteIssuanceConfigById(
          configurationId: createdConfig.id!);
      configs =
          (await configurationApi.getIssuanceConfigList()).data!.configurations;
      expect(configs, isNotNull);
      expect(configs.length, equals(0));
    });
  });
}
