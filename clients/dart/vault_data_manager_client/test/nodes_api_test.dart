//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
import 'package:test/test.dart';


/// tests for NodesApi
void main() {
  // final instance = NodesApi();

  group('tests for NodesApi', () {
    // creates node
    //
    //Future<CreateNodeOK> createNode(CreateNodeInput createNodeInput) async
    test('test createNode', () async {
      // TODO
    });

    // Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.
    //
    //Future<DeleteNodeDto> deleteNode(String nodeId) async
    test('test deleteNode', () async {
      // TODO
    });

    // Gets detailed information about the node
    //
    //Future<GetDetailedNodeInfoOK> getDetailedNodeInfo(String nodeId, { String dek }) async
    test('test getDetailedNodeInfo', () async {
      // TODO
    });

    // Initialize root node, and TRASH_BIN
    //
    //Future<InitNodesOK> initNodes() async
    test('test initNodes', () async {
      // TODO
    });

    // lists children of the node
    //
    //Future<ListNodeChildrenOK> listNodeChildren(String nodeId, { int limit, String exclusiveStartKey }) async
    test('test listNodeChildren', () async {
      // TODO
    });

    // lists children of the root node for the consumer
    //
    //Future<ListRootNodeChildrenOK> listRootNodeChildren() async
    test('test listRootNodeChildren', () async {
      // TODO
    });

    // Moves a node from source to destination along with the hierarchy
    //
    //Future<MoveNodeDto> moveNode(String nodeId, MoveNodeInput moveNodeInput) async
    test('test moveNode', () async {
      // TODO
    });

    // Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.
    //
    //Future permanentlyDeleteNode(String nodeId, String nodeIdToRemove) async
    test('test permanentlyDeleteNode', () async {
      // TODO
    });

    // Restore node marked for deletion from TRASH_BIN
    //
    //Future<MoveNodeDto> restoreNodeFromTrashbin(String nodeId, String nodeIdToRestore, RestoreNodeFromTrashbin restoreNodeFromTrashbin) async
    test('test restoreNodeFromTrashbin', () async {
      // TODO
    });

    // Updates a node
    //
    //Future<NodeDto> updateNode(String nodeId, UpdateNodeInput updateNodeInput) async
    test('test updateNode', () async {
      // TODO
    });

  });
}
