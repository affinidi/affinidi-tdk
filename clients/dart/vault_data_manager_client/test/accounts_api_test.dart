import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';


/// tests for AccountsApi
void main() {
  final instance = AffinidiTdkVaultDataManagerClient().getAccountsApi();

  group(AccountsApi, () {
    // creates account
    //
    //Future<CreateAccountOK> createAccount(CreateAccountInput createAccountInput) async
    test('test createAccount', () async {
      // TODO
    });

    // Delete account.
    //
    //Future<DeleteAccountDto> deleteAccount(int accountIndex) async
    test('test deleteAccount', () async {
      // TODO
    });

    // List accounts of associated profiles.
    //
    //Future<ListAccountsDto> listAccounts({ int limit, String exclusiveStartKey }) async
    test('test listAccounts', () async {
      // TODO
    });

  });
}
