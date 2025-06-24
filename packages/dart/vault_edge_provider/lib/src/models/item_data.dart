/// Data structure for raw item information (file or folder)
class ItemData {
  /// Creates a new instance of [ItemData]
  const ItemData({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    required this.isFolder,
    this.parentId,
  });

  /// The item ID
  final String id;

  /// The item name
  final String name;

  /// Creation timestamp
  final DateTime createdAt;

  /// Last modification timestamp
  final DateTime modifiedAt;

  /// Whether this item is a folder
  final bool isFolder;

  /// Parent folder ID, if any
  final String? parentId;
}
