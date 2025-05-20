import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for ConfigurationApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getConfigurationApi();

  group(ConfigurationApi, () {
    // Retrieves the user profile name and the maximum number of profiles, with default values set to 'default' and 1, respectively.
    //
    //Future<GetConfigOK> getConfiguration() async
    test('test getConfiguration', () async {
      // TODO
    });

  });
}
