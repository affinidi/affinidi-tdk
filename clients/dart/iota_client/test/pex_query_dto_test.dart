import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

// tests for PexQueryDto
void main() {
  final instance = PexQueryDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PexQueryDto, () {
    // The unique resource identifier of the qeuery.
    // String ari
    test('to test the property `ari`', () async {
      // TODO
    });

    // The ID of the query.
    // String queryId
    test('to test the property `queryId`', () async {
      // TODO
    });

    // The name of the presentation definition to quickly identify the query.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // An optional description of what the query is used for.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // The unique resource identifier of the related configuration where the query is defined.
    // String configurationAri
    test('to test the property `configurationAri`', () async {
      // TODO
    });

    // The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
    // String vpDefinition
    test('to test the property `vpDefinition`', () async {
      // TODO
    });

  });
}
