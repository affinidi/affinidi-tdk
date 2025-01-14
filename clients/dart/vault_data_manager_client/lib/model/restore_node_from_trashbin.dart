//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RestoreNodeFromTrashbin {
  /// Returns a new [RestoreNodeFromTrashbin] instance.
  RestoreNodeFromTrashbin({
    this.restoreToProfileId,
  });

  /// The base64 encoded nodeId of the profile which is base64 encoded, to which node will be restored
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? restoreToProfileId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RestoreNodeFromTrashbin &&
    other.restoreToProfileId == restoreToProfileId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (restoreToProfileId == null ? 0 : restoreToProfileId!.hashCode);

  @override
  String toString() => 'RestoreNodeFromTrashbin[restoreToProfileId=$restoreToProfileId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.restoreToProfileId != null) {
      json[r'restoreToProfileId'] = this.restoreToProfileId;
    } else {
      json[r'restoreToProfileId'] = null;
    }
    return json;
  }

  /// Returns a new [RestoreNodeFromTrashbin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RestoreNodeFromTrashbin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RestoreNodeFromTrashbin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RestoreNodeFromTrashbin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RestoreNodeFromTrashbin(
        restoreToProfileId: mapValueOfType<String>(json, r'restoreToProfileId'),
      );
    }
    return null;
  }

  static List<RestoreNodeFromTrashbin> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RestoreNodeFromTrashbin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RestoreNodeFromTrashbin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RestoreNodeFromTrashbin> mapFromJson(dynamic json) {
    final map = <String, RestoreNodeFromTrashbin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RestoreNodeFromTrashbin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RestoreNodeFromTrashbin-objects as value to a dart map
  static Map<String, List<RestoreNodeFromTrashbin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RestoreNodeFromTrashbin>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RestoreNodeFromTrashbin.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

