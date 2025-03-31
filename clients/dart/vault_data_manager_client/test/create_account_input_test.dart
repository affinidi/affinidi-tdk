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
    // String profileDid
    test('to test the property `profileDid`', () async {
      // TODO
    });

    // JWT that proves ownership of profile DID by requester
    // String didProof
    test('to test the property `didProof`', () async {
      // TODO
    });

  });
}
