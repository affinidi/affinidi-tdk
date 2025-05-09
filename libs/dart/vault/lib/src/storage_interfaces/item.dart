/// Base class for storage items.
abstract class Item {
  /// Unique identifier of the item.
  String get id;

  /// Name of the item.
  String get name;

  /// Creation timestamp of the item.
  DateTime get createdAt;

  /// Last modification timestamp of the item.
  DateTime get modifiedAt;

  /// ID of the parent folder, if any.
  String? get parentId;
}

/// Represents a file in the storage system.
class File extends Item {
  /// Creates a new instance of [File].
  ///
  /// [id] - Unique identifier of the file
  /// [name] - Name of the file
  /// [createdAt] - Creation timestamp
  /// [modifiedAt] - Last modification timestamp
  /// [parentId] - ID of the parent folder
  File({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    this.parentId,
  });

  @override
  final String id;

  @override
  final String name;

  @override
  final DateTime createdAt;

  @override
  final DateTime modifiedAt;

  @override
  final String? parentId;
}

/// Represents a folder in the storage system.
class Folder extends Item {
  /// Creates a new instance of [Folder].
  ///
  /// [id] - Unique identifier of the folder
  /// [name] - Name of the folder
  /// [createdAt] - Creation timestamp
  /// [modifiedAt] - Last modification timestamp
  /// [parentId] - ID of the parent folder
  Folder({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.modifiedAt,
    this.parentId,
  });

  @override
  final String id;

  @override
  final String name;

  @override
  final DateTime createdAt;

  @override
  final DateTime modifiedAt;

  @override
  final String? parentId;
}
