import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for FlowDataStatusListsDetailsInner
void main() {
  final instance = FlowDataStatusListsDetailsInnerBuilder();
  // TODO add properties to the builder and call build()

  group(FlowDataStatusListsDetailsInner, () {
    // Purpose of status list to which credential is added
    // String statusListPurpose
    test('to test the property `statusListPurpose`', () async {
      // TODO
    });

    // id of status list
    // String statusListId
    test('to test the property `statusListId`', () async {
      // TODO
    });

    // as usual it is a number, but all standards use a string
    // String statusListIndex
    test('to test the property `statusListIndex`', () async {
      // TODO
    });

    // String standard
    test('to test the property `standard`', () async {
      // TODO
    });

    // indicates status is true or not. Default false.
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // text reasoning why the status is true (if true). Optional.
    // String statusActivationReason
    test('to test the property `statusActivationReason`', () async {
      // TODO
    });

    // ISO 8601 string of the modification date/time the status. Optional.
    // String statusActivatedAt
    test('to test the property `statusActivatedAt`', () async {
      // TODO
    });

  });
}
