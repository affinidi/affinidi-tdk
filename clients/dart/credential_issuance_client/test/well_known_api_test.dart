import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


/// tests for WellKnownApi
void main() {
  final instance = AffinidiTdkCredentialIssuanceClient().getWellKnownApi();

  group(WellKnownApi, () {
    //Future<WellKnownOpenIdCredentialIssuerResponse> getWellKnownOpenIdCredentialIssuer(String projectId) async
    test('test getWellKnownOpenIdCredentialIssuer', () async {
      // TODO
    });

  });
}
