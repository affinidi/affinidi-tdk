import 'package:test/test.dart';
import 'package:affinidi_tdk_credential_issuance_client/affinidi_tdk_credential_issuance_client.dart';

// tests for FlowData
void main() {
  final instance = FlowDataBuilder();
  // TODO add properties to the builder and call build()

  group(FlowData, () {
    // [GEN] ISO 8601 string of the creation date/time the entity
    // String createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // [GEN] ISO 8601 string of the modification date/time the entity
    // String modifiedAt
    test('to test the property `modifiedAt`', () async {
      // TODO
    });

    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // String projectId
    test('to test the property `projectId`', () async {
      // TODO
    });

    // String flowId
    test('to test the property `flowId`', () async {
      // TODO
    });

    // String credentialTypeId
    test('to test the property `credentialTypeId`', () async {
      // TODO
    });

    // String jsonLdContextUrl
    test('to test the property `jsonLdContextUrl`', () async {
      // TODO
    });

    // String jsonSchemaUrl
    test('to test the property `jsonSchemaUrl`', () async {
      // TODO
    });

    // Id of configuration, used to issue VC.
    // String configurationId
    test('to test the property `configurationId`', () async {
      // TODO
    });

    // when credential was issued to the holder (holder invoked generateCredentials endpoint)
    // String issuedAt
    test('to test the property `issuedAt`', () async {
      // TODO
    });

    // Id of wallet, used to issue VC.
    // String walletId
    test('to test the property `walletId`', () async {
      // TODO
    });

    // Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{configurationId}\"
    // String projectIdConfigurationId
    test('to test the property `projectIdConfigurationId`', () async {
      // TODO
    });

    // Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{walletId}\"
    // String projectIdConfigurationIdWalletId
    test('to test the property `projectIdConfigurationIdWalletId`', () async {
      // TODO
    });

    // VC.type value. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{credentialType}\"
    // String projectIdConfigurationIdCredentialType
    test('to test the property `projectIdConfigurationIdCredentialType`', () async {
      // TODO
    });

    // BuiltList<FlowDataStatusListsDetailsInner> statusListsDetails
    test('to test the property `statusListsDetails`', () async {
      // TODO
    });

  });
}
