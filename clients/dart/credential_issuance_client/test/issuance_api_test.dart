import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


/// tests for IssuanceApi
void main() {
  final instance = AffinidiTdkCredentialIssuanceClient().getIssuanceApi();

  group(IssuanceApi, () {
    // Get issuance status
    //
    //Future<IssuanceStateResponse> issuanceState(String issuanceId, String projectId) async
    test('test issuanceState', () async {
      // TODO
    });

    // Endpoint to issue credentials directly without following OID4VCI flow
    //
    //Future<CredentialResponse> issueCredentials(String projectId, StartIssuanceInput startIssuanceInput) async
    test('test issueCredentials', () async {
      // TODO
    });

    // List all issuances for Project
    //
    //Future<ListIssuanceResponse> listIssuance(String projectId) async
    test('test listIssuance', () async {
      // TODO
    });

    // Endpoint used b websites to start the issuance process
    //
    //Future<StartIssuanceResponse> startIssuance(String projectId, StartIssuanceInput startIssuanceInput) async
    test('test startIssuance', () async {
      // TODO
    });

  });
}
