import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';


/// tests for ConfigurationsApi
void main() {
  final instance = AffinidiTdkIotaClient().getConfigurationsApi();

  group(ConfigurationsApi, () {
    // Creates a new Affinidi Iota Framework configuration.
    //
    //Future<IotaConfigurationDto> createIotaConfiguration(CreateIotaConfigurationInput createIotaConfigurationInput) async
    test('test createIotaConfiguration', () async {
      // TODO
    });

    // Deletes an Affinidi Iota Framework configuration by ID.
    //
    //Future deleteIotaConfigurationById(String configurationId) async
    test('test deleteIotaConfigurationById', () async {
      // TODO
    });

    // Retrieves the details of an Affinidi Iota Framework configuration.
    //
    //Future<IotaConfigurationDto> getIotaConfigurationById(String configurationId) async
    test('test getIotaConfigurationById', () async {
      // TODO
    });

    // Retrieves the client metadata of an Affinidi Iota Framework configuration. 
    //
    //Future<GetIotaConfigurationMetaDataOK> getIotaConfigurationMetaData(String projectId, String configurationId) async
    test('test getIotaConfigurationMetaData', () async {
      // TODO
    });

    // List all Affinidi Iota Framework configurations.
    //
    //Future<ListConfigurationOK> listIotaConfigurations() async
    test('test listIotaConfigurations', () async {
      // TODO
    });

    // Updates the details of an Affinidi Iota Framework configuration by ID.
    //
    //Future<IotaConfigurationDto> updateIotaConfigurationById(String configurationId, UpdateConfigurationByIdInput updateConfigurationByIdInput) async
    test('test updateIotaConfigurationById', () async {
      // TODO
    });

  });
}
