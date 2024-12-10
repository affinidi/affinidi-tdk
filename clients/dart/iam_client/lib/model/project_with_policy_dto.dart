//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectWithPolicyDto {
  /// Returns a new [ProjectWithPolicyDto] instance.
  ProjectWithPolicyDto({
    required this.id,
    required this.name,
    required this.policy,
  });

  String id;

  String name;

  PolicyDto policy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectWithPolicyDto &&
    other.id == id &&
    other.name == name &&
    other.policy == policy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (policy.hashCode);

  @override
  String toString() => 'ProjectWithPolicyDto[id=$id, name=$name, policy=$policy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'policy'] = this.policy;
    return json;
  }

  /// Returns a new [ProjectWithPolicyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectWithPolicyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectWithPolicyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectWithPolicyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectWithPolicyDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        policy: PolicyDto.fromJson(json[r'policy'])!,
      );
    }
    return null;
  }

  static List<ProjectWithPolicyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectWithPolicyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectWithPolicyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectWithPolicyDto> mapFromJson(dynamic json) {
    final map = <String, ProjectWithPolicyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectWithPolicyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectWithPolicyDto-objects as value to a dart map
  static Map<String, List<ProjectWithPolicyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectWithPolicyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectWithPolicyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'policy',
  };
}

