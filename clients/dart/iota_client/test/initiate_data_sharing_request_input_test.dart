import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

// tests for InitiateDataSharingRequestInput
void main() {
  final instance = InitiateDataSharingRequestInputBuilder();
  // TODO add properties to the builder and call build()

  group(InitiateDataSharingRequestInput, () {
    // The ID of the query.
    // String queryId
    test('to test the property `queryId`', () async {
      // TODO
    });

    // A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
    // String correlationId
    test('to test the property `correlationId`', () async {
      // TODO
    });

    // This is the lifetime of the signed request token during the data-sharing flow.
    // int tokenMaxAge
    test('to test the property `tokenMaxAge`', () async {
      // TODO
    });

    // A randomly generated value that is added in the request and response to prevent replay attacks.
    // String nonce
    test('to test the property `nonce`', () async {
      // TODO
    });

    // List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
    // String redirectUri
    test('to test the property `redirectUri`', () async {
      // TODO
    });

    // ID of the Affinidi Iota Framework configuration.
    // String configurationId
    test('to test the property `configurationId`', () async {
      // TODO
    });

    // Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
    // String mode
    test('to test the property `mode`', () async {
      // TODO
    });

  });
}
