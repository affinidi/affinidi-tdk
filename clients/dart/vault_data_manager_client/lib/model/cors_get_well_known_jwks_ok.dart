//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorsGetWellKnownJwksOK {
  /// Returns a new [CorsGetWellKnownJwksOK] instance.
  CorsGetWellKnownJwksOK({
    this.corsGetWellKnownJwksOk,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? corsGetWellKnownJwksOk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorsGetWellKnownJwksOK &&
    other.corsGetWellKnownJwksOk == corsGetWellKnownJwksOk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (corsGetWellKnownJwksOk == null ? 0 : corsGetWellKnownJwksOk!.hashCode);

  @override
  String toString() => 'CorsGetWellKnownJwksOK[corsGetWellKnownJwksOk=$corsGetWellKnownJwksOk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.corsGetWellKnownJwksOk != null) {
      json[r'corsGetWellKnownJwksOk'] = this.corsGetWellKnownJwksOk;
    } else {
      json[r'corsGetWellKnownJwksOk'] = null;
    }
    return json;
  }

  /// Returns a new [CorsGetWellKnownJwksOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorsGetWellKnownJwksOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorsGetWellKnownJwksOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorsGetWellKnownJwksOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorsGetWellKnownJwksOK(
        corsGetWellKnownJwksOk: mapValueOfType<String>(json, r'corsGetWellKnownJwksOk'),
      );
    }
    return null;
  }

  static List<CorsGetWellKnownJwksOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorsGetWellKnownJwksOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorsGetWellKnownJwksOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorsGetWellKnownJwksOK> mapFromJson(dynamic json) {
    final map = <String, CorsGetWellKnownJwksOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorsGetWellKnownJwksOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorsGetWellKnownJwksOK-objects as value to a dart map
  static Map<String, List<CorsGetWellKnownJwksOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorsGetWellKnownJwksOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorsGetWellKnownJwksOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

