import '../affinidi_tdk_vault.dart';
import 'exceptions/tdk_exception_type.dart';
import 'helpers/item_permission_helper.dart';

/// Represents an item permissions policy that can be edited locally
class ItemPermissionsPolicy {
  List<ItemPermission> _permissions;

  /// Creates an empty [ItemPermissionsPolicy].
  ItemPermissionsPolicy.empty() : _permissions = [];

  /// Creates an [ItemPermissionsPolicy]
  factory ItemPermissionsPolicy.fromAccessMap(Map<String, dynamic> accessMap) {
    final permissionsList = accessMap['permissions'] as List?;
    final permissions = permissionsList != null
        ? permissionsList
            .map((perm) => ItemPermission.fromMap(perm as Map<String, dynamic>))
            .toList()
        : <ItemPermission>[];

    return ItemPermissionsPolicy._(permissions);
  }

  /// Creates an [ItemPermissionsPolicy] from a list of [ItemPermission].
  factory ItemPermissionsPolicy.fromPermissions(
      List<ItemPermission> permissions) {
    return ItemPermissionsPolicy._(List.from(permissions));
  }

  ItemPermissionsPolicy._(this._permissions);

  /// Gets the current permissions list.
  List<ItemPermission> get permissions => List.unmodifiable(_permissions);

  /// Adds or updates permissions for the given item IDs.
  ///
  /// [itemIds] - Item IDs to add/update permissions for
  /// [permissions] - Permissions to grant
  /// [expiresAt] - Optional expiration date/time for the permissions.
  ItemPermissionsPolicy addPermission(
    List<String> itemIds,
    List<Permissions> permissions, {
    DateTime? expiresAt,
  }) {
    if (expiresAt != null && !expiresAt.isUtc) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'expiresAt must be in UTC',
          code: TdkExceptionType.invalidTimeFrame.code,
        ),
        StackTrace.current,
      );
    }
    final rights =
        ItemPermissionHelper.permissionsListToRightsList(permissions);
    _permissions = ItemPermissionHelper.addPermission(
      _permissions,
      itemIds,
      rights,
      expiresAt: expiresAt,
    );
    return this;
  }

  /// Removes permissions for the given item IDs.
  ///
  /// [itemIds] - Item IDs to remove permissions from
  /// [permissions] - Permissions to remove
  ItemPermissionsPolicy removePermission(
    List<String> itemIds,
    List<Permissions> permissions,
  ) {
    final rights = permissions.isEmpty
        ? <String>[]
        : ItemPermissionHelper.permissionsListToRightsList(permissions);
    _permissions =
        ItemPermissionHelper.removePermission(_permissions, itemIds, rights);
    return this;
  }

  /// Builds permission groups
  List<({List<String> itemIds, Permissions permissions, DateTime? expiresAt})>
      buildPermissionGroups() {
    return ItemPermissionHelper.buildPermissionGroups(_permissions);
  }

  /// Gets all item IDs that have permissions.
  List<String> getAllItemIds() {
    return _permissions.expand((perm) => perm.itemIds).toSet().toList();
  }

  /// Checks if the given item ID has any permissions.
  bool hasPermission(String itemId) {
    return _permissions.any((perm) => perm.itemIds.contains(itemId));
  }

  /// Gets permissions for a specific item ID.
  ItemPermission? getPermissionForItem(String itemId) {
    return _permissions
        .where((perm) => perm.itemIds.contains(itemId))
        .firstOrNull;
  }

  /// Clears all permissions.
  void clear() {
    _permissions = [];
  }
}
