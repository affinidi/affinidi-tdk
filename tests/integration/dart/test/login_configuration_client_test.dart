import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';
import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:test/test.dart';

import 'helpers/helpers.dart';

void main() {
  group('Login Configuration Client Integration Tests', () {
    late ConfigurationApi configurationApi;
    late String configurationId;

    setUpAll(() async {
      final apiGwUrl = Environment.fetchEnvironment().apiGwUrl;
      String basePathOverride = replaceBaseDomain(
          AffinidiTdkLoginConfigurationClient.basePath, apiGwUrl);

      final loginConfigurationClient = AffinidiTdkLoginConfigurationClient(
          authTokenHook: ResourceFactory.getAuthTokenHook(),
          basePathOverride: basePathOverride);

      configurationApi = loginConfigurationClient.getConfigurationApi();
    });

    tearDownAll(() async {
      await configurationApi.deleteLoginConfigurationsById(
          configurationId: configurationId);
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
      });

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
      });

      test('Reads login configuration', () async {
        final config = (await configurationApi.getLoginConfigurationsById(
                configurationId: configurationId))
            .data;

        expect(config, isNotNull);
      });
    });
  });
}
