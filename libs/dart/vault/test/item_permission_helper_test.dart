import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault/src/helpers/item_permission_helper.dart';
import 'package:test/test.dart';

void main() {
  group('ItemPermissionHelper', () {
    group('rightsListToPermissions', () {
      test('should return null for empty rights list', () {
        final result = ItemPermissionHelper.rightsListToPermissions([]);
        expect(result, isNull);
      });

      test('should return Permissions.read for vfsRead only', () {
        final result =
            ItemPermissionHelper.rightsListToPermissions(['vfsRead']);
        expect(result, equals(Permissions.read));
      });

      test('should return Permissions.write for vfsWrite only', () {
        final result =
            ItemPermissionHelper.rightsListToPermissions(['vfsWrite']);
        expect(result, equals(Permissions.write));
      });

      test('should return Permissions.all for both vfsRead and vfsWrite', () {
        final result = ItemPermissionHelper.rightsListToPermissions(
            ['vfsRead', 'vfsWrite']);
        expect(result, equals(Permissions.all));
      });

      test('should return Permissions.all regardless of order', () {
        final result1 = ItemPermissionHelper.rightsListToPermissions(
            ['vfsRead', 'vfsWrite']);
        final result2 = ItemPermissionHelper.rightsListToPermissions(
            ['vfsWrite', 'vfsRead']);
        expect(result1, equals(Permissions.all));
        expect(result2, equals(Permissions.all));
        expect(result1, equals(result2));
      });

      test('should return null for unknown rights', () {
        final result =
            ItemPermissionHelper.rightsListToPermissions(['unknownRight']);
        expect(result, isNull);
      });

      test('should return null for mixed known and unknown rights', () {
        final result = ItemPermissionHelper.rightsListToPermissions(
            ['vfsRead', 'unknownRight']);
        expect(result, isNull);
      });
    });

    group('permissionsListToRightsList', () {
      test('should return empty list for empty permissions', () {
        final result = ItemPermissionHelper.permissionsListToRightsList([]);
        expect(result, isEmpty);
      });

      test('should convert Permissions.read to vfsRead', () {
        final result = ItemPermissionHelper.permissionsListToRightsList(
            [Permissions.read]);
        expect(result, equals(['vfsRead']));
      });

      test('should convert Permissions.write to vfsWrite', () {
        final result = ItemPermissionHelper.permissionsListToRightsList(
            [Permissions.write]);
        expect(result, equals(['vfsWrite']));
      });

      test('should convert Permissions.all to both rights', () {
        final result =
            ItemPermissionHelper.permissionsListToRightsList([Permissions.all]);
        expect(result, containsAll(['vfsRead', 'vfsWrite']));
        expect(result.length, equals(2));
      });

      test('should handle multiple permissions and deduplicate', () {
        final result = ItemPermissionHelper.permissionsListToRightsList([
          Permissions.read,
          Permissions.write,
          Permissions.read,
        ]);
        expect(result, containsAll(['vfsRead', 'vfsWrite']));
        expect(result.length, equals(2));
      });

      test('should handle Permissions.all with other permissions', () {
        final result = ItemPermissionHelper.permissionsListToRightsList([
          Permissions.all,
          Permissions.read,
        ]);
        expect(result, containsAll(['vfsRead', 'vfsWrite']));
        expect(result.length, equals(2));
      });
    });

    group('buildPermissionGroups', () {
      test('should return empty list for empty permissions', () {
        final result = ItemPermissionHelper.buildPermissionGroups([]);
        expect(result, isEmpty);
      });

      test('should filter out permissions with empty rights', () {
        final permissions = [
          ItemPermission(itemIds: ['node1'], rights: []),
          ItemPermission(itemIds: ['node2'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node2']));
        expect(result.first.permissions, equals(Permissions.read));
      });

      test('should handle single nodeId with read permission', () {
        final permissions = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node1']));
        expect(result.first.permissions, equals(Permissions.read));
      });

      test('should handle single nodeId with write permission', () {
        final permissions = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsWrite']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node1']));
        expect(result.first.permissions, equals(Permissions.write));
      });

      test('should handle single nodeId with both permissions', () {
        final permissions = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead', 'vfsWrite']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node1']));
        expect(result.first.permissions, equals(Permissions.all));
      });

      test('should handle multiple nodeIds with same permissions', () {
        final permissions = [
          ItemPermission(
              itemIds: ['node1', 'node2', 'node3'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, containsAll(['node1', 'node2', 'node3']));
        expect(result.first.itemIds.length, equals(3));
        expect(result.first.permissions, equals(Permissions.read));
      });

      test('should handle different nodeIds with different permissions', () {
        final permissions = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead']),
          ItemPermission(itemIds: ['node2'], rights: ['vfsWrite']),
          ItemPermission(itemIds: ['node3'], rights: ['vfsRead', 'vfsWrite']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(3));
        expect(
            result.any((g) =>
                g.itemIds.length == 1 &&
                g.itemIds.first == 'node1' &&
                g.permissions == Permissions.read),
            isTrue);
        expect(
            result.any((g) =>
                g.itemIds.length == 1 &&
                g.itemIds.first == 'node2' &&
                g.permissions == Permissions.write),
            isTrue);
        expect(
            result.any((g) =>
                g.itemIds.length == 1 &&
                g.itemIds.first == 'node3' &&
                g.permissions == Permissions.all),
            isTrue);
      });

      test('should handle nodeIds in different orders', () {
        final permissions = [
          ItemPermission(
              itemIds: ['node3', 'node1', 'node2'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, containsAll(['node1', 'node2', 'node3']));
        expect(result.first.itemIds.length, equals(3));
      });

      test('should handle rights in different orders', () {
        final permissions1 = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead', 'vfsWrite']),
        ];
        final permissions2 = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsWrite', 'vfsRead']),
        ];
        final result1 =
            ItemPermissionHelper.buildPermissionGroups(permissions1);
        final result2 =
            ItemPermissionHelper.buildPermissionGroups(permissions2);
        expect(result1.first.permissions, equals(Permissions.all));
        expect(result2.first.permissions, equals(Permissions.all));
        expect(result1.first.permissions, equals(result2.first.permissions));
      });

      test('should filter out permissions with unknown rights', () {
        final permissions = [
          ItemPermission(itemIds: ['node1'], rights: ['unknownRight']),
          ItemPermission(itemIds: ['node2'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node2']));
        expect(result.first.permissions, equals(Permissions.read));
      });

      test('should handle complex scenario with multiple groups', () {
        final permissions = [
          ItemPermission(itemIds: ['node1', 'node2'], rights: ['vfsRead']),
          ItemPermission(itemIds: ['node3'], rights: ['vfsWrite']),
          ItemPermission(
              itemIds: ['node4', 'node5'], rights: ['vfsRead', 'vfsWrite']),
          ItemPermission(itemIds: ['node6'], rights: []),
        ];
        final result = ItemPermissionHelper.buildPermissionGroups(permissions);
        expect(result.length, equals(3));

        final readGroup =
            result.firstWhere((g) => g.permissions == Permissions.read);
        expect(readGroup.itemIds, containsAll(['node1', 'node2']));

        final writeGroup =
            result.firstWhere((g) => g.permissions == Permissions.write);
        expect(writeGroup.itemIds, equals(['node3']));

        final allGroup =
            result.firstWhere((g) => g.permissions == Permissions.all);
        expect(allGroup.itemIds, containsAll(['node4', 'node5']));
      });
    });

    group('addPermission', () {
      test('should add permission to empty list', () {
        final result = ItemPermissionHelper.addPermission(
          [],
          ['node1'],
          ['vfsRead'],
        );
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node1']));
        expect(result.first.rights, equals(['vfsRead']));
      });

      test('should add permission for multiple nodeIds', () {
        final result = ItemPermissionHelper.addPermission(
          [],
          ['node1', 'node2', 'node3'],
          ['vfsRead'],
        );
        expect(result.length, equals(1));
        expect(result.first.itemIds, containsAll(['node1', 'node2', 'node3']));
        expect(result.first.rights, equals(['vfsRead']));
      });

      test('should merge permissions for existing nodeId', () {
        final existing = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.addPermission(
          existing,
          ['node1'],
          ['vfsWrite'],
        );
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node1']));
        expect(result.first.rights, containsAll(['vfsRead', 'vfsWrite']));
        expect(result.first.rights.length, equals(2));
      });

      test('should handle different nodeIds with different permissions', () {
        final existing = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.addPermission(
          existing,
          ['node2'],
          ['vfsWrite'],
        );
        expect(result.length, equals(2));
        expect(
            result.any((p) =>
                p.itemIds.length == 1 &&
                p.itemIds.first == 'node1' &&
                p.rights.length == 1 &&
                p.rights.first == 'vfsRead'),
            isTrue);
        expect(
            result.any((p) =>
                p.itemIds.length == 1 &&
                p.itemIds.first == 'node2' &&
                p.rights.length == 1 &&
                p.rights.first == 'vfsWrite'),
            isTrue);
      });

      test('should handle overlapping nodeIds', () {
        final existing = [
          ItemPermission(itemIds: ['node1', 'node2'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.addPermission(
          existing,
          ['node2', 'node3'],
          ['vfsWrite'],
        );
        expect(result.length, greaterThanOrEqualTo(2));
        final node2Perm = result.firstWhere((p) =>
            p.itemIds.contains('node2') &&
            !p.itemIds.contains('node1') &&
            !p.itemIds.contains('node3'));
        expect(node2Perm.rights, containsAll(['vfsRead', 'vfsWrite']));
      });

      test('should handle rights in different orders', () {
        final existing = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead']),
        ];
        final result1 = ItemPermissionHelper.addPermission(
          existing,
          ['node1'],
          ['vfsWrite', 'vfsRead'],
        );
        final result2 = ItemPermissionHelper.addPermission(
          existing,
          ['node1'],
          ['vfsRead', 'vfsWrite'],
        );
        expect(result1.first.rights, containsAll(['vfsRead', 'vfsWrite']));
        expect(result2.first.rights, containsAll(['vfsRead', 'vfsWrite']));
      });
    });

    group('removePermission', () {
      test('should remove all permissions when rights list is empty', () {
        final existing = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead', 'vfsWrite']),
        ];
        final result = ItemPermissionHelper.removePermission(
          existing,
          ['node1'],
          [],
        );
        expect(result, isEmpty);
      });

      test('should remove specific rights', () {
        final existing = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead', 'vfsWrite']),
        ];
        final result = ItemPermissionHelper.removePermission(
          existing,
          ['node1'],
          ['vfsWrite'],
        );
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node1']));
        expect(result.first.rights, equals(['vfsRead']));
      });

      test('should handle multiple nodeIds', () {
        final existing = [
          ItemPermission(itemIds: ['node1', 'node2'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.removePermission(
          existing,
          ['node1', 'node2'],
          [],
        );
        expect(result, isEmpty);
      });

      test('should handle partial nodeId removal', () {
        final existing = [
          ItemPermission(itemIds: ['node1', 'node2'], rights: ['vfsRead']),
        ];
        final result = ItemPermissionHelper.removePermission(
          existing,
          ['node1'],
          [],
        );
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node2']));
        expect(result.first.rights, equals(['vfsRead']));
      });

      test('should handle different nodeIds with different permissions', () {
        final existing = [
          ItemPermission(itemIds: ['node1'], rights: ['vfsRead']),
          ItemPermission(itemIds: ['node2'], rights: ['vfsWrite']),
        ];
        final result = ItemPermissionHelper.removePermission(
          existing,
          ['node1'],
          [],
        );
        expect(result.length, equals(1));
        expect(result.first.itemIds, equals(['node2']));
        expect(result.first.rights, equals(['vfsWrite']));
      });
    });
  });
}
