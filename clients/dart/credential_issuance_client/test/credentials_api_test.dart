import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


/// tests for CredentialsApi
void main() {
  final instance = AffinidiTdkCredentialIssuanceClient().getCredentialsApi();

  group(CredentialsApi, () {
    // Allows wallets to claim multiple credentials at once.
    //
    // Allows wallets to claim multiple credentials at once. For authentication, it uses a token from the authorization server
    //
    //Future<BatchCredentialResponse> batchCredential(String projectId, BatchCredentialInput batchCredentialInput) async
    test('test batchCredential', () async {
      // TODO
    });

    // Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials
    //
    //Future<CredentialResponse> generateCredentials(String projectId, CreateCredentialInput createCredentialInput) async
    test('test generateCredentials', () async {
      // TODO
    });

    // Get claimed credential in the specified range
    //
    // Get claimed credential in the specified range
    //
    //Future<ClaimedCredentialListResponse> getClaimedCredentials(String projectId, String configurationId, String rangeStartTime, { String rangeEndTime, String exclusiveStartKey, int limit }) async
    test('test getClaimedCredentials', () async {
      // TODO
    });

    // Get claimed VC linked to the issuanceId
    //
    // Get claimed VC linked to the issuanceId
    //
    //Future<ClaimedCredentialResponse> getIssuanceIdClaimedCredential(String projectId, String configurationId, String issuanceId) async
    test('test getIssuanceIdClaimedCredential', () async {
      // TODO
    });

  });
}
