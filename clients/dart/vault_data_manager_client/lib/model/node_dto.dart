//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NodeDto {
  /// Returns a new [NodeDto] instance.
  NodeDto({
    required this.nodeId,
    required this.status,
    this.fileCount,
    this.profileCount,
    this.folderCount,
    this.vcCount,
    required this.name,
    required this.consumerId,
    required this.parentNodeId,
    required this.profileId,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.description,
    required this.type,
    this.link,
    this.schema,
    this.consumedFileStorage,
    this.edekInfo,
    this.metadata,
  });

  /// A unique identifier of current node
  String nodeId;

  NodeStatus status;

  /// number of files in current node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileCount;

  /// number of profiles in current node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? profileCount;

  /// number of folders in current node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? folderCount;

  /// number of vcCount in current node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vcCount;

  /// display name of current node
  String name;

  /// unique identifier for consumer
  String consumerId;

  /// parent node path
  String parentNodeId;

  /// A unique identifier of profile, under which current node is created
  String profileId;

  /// creation date/time of the node
  String createdAt;

  /// modification date/time of the node
  String modifiedAt;

  /// Identifier of the user who created the node
  String createdBy;

  /// Identifier of the user who last updated the node
  String modifiedBy;

  /// Description of the node
  String description;

  NodeType type;

  /// id of the file, used for FILE node only
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  /// name of the schema, used for PROFILE node only
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? schema;

  /// amount of bytes used by the stored data, used for ROOT_ELEMENT only for now
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? consumedFileStorage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdekInfo? edekInfo;

  /// A JSON string format containing metadata of the node
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NodeDto &&
    other.nodeId == nodeId &&
    other.status == status &&
    other.fileCount == fileCount &&
    other.profileCount == profileCount &&
    other.folderCount == folderCount &&
    other.vcCount == vcCount &&
    other.name == name &&
    other.consumerId == consumerId &&
    other.parentNodeId == parentNodeId &&
    other.profileId == profileId &&
    other.createdAt == createdAt &&
    other.modifiedAt == modifiedAt &&
    other.createdBy == createdBy &&
    other.modifiedBy == modifiedBy &&
    other.description == description &&
    other.type == type &&
    other.link == link &&
    other.schema == schema &&
    other.consumedFileStorage == consumedFileStorage &&
    other.edekInfo == edekInfo &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodeId.hashCode) +
    (status.hashCode) +
    (fileCount == null ? 0 : fileCount!.hashCode) +
    (profileCount == null ? 0 : profileCount!.hashCode) +
    (folderCount == null ? 0 : folderCount!.hashCode) +
    (vcCount == null ? 0 : vcCount!.hashCode) +
    (name.hashCode) +
    (consumerId.hashCode) +
    (parentNodeId.hashCode) +
    (profileId.hashCode) +
    (createdAt.hashCode) +
    (modifiedAt.hashCode) +
    (createdBy.hashCode) +
    (modifiedBy.hashCode) +
    (description.hashCode) +
    (type.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (schema == null ? 0 : schema!.hashCode) +
    (consumedFileStorage == null ? 0 : consumedFileStorage!.hashCode) +
    (edekInfo == null ? 0 : edekInfo!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'NodeDto[nodeId=$nodeId, status=$status, fileCount=$fileCount, profileCount=$profileCount, folderCount=$folderCount, vcCount=$vcCount, name=$name, consumerId=$consumerId, parentNodeId=$parentNodeId, profileId=$profileId, createdAt=$createdAt, modifiedAt=$modifiedAt, createdBy=$createdBy, modifiedBy=$modifiedBy, description=$description, type=$type, link=$link, schema=$schema, consumedFileStorage=$consumedFileStorage, edekInfo=$edekInfo, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodeId'] = this.nodeId;
      json[r'status'] = this.status;
    if (this.fileCount != null) {
      json[r'fileCount'] = this.fileCount;
    } else {
      json[r'fileCount'] = null;
    }
    if (this.profileCount != null) {
      json[r'profileCount'] = this.profileCount;
    } else {
      json[r'profileCount'] = null;
    }
    if (this.folderCount != null) {
      json[r'folderCount'] = this.folderCount;
    } else {
      json[r'folderCount'] = null;
    }
    if (this.vcCount != null) {
      json[r'vcCount'] = this.vcCount;
    } else {
      json[r'vcCount'] = null;
    }
      json[r'name'] = this.name;
      json[r'consumerId'] = this.consumerId;
      json[r'parentNodeId'] = this.parentNodeId;
      json[r'profileId'] = this.profileId;
      json[r'createdAt'] = this.createdAt;
      json[r'modifiedAt'] = this.modifiedAt;
      json[r'createdBy'] = this.createdBy;
      json[r'modifiedBy'] = this.modifiedBy;
      json[r'description'] = this.description;
      json[r'type'] = this.type;
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
    if (this.schema != null) {
      json[r'schema'] = this.schema;
    } else {
      json[r'schema'] = null;
    }
    if (this.consumedFileStorage != null) {
      json[r'consumedFileStorage'] = this.consumedFileStorage;
    } else {
      json[r'consumedFileStorage'] = null;
    }
    if (this.edekInfo != null) {
      json[r'edekInfo'] = this.edekInfo;
    } else {
      json[r'edekInfo'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [NodeDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodeDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NodeDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NodeDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodeDto(
        nodeId: mapValueOfType<String>(json, r'nodeId')!,
        status: NodeStatus.fromJson(json[r'status'])!,
        fileCount: mapValueOfType<int>(json, r'fileCount'),
        profileCount: mapValueOfType<int>(json, r'profileCount'),
        folderCount: mapValueOfType<int>(json, r'folderCount'),
        vcCount: mapValueOfType<int>(json, r'vcCount'),
        name: mapValueOfType<String>(json, r'name')!,
        consumerId: mapValueOfType<String>(json, r'consumerId')!,
        parentNodeId: mapValueOfType<String>(json, r'parentNodeId')!,
        profileId: mapValueOfType<String>(json, r'profileId')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        modifiedAt: mapValueOfType<String>(json, r'modifiedAt')!,
        createdBy: mapValueOfType<String>(json, r'createdBy')!,
        modifiedBy: mapValueOfType<String>(json, r'modifiedBy')!,
        description: mapValueOfType<String>(json, r'description')!,
        type: NodeType.fromJson(json[r'type'])!,
        link: mapValueOfType<String>(json, r'link'),
        schema: mapValueOfType<String>(json, r'schema'),
        consumedFileStorage: mapValueOfType<int>(json, r'consumedFileStorage'),
        edekInfo: EdekInfo.fromJson(json[r'edekInfo']),
        metadata: mapValueOfType<String>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<NodeDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodeDto> mapFromJson(dynamic json) {
    final map = <String, NodeDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodeDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodeDto-objects as value to a dart map
  static Map<String, List<NodeDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NodeDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodeDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nodeId',
    'status',
    'name',
    'consumerId',
    'parentNodeId',
    'profileId',
    'createdAt',
    'modifiedAt',
    'createdBy',
    'modifiedBy',
    'description',
    'type',
  };
}

