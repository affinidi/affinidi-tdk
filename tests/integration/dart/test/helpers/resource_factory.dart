import 'dart:math';
import 'package:built_value/json_object.dart';
import 'package:one_of/one_of.dart';
import 'package:built_collection/built_collection.dart';

import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';
import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';

import 'environment.dart';

class ResourceFactory {
  static getAuthTokenHook() {
    final env = getProjectEnvironment();
    final authProvider = AuthProvider(
      projectId: env.projectId,
      tokenId: env.tokenId,
      privateKey: env.privateKey,
      keyId: env.keyId,
      passphrase: env.passphrase,
    );

    return authProvider.fetchProjectScopedToken;
  }

  static createWallet({bool didWeb = false}) async {
    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook());
    final walletApi = apiClient.getWalletApi();

    final didKeyInputBuilder = CreateWalletInputBuilder()
      ..didMethod = CreateWalletInputDidMethodEnum.key;
    final didWebInputBuilder = CreateWalletInputBuilder()
      ..didMethod = CreateWalletInputDidMethodEnum.web
      ..didWebUrl = '${randomString()}.com';

    final builder = didWeb ? didWebInputBuilder : didKeyInputBuilder;

    final createdWallet =
        (await walletApi.createWallet(createWalletInput: builder.build())).data;

    return createdWallet!.wallet;
  }

  static deleteWallet(String walletId) async {
    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook());
    final walletApi = apiClient.getWalletApi();

    await walletApi.deleteWallet(walletId: walletId);
  }

  static String randomString({int length = 8}) {
    const letters = 'abcdefghijklmnopqrstuvwxyz';
    final rand = Random();
    return List.generate(length, (_) => letters[rand.nextInt(letters.length)])
        .join();
  }

  static Future<bool> isCredentialValid(credential) async {
    final apiClient = AffinidiTdkCredentialVerificationClient(
        authTokenHook: ResourceFactory.getAuthTokenHook());
    final verificationApi = apiClient.getDefaultApi();

    final verifyCredentialInputBuilder = VerifyCredentialInputBuilder()
      ..verifiableCredentials = ListBuilder<JsonObject>(
        [
          MapJsonObject(credential),
        ],
      );

    final verificationResponse = (await verificationApi.verifyCredentials(
            verifyCredentialInput: verifyCredentialInputBuilder.build()))
        .data;

    return verificationResponse!.isValid;
  }

  static String? extractRevocationStatusId(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null || uri.path.isEmpty) return null;

    final segments = uri.pathSegments;
    return segments.isNotEmpty ? segments.last : null;
  }

  static checkWalletLimitExceeded() async {
    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook());
    final walletApi = apiClient.getWalletApi();

    final result = (await walletApi.listWallets()).data;
    final walletsCount = result!.wallets!.length;

    if (walletsCount == 10) {
      throw Exception(
          '❗️Max wallets limit exceeded (10). Delete unused wallets and try again.');
    }
  }
}
