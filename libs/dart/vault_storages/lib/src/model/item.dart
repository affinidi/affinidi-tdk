import 'node_type.dart';

/// Represents a storage item (file or folder) in the system with its metadata.
class Item {
  /// Display name of the item
  final String name;

  /// Optional description of the item
  final String? description;

  /// Timestamp when the item was created
  final DateTime createdAt;

  /// Timestamp when the item was last modified
  final DateTime modifiedAt;

  /// Identifier of the user who created this item
  final String createdBy;

  /// Identifier of the user who last modified this item
  final String modifiedBy;

  /// Number of files contained within this item
  final int? fileCount;

  /// Number of folders contained within this item
  final int? folderCount;

  /// Identifier of the parent node
  final String? parentNodeId;

  /// Type of the item (FILE, FOLDER, PROFILE, etc.)
  final NodeType type;

  /// Unique identifier for this item
  final String id;

  /// Creates a new [Item] instance.
  Item({
    required this.name,
    this.description,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.fileCount,
    required this.folderCount,
    required this.parentNodeId,
    required this.type,
    required this.id,
  });

  /// Creates an [Item] instance from a JSON map.
  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      name: json['name'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      modifiedAt: DateTime.parse(json['modifiedAt'] as String),
      createdBy: json['createdBy'] as String,
      modifiedBy: json['modifiedBy'] as String,
      fileCount: json['fileCount'] as int?,
      folderCount: json['folderCount'] as int?,
      parentNodeId: json['parentNodeId'] as String?,
      type: NodeType.values
          .firstWhere((e) => e.toString() == 'NodeType.${json['type']}'),
      id: json['nodeId'] as String,
    );
  }

  /// Converts this [Item] instance to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'createdAt': createdAt,
      'modifiedAt': modifiedAt,
      'createdBy': createdBy,
      'modifiedBy': modifiedBy,
      'fileCount': fileCount,
      'folderCount': folderCount,
      'parentNodeId': parentNodeId,
      'type': type.name,
      'nodeId': id,
    };
  }
}
