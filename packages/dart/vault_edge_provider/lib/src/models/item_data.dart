/// Item types that can be stored in the vault
enum ItemType {
  /// A file item
  file,

  /// A folder item
  folder,
}

/// Data structure for raw item information (file or folder)
class ItemData {
  /// Creates a new instance of [ItemData]
  const ItemData({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    required this.itemType,
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

  /// The type of item (file or folder)
  final ItemType itemType;

  /// Parent folder ID, if any
  final String? parentId;

  /// Convenience getter for checking if this is a folder
  bool get isFolder => itemType == ItemType.folder;

  /// Convenience getter for checking if this is a file
  bool get isFile => itemType == ItemType.file;
}
