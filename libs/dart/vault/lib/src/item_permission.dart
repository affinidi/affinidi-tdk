/// Represents access permissions for items (files/folders).
///
/// Example:
/// ```dart
/// final permission = ItemPermission(
///   itemIds: ['item1', 'item2'],
///   rights: ['vfs-read', 'vfs-write'],
/// );
/// ```
class ItemPermission {
  /// The list of item IDs (files/folders) that have these permissions.
  final List<String> itemIds;

  /// The list of rights granted (e.g., 'vfs-read', 'vfs-write').
  final List<String> rights;

  /// Optional expiration date for the permissions.
  final DateTime? expiresAt;

  /// Creates a new [ItemPermission] instance.
  ///
  /// [itemIds] - The list of item IDs that have these permissions.
  /// [rights] - The list of rights granted.
  /// [expiresAt] - Optional expiration date for the permissions.
  ItemPermission({
    required this.itemIds,
    required this.rights,
    this.expiresAt,
  });

  /// Creates an [ItemPermission] from a map.
  ///
  /// The map should have the following structure:
  /// ```dart
  /// {
  ///   'nodeIds': ['item1', 'item2'],  // Backend uses 'nodeIds' key
  ///   'rights': ['vfs-read', 'vfs-write'],
  /// }
  /// ```
  factory ItemPermission.fromMap(Map<String, dynamic> map) {
    final itemIds = (map['nodeIds'] as List?)?.cast<String>() ?? <String>[];
    final rights =
        (map['rights'] as List?)?.map((r) => r.toString()).toList() ??
            <String>[];
    final expiresAtStr = map['expiresAt'] as String?;
    final expiresAt =
        expiresAtStr != null ? DateTime.parse(expiresAtStr) : null;

    return ItemPermission(
      itemIds: itemIds,
      rights: rights,
      expiresAt: expiresAt,
    );
  }

  /// Converts this [ItemPermission] to a map.
  Map<String, dynamic> toMap() {
    return {
      'nodeIds': itemIds,
      'rights': rights,
      if (expiresAt != null) 'expiresAt': expiresAt!.toIso8601String(),
    };
  }

  /// Creates a copy of this [ItemPermission] with updated fields.
  ItemPermission copyWith({
    List<String>? itemIds,
    List<String>? rights,
    DateTime? expiresAt,
    bool clearExpiresAt = false,
  }) {
    return ItemPermission(
      itemIds: itemIds ?? this.itemIds,
      rights: rights ?? this.rights,
      expiresAt: clearExpiresAt ? null : (expiresAt ?? this.expiresAt),
    );
  }

  /// Checks if this permission matches the given item ID and rights.
  bool matches(String itemId, List<String> rightsToMatch) {
    if (!itemIds.contains(itemId)) return false;
    final sortedRights = rights.toList()..sort();
    final sortedRightsToMatch = rightsToMatch.toList()..sort();
    return sortedRights.length == sortedRightsToMatch.length &&
        sortedRights.every(sortedRightsToMatch.contains);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ItemPermission) return false;
    final sortedRights = rights.toList()..sort();
    final otherSortedRights = other.rights.toList()..sort();
    return itemIds.length == other.itemIds.length &&
        itemIds.every((id) => other.itemIds.contains(id)) &&
        sortedRights.length == otherSortedRights.length &&
        sortedRights.every(otherSortedRights.contains) &&
        expiresAt == other.expiresAt;
  }

  @override
  int get hashCode {
    final sortedRights = rights.toList()..sort();
    return Object.hash(
      Object.hashAll(itemIds..sort()),
      Object.hashAll(sortedRights),
      expiresAt,
    );
  }

  @override
  String toString() {
    return 'ItemPermission(itemIds: $itemIds, rights: $rights, expiresAt: $expiresAt)';
  }
}
