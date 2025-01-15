import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

// tests for CallbackResponseOK
void main() {
  final instance = CallbackResponseOKBuilder();
  // TODO add properties to the builder and call build()

  group(CallbackResponseOK, () {
    // The URL to which Affinidi Vault will redirect the user.
    // String redirectUri
    test('to test the property `redirectUri`', () async {
      // TODO
    });

    // A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
    // String responseCode
    test('to test the property `responseCode`', () async {
      // TODO
    });

    // A message to the Affinidi Vault indicating that the update was successful.
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

  });
}
