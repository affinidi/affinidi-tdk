import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

// tests for AccountDto
void main() {
  final instance = AccountDtoBuilder();
  // TODO add properties to the builder and call build()

  group(AccountDto, () {
    // number that is used for profile DID derivation
    // int accountIndex
    test('to test the property `accountIndex`', () async {
      // TODO
    });

    // Profile DID that is associated with the account number
    // String accountDid
    test('to test the property `accountDid`', () async {
      // TODO
    });

    // Alias of account
    // String alias
    test('to test the property `alias`', () async {
      // TODO
    });

    // Metadata of account
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Description of account
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

  });
}
