/// Data structure for raw folder information
class FolderData {
  /// Creates a new instance of [FolderData]
  const FolderData({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    this.parentId,
  });

  /// The folder ID
  final String id;

  /// The folder name
  final String name;

  /// Creation timestamp
  final DateTime createdAt;

  /// Last modification timestamp
  final DateTime modifiedAt;

  /// Parent folder ID, if any
  final String? parentId;
}
