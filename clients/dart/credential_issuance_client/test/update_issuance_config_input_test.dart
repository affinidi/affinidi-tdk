import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for UpdateIssuanceConfigInput
void main() {
  final instance = UpdateIssuanceConfigInputBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateIssuanceConfigInput, () {
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Issuer Wallet id
    // String issuerWalletId
    test('to test the property `issuerWalletId`', () async {
      // TODO
    });

    // credential offer duration in second
    // int credentialOfferDuration
    test('to test the property `credentialOfferDuration`', () async {
      // TODO
    });

    // String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
    // String format
    test('to test the property `format`', () async {
      // TODO
    });

    // Issuer URI
    // String issuerUri
    test('to test the property `issuerUri`', () async {
      // TODO
    });

    // BuiltList<CredentialSupportedObject> credentialSupported
    test('to test the property `credentialSupported`', () async {
      // TODO
    });

    // Issuer public information wallet may want to show to user during consent confirmation
    // BuiltMap<String, JsonObject> issuerMetadata
    test('to test the property `issuerMetadata`', () async {
      // TODO
    });

    // List of allowed URIs to be returned to after issuance
    // BuiltList<String> returnUris
    test('to test the property `returnUris`', () async {
      // TODO
    });

    // CisConfigurationWebhookSetting webhook
    test('to test the property `webhook`', () async {
      // TODO
    });

  });
}
