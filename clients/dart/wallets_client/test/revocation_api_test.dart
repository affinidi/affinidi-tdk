import 'package:test/test.dart';
import 'package:affinidi_tdk_wallets_client/affinidi_tdk_wallets_client.dart';


/// tests for RevocationApi
void main() {
  final instance = AffinidiTdkWalletsClient().getRevocationApi();

  group(RevocationApi, () {
    // Get revocation status list as RevocationListCredential
    //
    //Future<GetRevocationListCredentialResultDto> getRevocationCredentialStatus(String projectId, String walletId, String statusId) async
    test('test getRevocationCredentialStatus', () async {
      // TODO
    });

    // Return revocation list credential.
    //
    // Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.
    //
    //Future<GetRevocationListCredentialResultDto> getRevocationListCredential(String listId, String walletId) async
    test('test getRevocationListCredential', () async {
      // TODO
    });

    // Revoke Credential.
    //
    // Update index/credetial at appropriate revocation list (set revoken is true).
    //
    //Future revokeCredential(String walletId, RevokeCredentialInput revokeCredentialInput) async
    test('test revokeCredential', () async {
      // TODO
    });

  });
}
