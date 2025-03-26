import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';

import 'environment.dart';

void main() {
  group('Iam Client Integration Tests', () {
    late String tokenId;
    late PoliciesApi policiesApi;

    setUp(() async {
      final env = getProjectEnvironment();
      tokenId = env.tokenId;

      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final iamClient = AffinidiTdkIamClient(
        dio: Dio(BaseOptions(
          baseUrl: AffinidiTdkIamClient.basePath,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        )),
        authTokenHook: authProvider.fetchProjectScopedToken);

      policiesApi = iamClient.getPoliciesApi();
    });

    test('Reads PAT policies', () async {
      final result = (await policiesApi.getPolicies(
        principalId: tokenId,
        principalType: 'token')).data;

      expect(result?.version, isNotNull);
      expect(result?.statement, isNotNull);
    });

  });
}
