import 'package:uuid/uuid.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_iam_client/affinidi_tdk_iam_client.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

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

      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride =
          replaceBaseDomain(AffinidiTdkIamClient.basePath, apiGwUrl);

      final iamClient = AffinidiTdkIamClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);

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
