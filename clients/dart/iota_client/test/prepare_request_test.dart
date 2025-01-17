import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

// tests for PrepareRequest
void main() {
  final instance = PrepareRequestBuilder();
  // TODO add properties to the builder and call build()

  group(PrepareRequest, () {
    // String connectionClientId
    test('to test the property `connectionClientId`', () async {
      // TODO
    });

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

    // String audience
    test('to test the property `audience`', () async {
      // TODO
    });

  });
}
