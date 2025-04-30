import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

// tests for CreateAccountInput
void main() {
  final instance = CreateAccountInputBuilder();
  // TODO add properties to the builder and call build()

  group(CreateAccountInput, () {
    // number that is used for profile DID derivation
    // int accountIndex
    test('to test the property `accountIndex`', () async {
      // TODO
    });

    // DID that is associated with the account number
    // String accountDid
    test('to test the property `accountDid`', () async {
      // TODO
    });

    // JWT that proves ownership of profile DID by requester
    // String didProof
    test('to test the property `didProof`', () async {
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
