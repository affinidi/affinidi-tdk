import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


/// tests for DefaultApi
void main() {
  final instance = AffinidiTdkCredentialIssuanceClient().getDefaultApi();

  group(DefaultApi, () {
    // change credential status.
    //
    // change credential status.
    //
    //Future<FlowData> changeCredentialStatus(String projectId, String configurationId, ChangeCredentialStatusInput changeCredentialStatusInput) async
    test('test changeCredentialStatus', () async {
      // TODO
    });

    // List records
    //
    // Retrieve a list of issuance data records.
    //
    //Future<ListIssuanceRecordResponse> listIssuanceDataRecords(String projectId, String configurationId, { int limit, String exclusiveStartKey }) async
    test('test listIssuanceDataRecords', () async {
      // TODO
    });

  });
}
