//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorsFetchIotaVpResponseOK {
  /// Returns a new [CorsFetchIotaVpResponseOK] instance.
  CorsFetchIotaVpResponseOK({
    this.corsFetchIotaVpResponseOk,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? corsFetchIotaVpResponseOk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorsFetchIotaVpResponseOK &&
    other.corsFetchIotaVpResponseOk == corsFetchIotaVpResponseOk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (corsFetchIotaVpResponseOk == null ? 0 : corsFetchIotaVpResponseOk!.hashCode);

  @override
  String toString() => 'CorsFetchIotaVpResponseOK[corsFetchIotaVpResponseOk=$corsFetchIotaVpResponseOk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.corsFetchIotaVpResponseOk != null) {
      json[r'corsFetchIotaVpResponseOk'] = this.corsFetchIotaVpResponseOk;
    } else {
      json[r'corsFetchIotaVpResponseOk'] = null;
    }
    return json;
  }

  /// Returns a new [CorsFetchIotaVpResponseOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorsFetchIotaVpResponseOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorsFetchIotaVpResponseOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorsFetchIotaVpResponseOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorsFetchIotaVpResponseOK(
        corsFetchIotaVpResponseOk: mapValueOfType<String>(json, r'corsFetchIotaVpResponseOk'),
      );
    }
    return null;
  }

  static List<CorsFetchIotaVpResponseOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorsFetchIotaVpResponseOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorsFetchIotaVpResponseOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorsFetchIotaVpResponseOK> mapFromJson(dynamic json) {
    final map = <String, CorsFetchIotaVpResponseOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorsFetchIotaVpResponseOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorsFetchIotaVpResponseOK-objects as value to a dart map
  static Map<String, List<CorsFetchIotaVpResponseOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorsFetchIotaVpResponseOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorsFetchIotaVpResponseOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

