/// Data structure for raw file information
class FileData {
  /// Creates a new instance of [FileData]
  const FileData({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    this.parentId,
  });

  /// The file ID
  final String id;

  /// The file name
  final String name;

  /// Creation timestamp
  final DateTime createdAt;

  /// Last modification timestamp
  final DateTime modifiedAt;

  /// Parent folder ID, if any
  final String? parentId;
}
