import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for AccountsApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getAccountsApi();

  group(AccountsApi, () {
    // Delete account.
    //
    //Future<DeleteAccountDto> deleteAccount(String accountNumber) async
    test('test deleteAccount', () async {
      // TODO
    });

    // List accounts of associated profiles.
    //
    //Future<ListAccountsDto> listAccounts() async
    test('test listAccounts', () async {
      // TODO
    });

  });
}
