import '../item_permission.dart';
import '../permissions.dart';

/// Helper class for managing item permissions.
///
/// This class provides utilities for:
/// - Converting between Permissions enum and rights strings
/// - Processing permission updates and revocations
class ItemPermissionHelper {
  /// Converts a list of [Permissions] enum values to a list of rights strings.
  static List<String> permissionsListToRightsList(
      List<Permissions> permissions) {
    if (permissions.isEmpty) return [];

    final rights = <String>{};
    for (final permission in permissions) {
      switch (permission) {
        case Permissions.read:
          rights.add('vfsRead');
          break;
        case Permissions.write:
          rights.add('vfsWrite');
          break;
        case Permissions.all:
          rights.addAll(['vfsRead', 'vfsWrite']);
          break;
      }
    }
    return rights.toList();
  }

  /// Converts a list of rights strings to Permissions enum.
  static Permissions rightsListToPermissions(List<String> rightsList) {
    final sortedRights = rightsList.toList()..sort();
    if (sortedRights.length == 2 &&
        sortedRights.contains('vfsRead') &&
        sortedRights.contains('vfsWrite')) {
      return Permissions.all;
    } else if (sortedRights.contains('vfsWrite')) {
      return Permissions.write;
    } else {
      return Permissions.read;
    }
  }

  /// Processes permission revocation for a specific item.
  /// Returns the updated list of permission groups after revocation.
  static List<ItemPermission> processRevocation(
    List<ItemPermission> existingPermissions,
    String itemId,
    List<String> rightsToRevoke,
  ) {
    if (rightsToRevoke.isEmpty || existingPermissions.isEmpty) {
      return existingPermissions;
    }

    final rightsToRevokeSet = rightsToRevoke.toSet();
    final updatedPermissions = <ItemPermission>[];

    for (final perm in existingPermissions) {
      if (!perm.itemIds.contains(itemId)) {
        updatedPermissions.add(perm);
        continue;
      }

      final remainingRights = perm.rights
          .where((right) => !rightsToRevokeSet.contains(right))
          .toList();

      if (perm.itemIds.length == 1) {
        if (remainingRights.isNotEmpty) {
          updatedPermissions.add(perm.copyWith(rights: remainingRights));
        }
      } else {
        final otherItemIds = perm.itemIds.where((id) => id != itemId).toList();

        if (otherItemIds.isNotEmpty) {
          updatedPermissions.add(perm.copyWith(itemIds: otherItemIds));
        }

        if (remainingRights.isNotEmpty) {
          updatedPermissions.add(ItemPermission(
            itemIds: [itemId],
            rights: remainingRights,
            expiresAt: perm.expiresAt,
          ));
        }
      }
    }

    return updatedPermissions;
  }

  /// Builds permission groups for API calls from a list of ItemPermissions.
  /// Returns a list of permission groups in the format expected by the API.
  static List<({List<String> itemIds, Permissions permissions})>
      buildPermissionGroups(List<ItemPermission> permissions) {
    return permissions
        .map((perm) => (
              itemIds: perm.itemIds,
              permissions: rightsListToPermissions(perm.rights),
            ))
        .toList();
  }

  /// Adds or updates permissions for the given item IDs.
  ///
  /// [existingPermissions] - Current list of permissions
  /// [itemIds] - Item IDs to add/update permissions for
  /// [rights] - Rights to grant (e.g., ['vfsRead', 'vfsWrite'])
  static List<ItemPermission> addPermission(
    List<ItemPermission> existingPermissions,
    List<String> itemIds,
    List<String> rights,
  ) {
    final updatedPermissions = <ItemPermission>[];
    final itemIdsSet = itemIds.toSet();
    final rightsSet = rights.toSet();

    for (final perm in existingPermissions) {
      final hasOverlap = perm.itemIds.any(itemIdsSet.contains);

      if (!hasOverlap) {
        updatedPermissions.add(perm);
      } else {
        final overlappingIds = perm.itemIds.where(itemIdsSet.contains).toList();
        final nonOverlappingIds =
            perm.itemIds.where((id) => !itemIdsSet.contains(id)).toList();

        if (nonOverlappingIds.isNotEmpty) {
          updatedPermissions.add(perm.copyWith(itemIds: nonOverlappingIds));
        }

        final mergedRights = {...perm.rights, ...rightsSet}.toList()..sort();
        if (mergedRights.isNotEmpty) {
          updatedPermissions.add(ItemPermission(
            itemIds: overlappingIds,
            rights: mergedRights,
            expiresAt: perm.expiresAt,
          ));
        }
      }
    }

    final existingItemIds =
        existingPermissions.expand((perm) => perm.itemIds).toSet();
    final newItemIds =
        itemIds.where((id) => !existingItemIds.contains(id)).toList();

    if (newItemIds.isNotEmpty && rightsSet.isNotEmpty) {
      updatedPermissions.add(ItemPermission(
        itemIds: newItemIds,
        rights: rightsSet.toList()..sort(),
      ));
    }

    return updatedPermissions;
  }

  /// Removes permissions for the given item IDs and rights.
  ///
  /// [existingPermissions] - Current list of permissions
  /// [itemIds] - Item IDs to remove permissions from
  /// [rights] - Rights to remove (empty list removes all rights for these items)
  /// Returns updated list of permissions
  static List<ItemPermission> removePermission(
    List<ItemPermission> existingPermissions,
    List<String> itemIds,
    List<String> rights,
  ) {
    if (itemIds.isEmpty) return existingPermissions;

    final itemIdsSet = itemIds.toSet();
    final rightsSet = rights.toSet();
    final removeAllRights = rightsSet.isEmpty;

    final updatedPermissions = <ItemPermission>[];

    for (final perm in existingPermissions) {
      final hasOverlap = perm.itemIds.any(itemIdsSet.contains);

      if (!hasOverlap) {
        updatedPermissions.add(perm);
        continue;
      }

      final overlappingIds = perm.itemIds.where(itemIdsSet.contains).toList();
      final nonOverlappingIds =
          perm.itemIds.where((id) => !itemIdsSet.contains(id)).toList();

      if (nonOverlappingIds.isNotEmpty) {
        updatedPermissions.add(perm.copyWith(itemIds: nonOverlappingIds));
      }

      if (removeAllRights) {
        continue;
      } else {
        final remainingRights =
            perm.rights.where((right) => !rightsSet.contains(right)).toList();

        if (remainingRights.isNotEmpty) {
          updatedPermissions.add(ItemPermission(
            itemIds: overlappingIds,
            rights: remainingRights,
            expiresAt: perm.expiresAt,
          ));
        }
      }
    }

    return updatedPermissions;
  }
}
