import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';

import 'environment.dart';

void main() {
  group('Login Configuration Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late GroupApi groupApi;
    late String configurationId;
    late String groupId;

    setUp(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final issuanceClient = AffinidiTdkLoginConfigurationClient(
        dio: Dio(BaseOptions(
          baseUrl: AffinidiTdkLoginConfigurationClient.basePath,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
        )),
        authTokenHook: authProvider.fetchProjectScopedToken);

      groupApi = issuanceClient.getGroupApi();
      configurationApi = issuanceClient.getConfigurationApi();
    });

    test('Creates login configuration', () async {
      final name = 'TestConfig';
      final redirectUri = 'http://localhost:3000/api/auth/callback/affinidi';

      final createLoginConfigurationInput = CreateLoginConfigurationInputBuilder()
        ..name = name
        ..redirectUris = ListBuilder<String>([redirectUri]);

      final response = (await configurationApi.createLoginConfigurations(
            createLoginConfigurationInput: createLoginConfigurationInput.build()));

      expect(response.statusCode, 201);
      expect(response.data!.configurationId, isNotEmpty);

      configurationId = response?.data?.configurationId ?? '';
    });

    test('Reads login configurations', () async {
      final configurations = (await configurationApi.listLoginConfigurations()).data?.configurations;
      expect(configurations, isNotNull);

      expect(configurations?.length, greaterThan(0));
    }, skip: 'LoginConfigurationObject to be fixed -> null for non-nullable field `clientId`');

    test('Updates login configuration', () async {
      final String updatedName = 'UpdatedName';

      final updateLoginConfigurationInput = UpdateLoginConfigurationInputBuilder()
        ..name = updatedName;

      final config = (await configurationApi.updateLoginConfigurationsById(
        configurationId: configurationId,
        updateLoginConfigurationInput: updateLoginConfigurationInput.build())).data;

      expect(config, isNotNull);
      expect(config?.name, equals(updatedName));
    }, skip: 'LoginConfigurationObject to be fixed -> null for non-nullable field `clientId`');

    // NOTE: Deserializing 'LoginConfigurationObject' failed due to: Tried to construct class "LoginConfigurationObject" with null for non-nullable field "clientId"
    test('Reads login configuration', () async {
      final config = (await configurationApi.getLoginConfigurationsById(configurationId: configurationId)).data;

      expect(config, isNotNull);
    }, skip: 'LoginConfigurationObject to be fixed -> null for non-nullable field `clientId`');

    test('Deletes login configuration', () async {
      if (configurationId.isNotEmpty) {
        await configurationApi.deleteLoginConfigurationsById(configurationId: configurationId);

        expectLater(
          configurationApi.getLoginConfigurationsById(configurationId: configurationId),
          throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status code', 404)),
        );
      }
    });

    test('Creates user group', () async {
      groupId = 'test_group_name';

      final createGroupInput = CreateGroupInputBuilder()
        ..groupName = groupId
        ..name = 'test';

      final response = (await groupApi.createGroup(
            createGroupInput: createGroupInput.build()));

      expect(response.statusCode, 201);
      expect(response.data!.ari, isNotEmpty);
    });

    test('Reads user groups', () async {
      final groups = (await groupApi.listGroups()).data?.groups;

      expect(groups, isNotNull);
      expect(groups?.length, greaterThan(0));
    });

    test('Reads user group', () async {
      final group = (await groupApi.getGroupById(groupName: groupId)).data;

      expect(group, isNotNull);
    });

    test('Deletes user group', () async {
      if (groupId.isNotEmpty) {
        await groupApi.deleteGroup(groupName: groupId);

        expectLater(
          groupApi.getGroupById(groupName: groupId),
          throwsA(isA<DioException>().having((e) => e.response?.statusCode, 'status code', 404)),
        );
      }
    });
  });
}
