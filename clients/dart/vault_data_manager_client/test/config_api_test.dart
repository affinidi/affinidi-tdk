import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for ConfigApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getConfigApi();

  group(ConfigApi, () {
    // Retrieves the user profile name and the maximum number of profiles, with default values set to 'default' and 1, respectively.
    //
    //Future<GetConfigOK> getConfig() async
    test('test getConfig', () async {
      // TODO
    });

  });
}
