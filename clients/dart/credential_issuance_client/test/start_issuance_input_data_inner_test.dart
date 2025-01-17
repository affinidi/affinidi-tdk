import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for StartIssuanceInputDataInner
void main() {
  final instance = StartIssuanceInputDataInnerBuilder();
  // TODO add properties to the builder and call build()

  group(StartIssuanceInputDataInner, () {
    // It is a String that identifies a Credential that is being requested to be issued.
    // String credentialTypeId
    test('to test the property `credentialTypeId`', () async {
      // TODO
    });

    // Object of data to be included in the issued credential ,should  match the credential type
    // BuiltMap<String, JsonObject> credentialData
    test('to test the property `credentialData`', () async {
      // TODO
    });

    // Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists.
    // BuiltList<StartIssuanceInputDataInnerStatusListDetailsInner> statusListDetails
    test('to test the property `statusListDetails`', () async {
      // TODO
    });

    // StartIssuanceInputDataInnerMetaData metaData
    test('to test the property `metaData`', () async {
      // TODO
    });

  });
}
