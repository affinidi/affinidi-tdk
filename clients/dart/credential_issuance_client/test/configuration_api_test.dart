import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


/// tests for ConfigurationApi
void main() {
  final instance = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();

  group(ConfigurationApi, () {
    // Create issuance configuration, project have only one configuration
    //
    //Future<IssuanceConfigDto> createIssuanceConfig(CreateIssuanceConfigInput createIssuanceConfigInput) async
    test('test createIssuanceConfig', () async {
      // TODO
    });

    // Delete project issuance configuration
    //
    //Future deleteIssuanceConfigById(String configurationId) async
    test('test deleteIssuanceConfigById', () async {
      // TODO
    });

    // Get issuance configuration by id
    //
    //Future<IssuanceConfigDto> getIssuanceConfigById(String configurationId) async
    test('test getIssuanceConfigById', () async {
      // TODO
    });

    // Get issuance configuration for my selected project
    //
    //Future<IssuanceConfigListResponse> getIssuanceConfigList() async
    test('test getIssuanceConfigList', () async {
      // TODO
    });

    // Update issuance configuration
    //
    //Future<IssuanceConfigDto> updateIssuanceConfigById(String configurationId, UpdateIssuanceConfigInput updateIssuanceConfigInput) async
    test('test updateIssuanceConfigById', () async {
      // TODO
    });

  });
}
