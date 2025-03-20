import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for DefaultApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getDefaultApi();

  group(DefaultApi, () {
    // creates account
    //
    //Future<CreateAccountOK> createAccount(CreateAccountInput createAccountInput) async
    test('test createAccount', () async {
      // TODO
    });

  });
}
