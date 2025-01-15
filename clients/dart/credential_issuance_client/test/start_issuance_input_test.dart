import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for StartIssuanceInput
void main() {
  final instance = StartIssuanceInputBuilder();
  // TODO add properties to the builder and call build()

  group(StartIssuanceInput, () {
    // In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
    // String claimMode
    test('to test the property `claimMode`', () async {
      // TODO
    });

    // Holder DID
    // String holderDid
    test('to test the property `holderDid`', () async {
      // TODO
    });

    // Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
    // String issuanceId
    test('to test the property `issuanceId`', () async {
      // TODO
    });

    // BuiltList<StartIssuanceInputDataInner> data
    test('to test the property `data`', () async {
      // TODO
    });

  });
}
