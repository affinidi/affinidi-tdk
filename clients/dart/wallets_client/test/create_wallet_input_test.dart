import 'package:test/test.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';

// tests for CreateWalletInput
void main() {
  final instance = CreateWalletInputBuilder();
  // TODO add properties to the builder and call build()

  group(CreateWalletInput, () {
    // The name of the wallet
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The description of the wallet
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Define how DID of your wallet is created and resolved
    // String didMethod
    test('to test the property `didMethod`', () async {
      // TODO
    });

    // URL of the DID. Required if the did method is web
    // String didWebUrl
    test('to test the property `didWebUrl`', () async {
      // TODO
    });

  });
}
