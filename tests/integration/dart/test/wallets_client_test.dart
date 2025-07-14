import 'package:built_value/json_object.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import 'helpers/helpers.dart';
import 'helpers/resource_factory.dart';

void main() {
  group('Wallets Client Integration Tests', () {
    late WalletApi walletApi;
    late String walletId;
    late String walletIdDidWeb;
    late String holderDid;

    setUpAll(() async {
      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride =
          replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

      final apiClient = AffinidiTdkWalletsClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);

      walletApi = apiClient.getWalletApi();

      final wallet = await ResourceFactory.createWallet();
      walletId = wallet.id;
      holderDid = wallet.did;
    });

    tearDownAll(() async {
      await ResourceFactory.deleteWallet(walletId);
      await ResourceFactory.deleteWallet(walletIdDidWeb);
    });

    test('Create wallet: DID Web', () async {
      final name = 'Test DID Web Wallet';
      final description = 'Test wallet description';

      String randomStr = generateRandomString(10);
      String didWebUrl = '$randomStr.com';

      final walletInputBuilder = CreateWalletInputBuilder()
        ..name = name
        ..description = description
        ..didMethod = CreateWalletInputDidMethodEnum.web
        ..didWebUrl = didWebUrl;

      final createdWallet = (await walletApi.createWallet(
              createWalletInput: walletInputBuilder.build()))
          .data;

      expect(createdWallet, isNotNull);
      expect(createdWallet!.wallet, isNotNull);
      expect(createdWallet.wallet!.id, isNotEmpty);
      expect(createdWallet.wallet!.did, isNotEmpty);
      expect(createdWallet.wallet!.name, equals(name));
      expect(createdWallet.wallet!.description, equals(description));
      expect(createdWallet.wallet!.ari, isNotEmpty);
      expect(createdWallet.wallet!.keys, isNotNull);
      expect(createdWallet.wallet!.keys!.length, greaterThan(0));
      expect(createdWallet.wallet!.keys!.first.id, isNotEmpty);
      expect(createdWallet.wallet!.keys!.first.ari, isNotEmpty);

      walletIdDidWeb = createdWallet.wallet?.id ?? '';
    });

    test('Sign Credential', () async {
      final jsonLdContextUrl =
          'https://schema.affinidi.io/TPassportV1R0.jsonld';
      final jsonSchemaUrl = 'https://schema.affinidi.io/TPassportV1R0.json';
      final typeName = 'VerifiableCredential';
      final expiresAt = '10';

      final params = SignCredentialInputDtoUnsignedCredentialParamsBuilder()
        ..jsonLdContextUrl = jsonLdContextUrl
        ..jsonSchemaUrl = jsonSchemaUrl
        ..typeName = typeName
        ..holderDid = holderDid
        ..expiresAt = expiresAt;

      final revocable = true;
      final credentialFormat = SignCredentialInputDtoCredentialFormatEnum.ldpVc;
      final unsignedCredentialParams = params;

      final signCredentialBuilder = SignCredentialInputDtoBuilder()
        ..revocable = revocable
        ..credentialFormat = credentialFormat
        ..unsignedCredentialParams = unsignedCredentialParams;

      final signedVC = (await walletApi.signCredential(
              walletId: walletId,
              signCredentialInputDto: signCredentialBuilder.build()))
          .data;

      expect(signedVC?.signedCredential, isNotNull);
    });

    test('Sign JWT', () async {
      final header = {'alg': 'HS256', 'typ': 'JWT'};

      final payload = {
        'sub': 'dc9c399b-eb50-4761-a91c-deee13a47054',
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'exp':
            (DateTime.now().add(Duration(hours: 1))).millisecondsSinceEpoch ~/
                1000
      };

      final jsonHeader = JsonObject(header);
      final jsonPayload = JsonObject(payload);

      final signTokenBuilder = SignJwtTokenBuilder()
        ..header = jsonHeader
        ..payload = jsonPayload;

      final result = (await walletApi.signJwtToken(
              walletId: walletId, signJwtToken: signTokenBuilder.build()))
          .data;

      expect(result?.signedJwt, isNotNull);
    });

    test('Get wallet', () async {
      final wallet = (await walletApi.getWallet(walletId: walletId)).data;

      expect(wallet, isNotNull);
      expect(wallet!.did, isNotEmpty);
    });

    test('List wallets', () async {
      final result = (await walletApi.listWallets()).data;

      expect(result!.wallets!.length, greaterThan(0));
      expect(result.wallets![0].did, isNotEmpty);
    });

    test('Update wallet', () async {
      final updatedName = 'Updated Wallet';
      final updatedDescription = 'Updated description';

      final walletInputBuilder = UpdateWalletInputBuilder()
        ..name = updatedName
        ..description = updatedDescription;

      final wallet = (await walletApi.updateWallet(
              walletId: walletId,
              updateWalletInput: walletInputBuilder.build()))
          .data;

      expect(wallet, isNotNull);
      expect(wallet!.name, equals(updatedName));
      expect(wallet.description, equals(updatedDescription));
    });
  });
}
