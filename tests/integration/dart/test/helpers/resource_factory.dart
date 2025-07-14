import 'dart:math';
import 'package:built_value/json_object.dart';
import 'package:built_collection/built_collection.dart';

import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';
import 'package:affinidi_tdk_credential_verification_client/affinidi_tdk_credential_verification_client.dart';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';

import 'helpers.dart';
import 'environment.dart';

class ResourceFactory {
  // NOTE: Max number of wallets for project is 10. Making clean up,
  //       if wallet number exceeds threshold, to prevent 422 error
  static final WALLETS_LIMIT_THRESHOLD = 7;

  static final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;

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
    await checkWalletLimitExceeded();

    String basePathOverride =
        replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook(),
        basePathOverride: basePathOverride);
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

  static getWalletById(String walletId) async {
    String basePathOverride =
        replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook(),
        basePathOverride: basePathOverride);
    final walletApi = apiClient.getWalletApi();

    try {
      final wallet = (await walletApi.getWallet(walletId: walletId)).data;
      return wallet;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      } else {
        rethrow;
      }
    }
  }

  static deleteWallet(String walletId) async {
    String basePathOverride =
        replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook(),
        basePathOverride: basePathOverride);
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
    String basePathOverride = replaceBaseDomain(
        AffinidiTdkCredentialVerificationClient.basePath, apiGwUrl);

    final apiClient = AffinidiTdkCredentialVerificationClient(
        authTokenHook: ResourceFactory.getAuthTokenHook(),
        basePathOverride: basePathOverride);
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
    String basePathOverride =
        replaceBaseDomain(AffinidiTdkWalletsClient.basePath, apiGwUrl);

    final apiClient = AffinidiTdkWalletsClient(
        authTokenHook: ResourceFactory.getAuthTokenHook(),
        basePathOverride: basePathOverride);
    final walletApi = apiClient.getWalletApi();

    final result = (await walletApi.listWallets()).data;
    final walletsCount = result!.wallets!.length;

    if (walletsCount > WALLETS_LIMIT_THRESHOLD) {
      print('❗️Number of wallets reaching the limit (10). Deleting wallets.');

      for (final wallet in result.wallets!) {
        deleteWallet(wallet.id as String);
      }
    }
  }
}
