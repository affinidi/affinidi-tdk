import 'package:test/test.dart';
import 'package:affinidi_tdk_iota_client/affinidi_tdk_iota_client.dart';

// tests for IotaConfigurationDto
void main() {
  final instance = IotaConfigurationDtoBuilder();
  // TODO add properties to the builder and call build()

  group(IotaConfigurationDto, () {
    // This is a unique resource identifier of the Affinidi Iota Framework configuration.
    // String ari
    test('to test the property `ari`', () async {
      // TODO
    });

    // ID of the Affinidi Iota Framework configuration.
    // String configurationId
    test('to test the property `configurationId`', () async {
      // TODO
    });

    // The name of the configuration to quickly identify the resource.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The ID of the project.
    // String projectId
    test('to test the property `projectId`', () async {
      // TODO
    });

    // The unique resource identifier of the Wallet used to sign the request token.
    // String walletAri
    test('to test the property `walletAri`', () async {
      // TODO
    });

    // This is the lifetime of the signed request token during the data-sharing flow.
    // int tokenMaxAge
    test('to test the property `tokenMaxAge`', () async {
      // TODO
    });

    // The webhook URL is used for callback when the data is ready.
    // String iotaResponseWebhookURL
    test('to test the property `iotaResponseWebhookURL`', () async {
      // TODO
    });

    // Cryptographically verifies the data shared by the user when enabled.
    // bool enableVerification
    test('to test the property `enableVerification`', () async {
      // TODO
    });

    // Records the consent the user gave when they shared their data, including the type of data shared.
    // bool enableConsentAuditLog
    test('to test the property `enableConsentAuditLog`', () async {
      // TODO
    });

    // IotaConfigurationDtoClientMetadata clientMetadata
    test('to test the property `clientMetadata`', () async {
      // TODO
    });

    // Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
    // String mode (default value: 'websocket')
    test('to test the property `mode`', () async {
      // TODO
    });

    // List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
    // BuiltList<String> redirectUris
    test('to test the property `redirectUris`', () async {
      // TODO
    });

    // Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
    // bool enableIdvProviders
    test('to test the property `enableIdvProviders`', () async {
      // TODO
    });

  });
}
