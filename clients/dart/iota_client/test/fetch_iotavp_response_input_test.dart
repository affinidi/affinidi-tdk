import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

// tests for FetchIOTAVPResponseInput
void main() {
  final instance = FetchIOTAVPResponseInputBuilder();
  // TODO add properties to the builder and call build()

  group(FetchIOTAVPResponseInput, () {
    // A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
    // String correlationId
    test('to test the property `correlationId`', () async {
      // TODO
    });

    // A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data.
    // String transactionId
    test('to test the property `transactionId`', () async {
      // TODO
    });

    // A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
    // String responseCode
    test('to test the property `responseCode`', () async {
      // TODO
    });

    // ID of the Affinidi Iota Framework configuration.
    // String configurationId
    test('to test the property `configurationId`', () async {
      // TODO
    });

  });
}
