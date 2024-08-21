//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConstraintsStatuses {
  /// Returns a new [ConstraintsStatuses] instance.
  ConstraintsStatuses({
    this.active,
    this.suspended,
    this.revoked,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PdStatus? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PdStatus? suspended;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PdStatus? revoked;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConstraintsStatuses &&
    other.active == active &&
    other.suspended == suspended &&
    other.revoked == revoked;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (active == null ? 0 : active!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode) +
    (revoked == null ? 0 : revoked!.hashCode);

  @override
  String toString() => 'ConstraintsStatuses[active=$active, suspended=$suspended, revoked=$revoked]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    if (this.revoked != null) {
      json[r'revoked'] = this.revoked;
    } else {
      json[r'revoked'] = null;
    }
    return json;
  }

  /// Returns a new [ConstraintsStatuses] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConstraintsStatuses? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConstraintsStatuses[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConstraintsStatuses[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConstraintsStatuses(
        active: PdStatus.fromJson(json[r'active']),
        suspended: PdStatus.fromJson(json[r'suspended']),
        revoked: PdStatus.fromJson(json[r'revoked']),
      );
    }
    return null;
  }

  static List<ConstraintsStatuses> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConstraintsStatuses>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConstraintsStatuses.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConstraintsStatuses> mapFromJson(dynamic json) {
    final map = <String, ConstraintsStatuses>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConstraintsStatuses.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConstraintsStatuses-objects as value to a dart map
  static Map<String, List<ConstraintsStatuses>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConstraintsStatuses>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConstraintsStatuses.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

