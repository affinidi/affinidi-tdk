//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateNodeInput {
  /// Returns a new [CreateNodeInput] instance.
  CreateNodeInput({
    required this.name,
    required this.type,
    this.description,
    this.parentNodeId,
    this.edekInfo,
    this.dek,
    this.metadata,
  });

  /// Name of the item
  String name;

  NodeType type;

  /// description of profile if creating a new profile
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// parent node id, if not provided then root element is used
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? parentNodeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  EdekInfo? edekInfo;

  /// A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE]
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dek;

  /// metadata of the node in stringified json format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateNodeInput &&
    other.name == name &&
    other.type == type &&
    other.description == description &&
    other.parentNodeId == parentNodeId &&
    other.edekInfo == edekInfo &&
    other.dek == dek &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (parentNodeId == null ? 0 : parentNodeId!.hashCode) +
    (edekInfo == null ? 0 : edekInfo!.hashCode) +
    (dek == null ? 0 : dek!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CreateNodeInput[name=$name, type=$type, description=$description, parentNodeId=$parentNodeId, edekInfo=$edekInfo, dek=$dek, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.parentNodeId != null) {
      json[r'parentNodeId'] = this.parentNodeId;
    } else {
      json[r'parentNodeId'] = null;
    }
    if (this.edekInfo != null) {
      json[r'edekInfo'] = this.edekInfo;
    } else {
      json[r'edekInfo'] = null;
    }
    if (this.dek != null) {
      json[r'dek'] = this.dek;
    } else {
      json[r'dek'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CreateNodeInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateNodeInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateNodeInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateNodeInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateNodeInput(
        name: mapValueOfType<String>(json, r'name')!,
        type: NodeType.fromJson(json[r'type'])!,
        description: mapValueOfType<String>(json, r'description'),
        parentNodeId: mapValueOfType<String>(json, r'parentNodeId'),
        edekInfo: EdekInfo.fromJson(json[r'edekInfo']),
        dek: mapValueOfType<String>(json, r'dek'),
        metadata: mapValueOfType<String>(json, r'metadata'),
      );
    }
    return null;
  }

  static List<CreateNodeInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateNodeInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateNodeInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateNodeInput> mapFromJson(dynamic json) {
    final map = <String, CreateNodeInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateNodeInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateNodeInput-objects as value to a dart map
  static Map<String, List<CreateNodeInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateNodeInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateNodeInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
  };
}

