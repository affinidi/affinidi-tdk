import 'package:dio/dio.dart';
import 'package:one_of/one_of.dart';
import 'package:built_value/json_object.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';

import 'environment.dart';

void main() {
  group('Wallets Client  Integration Tests', () {
    late WalletApi walletApi;
    late String walletId;
    late String walletIdDidWeb;
    late String holderDid;

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
        baseUrl: AffinidiTdkWalletsClient.basePath,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ));
      final apiClient = AffinidiTdkWalletsClient(
          dio: dio, authTokenHook: authProvider.fetchProjectScopedToken);
      walletApi = apiClient.getWalletApi();

      holderDid = env?.did ?? '';
    });

    test('Create wallet: DID Key', () async {
      final name = 'Test Wallet';
      final description = 'Test wallet description';

      final didKeyInputBuilder = DidKeyInputParamsBuilder()
        ..name = name
        ..description = description;
      final walletInputBuilder = CreateWalletInputBuilder()
        ..oneOf = OneOf2<DidKeyInputParams, DidWebInputParams>(
            value: didKeyInputBuilder.build(), typeIndex: 0);
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

      walletId = createdWallet.wallet?.id ?? '';
    });

    test('Create wallet: DID Web', () async {
      final name = 'Test DID Web Wallet';
      final description = 'Test wallet description';
      final didWebUrl = 'didweb.com';

      final didWebInputBuilder = DidWebInputParamsBuilder()
        ..name = name
        ..description = description
        ..didMethod = DidWebInputParamsDidMethodEnum.web
        ..didWebUrl = didWebUrl;
      final walletInputBuilder = CreateWalletInputBuilder()
        ..oneOf = OneOf2<DidKeyInputParams, DidWebInputParams>(
            value: didWebInputBuilder.build(), typeIndex: 1);

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
      final jsonLdContextUrl = "https://schema.affinidi.io/TPassportV1R0.jsonld";
      final jsonSchemaUrl = "https://schema.affinidi.io/TPassportV1R0.json";
      final typeName = "VerifiableCredential";
      final expiresAt = "10";

      final params = SignCredentialInputDtoUnsignedCredentialParamsBuilder()
        ..jsonLdContextUrl = jsonLdContextUrl
        ..jsonSchemaUrl = jsonSchemaUrl
        ..typeName = typeName
        ..holderDid = holderDid
        ..expiresAt = expiresAt;

      final revocable =  true;
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
      final header = {
        "alg": "HS256",
        "typ": "JWT"
      };

      final payload = {
        "sub": "dc9c399b-eb50-4761-a91c-deee13a47054",
        "iat": DateTime.now().millisecondsSinceEpoch ~/ 1000,
        "exp": (DateTime.now().add(Duration(hours: 1))).millisecondsSinceEpoch ~/ 1000
      };

      final jsonHeader = JsonObject(header);
      final jsonPayload = JsonObject(payload);

      final signTokenBuilder = SignJwtTokenBuilder()
        ..header = jsonHeader
        ..payload = jsonPayload;


      final result = (await walletApi.signJwtToken(
        walletId: walletId,
        signJwtToken: signTokenBuilder.build()))
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
      expect(result!.wallets![0]!.did, isNotEmpty);
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
      expect(wallet!.description, equals(updatedDescription));
    });

    test('Delete wallet', () async {
      if (walletId.isNotEmpty) {
        await walletApi.deleteWallet(walletId: walletId);

        expectLater(
          walletApi.getWallet(walletId: walletId),
          throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status code', 404)),
        );
      }

      if (walletIdDidWeb.isNotEmpty) {
        await walletApi.deleteWallet(walletId: walletIdDidWeb);

        expectLater(
          walletApi.getWallet(walletId: walletIdDidWeb),
          throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status code', 404)),
        );
      }
    });
  });
}
