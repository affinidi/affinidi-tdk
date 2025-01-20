import 'package:test/test.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';

// tests for CreateLoginConfigurationInput
void main() {
  final instance = CreateLoginConfigurationInputBuilder();
  // TODO add properties to the builder and call build()

  group(CreateLoginConfigurationInput, () {
    // User defined login configuration name
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // OAuth 2.0 Redirect URIs
    // BuiltList<String> redirectUris
    test('to test the property `redirectUris`', () async {
      // TODO
    });

    // Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
    // BuiltList<String> postLogoutRedirectUris
    test('to test the property `postLogoutRedirectUris`', () async {
      // TODO
    });

    // VP definition in JSON stringify format
    // String vpDefinition
    test('to test the property `vpDefinition`', () async {
      // TODO
    });

    // Presentation Definition
    // JsonObject presentationDefinition
    test('to test the property `presentationDefinition`', () async {
      // TODO
    });

    // Fields name/path mapping between the vp_token and the id_token
    // BuiltList<IdTokenMappingItem> idTokenMapping
    test('to test the property `idTokenMapping`', () async {
      // TODO
    });

    // LoginConfigurationClientMetadataInput clientMetadata
    test('to test the property `clientMetadata`', () async {
      // TODO
    });

    // ID token claims output format. Default is array.
    // String claimFormat
    test('to test the property `claimFormat`', () async {
      // TODO
    });

    // Interrupts login process if duplications of data fields names will be found
    // bool failOnMappingConflict (default value: true)
    test('to test the property `failOnMappingConflict`', () async {
      // TODO
    });

    // List of groups separated by space
    // String scope
    test('to test the property `scope`', () async {
      // TODO
    });

    // TokenEndpointAuthMethod tokenEndpointAuthMethod
    test('to test the property `tokenEndpointAuthMethod`', () async {
      // TODO
    });

  });
}
