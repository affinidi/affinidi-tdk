import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

// tests for CreateProfileInput
void main() {
  final instance = CreateProfileInputBuilder();
  // TODO add properties to the builder and call build()

  group(CreateProfileInput, () {
    // Name of the item
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // description of profile
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // EdekInfo edekInfo
    test('to test the property `edekInfo`', () async {
      // TODO
    });

    // A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
    // String dek
    test('to test the property `dek`', () async {
      // TODO
    });

    // metadata of the node in stringified json format
    // String metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // DID to grant access to Profile
    // String subjectDid
    test('to test the property `subjectDid`', () async {
      // TODO
    });

    // types of access to grant
    // BuiltList<String> rights
    test('to test the property `rights`', () async {
      // TODO
    });

  });
}
