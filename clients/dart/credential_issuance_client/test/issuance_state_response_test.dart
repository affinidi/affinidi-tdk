import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for IssuanceStateResponse
void main() {
  final instance = IssuanceStateResponseBuilder();
  // TODO add properties to the builder and call build()

  group(IssuanceStateResponse, () {
    // Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
    // String issuanceId
    test('to test the property `issuanceId`', () async {
      // TODO
    });

    // String describing the status of the issuance
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

  });
}
