import '../item_permission.dart';
import '../permissions.dart';

/// Helper class for managing item permissions.
///
/// This class provides utilities for:
/// - Deduplicating and merging permission groups
/// - Converting between Permissions enum and rights strings
/// - Processing permission updates and revocations
class ItemPermissionHelper {
  /// Deduplicates and merges a list of [ItemPermission]s.
  static List<ItemPermission> dedupePermissions(
      List<ItemPermission> permissions) {
    if (permissions.isEmpty) return permissions;

    final uniquePermissions = Set<ItemPermission>.from(permissions);

    final groupedByItemIds = <String, List<ItemPermission>>{};
    for (final perm in uniquePermissions) {
      final sortedItemIds = perm.itemIds.toList()..sort();
      final key = sortedItemIds.join(',');
      groupedByItemIds.putIfAbsent(key, () => []).add(perm);
    }

    return groupedByItemIds.values.map(_mergePermissionGroup).toList();
  }

  static ItemPermission _mergePermissionGroup(List<ItemPermission> group) {
    if (group.length == 1) return group.first;

    final allRights = <String>{};
    DateTime? earliestExpiresAt;

    for (final perm in group) {
      allRights.addAll(perm.rights);
      if (perm.expiresAt != null) {
        earliestExpiresAt = earliestExpiresAt == null ||
                perm.expiresAt!.isBefore(earliestExpiresAt)
            ? perm.expiresAt
            : earliestExpiresAt;
      }
    }

    return ItemPermission(
      itemIds: group.first.itemIds,
      rights: allRights.toList()..sort(),
      expiresAt: earliestExpiresAt,
    );
  }

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
}
