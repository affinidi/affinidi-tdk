//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyDto {
  /// Returns a new [PolicyDto] instance.
  PolicyDto({
    this.name,
    this.description,
    this.principalId,
    this.projectId,
    required this.version,
    this.statement = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? principalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  String version;

  List<PolicyStatementDto> statement;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyDto &&
    other.name == name &&
    other.description == description &&
    other.principalId == principalId &&
    other.projectId == projectId &&
    other.version == version &&
    _deepEquality.equals(other.statement, statement);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (principalId == null ? 0 : principalId!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (version.hashCode) +
    (statement.hashCode);

  @override
  String toString() => 'PolicyDto[name=$name, description=$description, principalId=$principalId, projectId=$projectId, version=$version, statement=$statement]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.principalId != null) {
      json[r'principalId'] = this.principalId;
    } else {
      json[r'principalId'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
      json[r'version'] = this.version;
      json[r'statement'] = this.statement;
    return json;
  }

  /// Returns a new [PolicyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyDto(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        principalId: mapValueOfType<String>(json, r'principalId'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        version: mapValueOfType<String>(json, r'version')!,
        statement: PolicyStatementDto.listFromJson(json[r'statement']),
      );
    }
    return null;
  }

  static List<PolicyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyDto> mapFromJson(dynamic json) {
    final map = <String, PolicyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyDto-objects as value to a dart map
  static Map<String, List<PolicyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'version',
    'statement',
  };
}

