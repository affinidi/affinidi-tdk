import 'package:uuid/uuid.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';

import 'helpers/helpers.dart';

// NOTE: Project and Token APIs are not tested since UserTokenAuth is required
void main() {
  group('Iam Client Integration Tests', () {
    late String tokenId;
    late PoliciesApi policiesApi;
    late ProjectsApi projectsApi;

    setUpAll(() async {
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
          authTokenHook: authProvider.fetchProjectScopedToken);

      policiesApi = iamClient.getPoliciesApi();
      projectsApi = iamClient.getProjectsApi();
    });

    group('Principals management', () {
      final uuid = Uuid();
      final String testPrincipalId = uuid.v4();
      final String principalType = 'token';

      test('Adds principal to project', () async {
        final addUserToProjectInputBuilder = AddUserToProjectInputBuilder()
          ..principalId = testPrincipalId
          ..principalType = principalType;

        final statusCode = (await projectsApi.addPrincipalToProject(
                addUserToProjectInput: addUserToProjectInputBuilder.build()))
            .statusCode;

        expect(statusCode, 204);
      });

      test('List principals for project', () async {
        final records =
            (await projectsApi.listPrincipalsOfProject()).data?.records;

        expect(records, isNotNull);
        expect(records!.length, greaterThan(0));
      });

      test('Remove principal from project', () async {
        final statusCode = (await projectsApi.deletePrincipalFromProject(
                principalId: testPrincipalId, principalType: principalType))
            .statusCode;

        expect(statusCode, 204);
      });
    });

    test('Reads PAT policies', () async {
      final result = (await policiesApi.getPolicies(
              principalId: tokenId, principalType: 'token'))
          .data;

      expect(result?.version, isNotNull);
      expect(result?.statement, isNotNull);
    });
  });
}
