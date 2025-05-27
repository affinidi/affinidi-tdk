import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';

import 'helpers/helpers.dart';

void main() {
  group('Login Configuration Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late String configurationId;

    setUpAll(() async {
      final env = getProjectEnvironment();
      final authProvider = AuthProvider(
        projectId: env.projectId,
        tokenId: env.tokenId,
        privateKey: env.privateKey,
        keyId: env.keyId,
        passphrase: env.passphrase,
      );

      final loginConfigurationClient = AffinidiTdkLoginConfigurationClient(
          authTokenHook: authProvider.fetchProjectScopedToken);

      configurationApi = loginConfigurationClient.getConfigurationApi();
    });

    group('Login Configurations', () {
      test('Creates login configuration', () async {
        final name = 'TestConfig';
        final redirectUri = 'http://localhost:3000/api/auth/callback/affinidi';

        final createLoginConfigurationInput =
            CreateLoginConfigurationInputBuilder()
              ..name = name
              ..redirectUris = ListBuilder<String>([redirectUri]);

        final response = (await configurationApi.createLoginConfigurations(
            createLoginConfigurationInput:
                createLoginConfigurationInput.build()));

        expect(response.statusCode, 201);
        expect(response.data!.configurationId, isNotEmpty);

        configurationId = response.data?.configurationId ?? '';
      });

      test('Reads login configurations', () async {
        final configurations =
            (await configurationApi.listLoginConfigurations())
                .data
                ?.configurations;
        expect(configurations, isNotNull);

        expect(configurations?.length, greaterThan(0));
      },
          skip:
              'TODO: Fix API spec for LoginConfigurationObject -> null for non-nullable field `clientId`');

      test('Updates login configuration', () async {
        final String updatedName = 'UpdatedName';

        final updateLoginConfigurationInput =
            UpdateLoginConfigurationInputBuilder()..name = updatedName;

        final config = (await configurationApi.updateLoginConfigurationsById(
                configurationId: configurationId,
                updateLoginConfigurationInput:
                    updateLoginConfigurationInput.build()))
            .data;

        expect(config, isNotNull);
        expect(config?.name, equals(updatedName));
      },
          skip:
              'TODO: Fix API spec for LoginConfigurationObject -> null for non-nullable field `clientId`');

      // NOTE: Deserializing 'LoginConfigurationObject' failed due to: Tried to construct class "LoginConfigurationObject" with null for non-nullable field "clientId"
      test('Reads login configuration', () async {
        final config = (await configurationApi.getLoginConfigurationsById(
                configurationId: configurationId))
            .data;

        expect(config, isNotNull);
      },
          skip:
              'TODO: Fix API spec for LoginConfigurationObject -> null for non-nullable field `clientId`');

      test('Deletes login configuration', () async {
        if (configurationId.isNotEmpty) {
          await configurationApi.deleteLoginConfigurationsById(
              configurationId: configurationId);

          await expectLater(
            configurationApi.getLoginConfigurationsById(
                configurationId: configurationId),
            throwsA(isA<DioException>()
                .having((e) => e.response?.statusCode, 'status code', 404)),
          );
        }
      });
    });
  });
}
