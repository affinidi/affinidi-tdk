import 'package:test/test.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

// tests for MoveNodeInput
void main() {
  final instance = MoveNodeInputBuilder();
  // TODO add properties to the builder and call build()

  group(MoveNodeInput, () {
    // Parent to which current node should be moved
    // String destinationNodeId
    test('to test the property `destinationNodeId`', () async {
      // TODO
    });

    // automatically update the name of Node if target Node has children with the same name. If not provided, name won't be updated automatically
    // bool resolveNameConflictsAutomatically (default value: false)
    test('to test the property `resolveNameConflictsAutomatically`', () async {
      // TODO
    });

  });
}
