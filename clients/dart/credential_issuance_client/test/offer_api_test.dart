import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';


/// tests for OfferApi
void main() {
  final instance = AffinidiTdkCredentialIssuanceClient().getOfferApi();

  group(OfferApi, () {
    // Endpoint used to return Credential Offer details, used with `credential_offer_uri` response
    //
    //Future<CredentialOfferResponse> getCredentialOffer(String projectId, String issuanceId) async
    test('test getCredentialOffer', () async {
      // TODO
    });

  });
}
