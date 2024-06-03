//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorsIotOidc4vpcallbackOK {
  /// Returns a new [CorsIotOidc4vpcallbackOK] instance.
  CorsIotOidc4vpcallbackOK({
    this.corsIotOidc4vpcallbackOk,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? corsIotOidc4vpcallbackOk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorsIotOidc4vpcallbackOK &&
    other.corsIotOidc4vpcallbackOk == corsIotOidc4vpcallbackOk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (corsIotOidc4vpcallbackOk == null ? 0 : corsIotOidc4vpcallbackOk!.hashCode);

  @override
  String toString() => 'CorsIotOidc4vpcallbackOK[corsIotOidc4vpcallbackOk=$corsIotOidc4vpcallbackOk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.corsIotOidc4vpcallbackOk != null) {
      json[r'corsIotOidc4vpcallbackOk'] = this.corsIotOidc4vpcallbackOk;
    } else {
      json[r'corsIotOidc4vpcallbackOk'] = null;
    }
    return json;
  }

  /// Returns a new [CorsIotOidc4vpcallbackOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorsIotOidc4vpcallbackOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorsIotOidc4vpcallbackOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorsIotOidc4vpcallbackOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorsIotOidc4vpcallbackOK(
        corsIotOidc4vpcallbackOk: mapValueOfType<String>(json, r'corsIotOidc4vpcallbackOk'),
      );
    }
    return null;
  }

  static List<CorsIotOidc4vpcallbackOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorsIotOidc4vpcallbackOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorsIotOidc4vpcallbackOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorsIotOidc4vpcallbackOK> mapFromJson(dynamic json) {
    final map = <String, CorsIotOidc4vpcallbackOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorsIotOidc4vpcallbackOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorsIotOidc4vpcallbackOK-objects as value to a dart map
  static Map<String, List<CorsIotOidc4vpcallbackOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorsIotOidc4vpcallbackOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorsIotOidc4vpcallbackOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

