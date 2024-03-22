//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetSeedResultDto {
  /// Returns a new [GetSeedResultDto] instance.
  GetSeedResultDto({
    this.id,
    this.projectId,
    this.ari,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  /// ARI of the seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ari;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetSeedResultDto &&
    other.id == id &&
    other.projectId == projectId &&
    other.ari == ari;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (ari == null ? 0 : ari!.hashCode);

  @override
  String toString() => 'GetSeedResultDto[id=$id, projectId=$projectId, ari=$ari]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
    return json;
  }

  /// Returns a new [GetSeedResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetSeedResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetSeedResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetSeedResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetSeedResultDto(
        id: mapValueOfType<String>(json, r'id'),
        projectId: mapValueOfType<String>(json, r'projectId'),
        ari: mapValueOfType<String>(json, r'ari'),
      );
    }
    return null;
  }

  static List<GetSeedResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetSeedResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetSeedResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetSeedResultDto> mapFromJson(dynamic json) {
    final map = <String, GetSeedResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetSeedResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetSeedResultDto-objects as value to a dart map
  static Map<String, List<GetSeedResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetSeedResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetSeedResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

