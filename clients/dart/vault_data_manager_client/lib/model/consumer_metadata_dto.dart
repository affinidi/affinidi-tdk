//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConsumerMetadataDto {
  /// Returns a new [ConsumerMetadataDto] instance.
  ConsumerMetadataDto({
    required this.nodeId,
    required this.status,
    this.fileCount,
    this.folderCount,
    this.profileCount,
    required this.name,
    required this.consumerId,
    required this.createdAt,
    required this.modifiedAt,
    required this.createdBy,
    required this.modifiedBy,
    required this.description,
    required this.type,
    required this.consumedFileStorage,
  });

  String nodeId;

  NodeStatus status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? folderCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? profileCount;

  String name;

  String consumerId;

  /// [GEN] ISO 8601 string of the creation date/time the entity
  String createdAt;

  /// [GEN] ISO 8601 string of the modification date/time the entity
  String modifiedAt;

  /// [GEN] Identifier of the user who created the entity
  String createdBy;

  /// [GEN] Identifier of the user who last updated the entity
  String modifiedBy;

  /// Description of the node
  String description;

  NodeType type;

  /// Tracks the amount of bytes used by the stored data.
  int consumedFileStorage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsumerMetadataDto &&
    other.nodeId == nodeId &&
    other.status == status &&
    other.fileCount == fileCount &&
    other.folderCount == folderCount &&
    other.profileCount == profileCount &&
    other.name == name &&
    other.consumerId == consumerId &&
    other.createdAt == createdAt &&
    other.modifiedAt == modifiedAt &&
    other.createdBy == createdBy &&
    other.modifiedBy == modifiedBy &&
    other.description == description &&
    other.type == type &&
    other.consumedFileStorage == consumedFileStorage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodeId.hashCode) +
    (status.hashCode) +
    (fileCount == null ? 0 : fileCount!.hashCode) +
    (folderCount == null ? 0 : folderCount!.hashCode) +
    (profileCount == null ? 0 : profileCount!.hashCode) +
    (name.hashCode) +
    (consumerId.hashCode) +
    (createdAt.hashCode) +
    (modifiedAt.hashCode) +
    (createdBy.hashCode) +
    (modifiedBy.hashCode) +
    (description.hashCode) +
    (type.hashCode) +
    (consumedFileStorage.hashCode);

  @override
  String toString() => 'ConsumerMetadataDto[nodeId=$nodeId, status=$status, fileCount=$fileCount, folderCount=$folderCount, profileCount=$profileCount, name=$name, consumerId=$consumerId, createdAt=$createdAt, modifiedAt=$modifiedAt, createdBy=$createdBy, modifiedBy=$modifiedBy, description=$description, type=$type, consumedFileStorage=$consumedFileStorage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodeId'] = this.nodeId;
      json[r'status'] = this.status;
    if (this.fileCount != null) {
      json[r'fileCount'] = this.fileCount;
    } else {
      json[r'fileCount'] = null;
    }
    if (this.folderCount != null) {
      json[r'folderCount'] = this.folderCount;
    } else {
      json[r'folderCount'] = null;
    }
    if (this.profileCount != null) {
      json[r'profileCount'] = this.profileCount;
    } else {
      json[r'profileCount'] = null;
    }
      json[r'name'] = this.name;
      json[r'consumerId'] = this.consumerId;
      json[r'createdAt'] = this.createdAt;
      json[r'modifiedAt'] = this.modifiedAt;
      json[r'createdBy'] = this.createdBy;
      json[r'modifiedBy'] = this.modifiedBy;
      json[r'description'] = this.description;
      json[r'type'] = this.type;
      json[r'consumedFileStorage'] = this.consumedFileStorage;
    return json;
  }

  /// Returns a new [ConsumerMetadataDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsumerMetadataDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsumerMetadataDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsumerMetadataDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsumerMetadataDto(
        nodeId: mapValueOfType<String>(json, r'nodeId')!,
        status: NodeStatus.fromJson(json[r'status'])!,
        fileCount: mapValueOfType<int>(json, r'fileCount'),
        folderCount: mapValueOfType<int>(json, r'folderCount'),
        profileCount: mapValueOfType<int>(json, r'profileCount'),
        name: mapValueOfType<String>(json, r'name')!,
        consumerId: mapValueOfType<String>(json, r'consumerId')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        modifiedAt: mapValueOfType<String>(json, r'modifiedAt')!,
        createdBy: mapValueOfType<String>(json, r'createdBy')!,
        modifiedBy: mapValueOfType<String>(json, r'modifiedBy')!,
        description: mapValueOfType<String>(json, r'description')!,
        type: NodeType.fromJson(json[r'type'])!,
        consumedFileStorage: mapValueOfType<int>(json, r'consumedFileStorage')!,
      );
    }
    return null;
  }

  static List<ConsumerMetadataDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsumerMetadataDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsumerMetadataDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsumerMetadataDto> mapFromJson(dynamic json) {
    final map = <String, ConsumerMetadataDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsumerMetadataDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsumerMetadataDto-objects as value to a dart map
  static Map<String, List<ConsumerMetadataDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsumerMetadataDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsumerMetadataDto.listFromJson(entry.value, growable: growable,);
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
    'createdAt',
    'modifiedAt',
    'createdBy',
    'modifiedBy',
    'description',
    'type',
    'consumedFileStorage',
  };
}

