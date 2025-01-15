import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

// tests for CreateNodeInput
void main() {
  final instance = CreateNodeInputBuilder();
  // TODO add properties to the builder and call build()

  group(CreateNodeInput, () {
    // Name of the item
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // NodeType type
    test('to test the property `type`', () async {
      // TODO
    });

    // description of profile if creating a new profile
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // parent node id, if not provided then root element is used
    // String parentNodeId
    test('to test the property `parentNodeId`', () async {
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

  });
}
