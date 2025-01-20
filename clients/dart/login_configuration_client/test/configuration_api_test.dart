import 'package:test/test.dart';
import 'package:affinidi_tdk_login_configuration_client/affinidi_tdk_login_configuration_client.dart';


/// tests for ConfigurationApi
void main() {
  final instance = AffinidiTdkLoginConfigurationClient().getConfigurationApi();

  group(ConfigurationApi, () {
    // Create a new login configuration
    //
    // Create a new login configuration  `vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions.  An essential default definition is in place when it comes to the login process for end users using the Chrome extension.  This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service. 
    //
    //Future<CreateLoginConfigurationOutput> createLoginConfigurations({ CreateLoginConfigurationInput createLoginConfigurationInput }) async
    test('test createLoginConfigurations', () async {
      // TODO
    });

    // Delete login configurations by ID
    //
    // Delete login configurations by ID
    //
    //Future deleteLoginConfigurationsById(String configurationId) async
    test('test deleteLoginConfigurationsById', () async {
      // TODO
    });

    // Get Client Metadata By  OAuth 2.0 Client ID
    //
    // Get Client Metadata By  OAuth 2.0 Client ID
    //
    //Future<LoginConfigurationClientMetadataOutput> getClientMetadataByClientId(String clientId) async
    test('test getClientMetadataByClientId', () async {
      // TODO
    });

    // Get login configuration by ID
    //
    // Get login configuration by ID
    //
    //Future<LoginConfigurationObject> getLoginConfigurationsById(String configurationId) async
    test('test getLoginConfigurationsById', () async {
      // TODO
    });

    // List login configurations
    //
    // Endpoint to retrieve list of login configurations
    //
    //Future<ListLoginConfigurationOutput> listLoginConfigurations({ int limit, String exclusiveStartKey }) async
    test('test listLoginConfigurations', () async {
      // TODO
    });

    // Update login configurations by ID
    //
    // Update login configurations by ID
    //
    //Future<LoginConfigurationObject> updateLoginConfigurationsById(String configurationId, { UpdateLoginConfigurationInput updateLoginConfigurationInput }) async
    test('test updateLoginConfigurationsById', () async {
      // TODO
    });

  });
}
