//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateSeedResultDto {
  /// Returns a new [CreateSeedResultDto] instance.
  CreateSeedResultDto({
    this.id,
    this.ari,
  });

  /// id of the seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ARI of the seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ari;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSeedResultDto &&
    other.id == id &&
    other.ari == ari;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (ari == null ? 0 : ari!.hashCode);

  @override
  String toString() => 'CreateSeedResultDto[id=$id, ari=$ari]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSeedResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSeedResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSeedResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSeedResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSeedResultDto(
        id: mapValueOfType<String>(json, r'id'),
        ari: mapValueOfType<String>(json, r'ari'),
      );
    }
    return null;
  }

  static List<CreateSeedResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSeedResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSeedResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSeedResultDto> mapFromJson(dynamic json) {
    final map = <String, CreateSeedResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSeedResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSeedResultDto-objects as value to a dart map
  static Map<String, List<CreateSeedResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSeedResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSeedResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

