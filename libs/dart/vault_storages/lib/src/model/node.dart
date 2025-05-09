import 'node_status.dart';
import 'node_type.dart';

/// Represents information for a Node
class Metadata {
  /// URI of the node's picture
  final String? pictureURI;

  /// Creates a new metadata instance.
  Metadata({
    this.pictureURI,
  });

  /// Creates a [Metadata] from a JSON map.
  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      pictureURI: json['pictureURI'] as String?,
    );
  }

  /// Converts this [Metadata] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'pictureURI': pictureURI,
    };
  }
}

/// Represents a node in the storage.
/// A node can be a file, folder, credential, or other storage elements.
class Node {
  /// Name of the node
  final String name;

  /// Optional description of the node
  final String? description;

  /// Current status of the node (e.g., INITIALIZED, CREATED, etc.)
  final NodeStatus status;

  /// ISO 8601 timestamp when the node was created
  final String createdAt;

  /// ISO 8601 timestamp when the node was last modified
  final String modifiedAt;

  /// Identifier of the user who created the node
  final String createdBy;

  /// Identifier of the user who last modified the node
  final String modifiedBy;

  /// Identifier of the consumer who owns this node
  final String consumerId;

  /// Number of files contained within this node
  final int? fileCount;

  /// Number of profiles contained within this node
  final int? profileCount;

  /// Number of folders contained within this node
  final int? folderCount;

  /// Optional schema definition for the node
  final String? schema;

  /// Identifier of the parent node
  final String? parentNodeId;

  /// Identifier of the profile this node belongs to
  final String profileId;

  /// Type of the node (e.g., FILE, FOLDER, VC, etc.)
  final NodeType type;

  /// Unique identifier for this node
  final String nodeId;

  /// Encryption/decryption key information
  final Map<String, String>? edekInfo;

  /// Metadata associated with this node
  final Metadata? metadata;

  /// Creates a new node instance.
  Node({
    required this.name,
    this.description,
    required this.status,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.consumerId,
    required this.fileCount,
    required this.profileCount,
    required this.folderCount,
    this.schema,
    this.parentNodeId,
    required this.profileId,
    required this.type,
    required this.nodeId,
    this.edekInfo,
    this.metadata,
  });

  /// Creates a [Node] from a JSON map.
  factory Node.fromJson(Map<String, dynamic> json) {
    return Node(
      type: NodeType.values.byName(json['type'] as String),
      name: json['name'] as String,
      description: json['description'] as String?,
      status: NodeStatus.values.byName(json['status'] as String),
      createdAt: json['createdAt'] as String,
      modifiedAt: json['modifiedAt'] as String,
      createdBy: json['createdBy'] as String,
      modifiedBy: json['modifiedBy'] as String,
      consumerId: json['consumerId'] as String,
      fileCount: json['fileCount'] as int,
      profileCount: json['profileCount'] as int,
      folderCount: json['folderCount'] as int,
      schema: json['schema'] as String?,
      parentNodeId: json['parentNodeId'] as String?,
      profileId: json['profileId'] as String,
      nodeId: json['nodeId'] as String,
      edekInfo: json['edekInfo'] as Map<String, String>?,
      metadata: json['metadata'] != null
          ? Metadata.fromJson(json['metadata'] as Map<String, dynamic>)
          : null,
    );
  }

  /// Converts this [Node] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'status': status,
      'createdAt': createdAt,
      'modifiedAt': modifiedAt,
      'createdBy': createdBy,
      'modifiedBy': modifiedBy,
      'consumerId': consumerId,
      'fileCount': fileCount,
      'profileCount': profileCount,
      'folderCount': folderCount,
      'schema': schema,
      'parentNodeId': parentNodeId,
      'profileId': profileId,
      'type': type,
      'nodeId': nodeId,
      'edekInfo': edekInfo,
      'metadata': metadata?.toJson(),
    };
  }
}
