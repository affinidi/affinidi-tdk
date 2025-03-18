import 'package:dio/dio.dart';
import 'package:one_of/one_of.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';

import 'environment.dart';

void main() {
  group('Credential Issuance Client Integration Tests', () {
    late WalletApi walletApi;

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
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
      ));
      final apiClient = AffinidiTdkWalletsClient(
          dio: dio, authTokenHook: authProvider.fetchProjectScopedToken);
      walletApi = apiClient.getWalletApi();
    });

    test('Create wallet', () async {
      final name = 'Test Wallet';
      final description = 'Test wallet description';
      // Create wallet
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

      // delete newly created ^^ test wallet
      final walletId = createdWallet.wallet?.id ?? '';

      if (walletId.isNotEmpty) {
        await walletApi.deleteWallet(walletId: walletId);

        expectLater(
          walletApi.getWallet(walletId: walletId),
          throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status code', 404)),
        );
      }
    });
  });
}
