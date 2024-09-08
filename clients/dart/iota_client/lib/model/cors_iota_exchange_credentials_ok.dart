//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorsIotaExchangeCredentialsOK {
  /// Returns a new [CorsIotaExchangeCredentialsOK] instance.
  CorsIotaExchangeCredentialsOK({
    this.corsIotaExchangeCredentialsOk,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? corsIotaExchangeCredentialsOk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorsIotaExchangeCredentialsOK &&
    other.corsIotaExchangeCredentialsOk == corsIotaExchangeCredentialsOk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (corsIotaExchangeCredentialsOk == null ? 0 : corsIotaExchangeCredentialsOk!.hashCode);

  @override
  String toString() => 'CorsIotaExchangeCredentialsOK[corsIotaExchangeCredentialsOk=$corsIotaExchangeCredentialsOk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.corsIotaExchangeCredentialsOk != null) {
      json[r'corsIotaExchangeCredentialsOk'] = this.corsIotaExchangeCredentialsOk;
    } else {
      json[r'corsIotaExchangeCredentialsOk'] = null;
    }
    return json;
  }

  /// Returns a new [CorsIotaExchangeCredentialsOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorsIotaExchangeCredentialsOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorsIotaExchangeCredentialsOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorsIotaExchangeCredentialsOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorsIotaExchangeCredentialsOK(
        corsIotaExchangeCredentialsOk: mapValueOfType<String>(json, r'corsIotaExchangeCredentialsOk'),
      );
    }
    return null;
  }

  static List<CorsIotaExchangeCredentialsOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorsIotaExchangeCredentialsOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorsIotaExchangeCredentialsOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorsIotaExchangeCredentialsOK> mapFromJson(dynamic json) {
    final map = <String, CorsIotaExchangeCredentialsOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorsIotaExchangeCredentialsOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorsIotaExchangeCredentialsOK-objects as value to a dart map
  static Map<String, List<CorsIotaExchangeCredentialsOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorsIotaExchangeCredentialsOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorsIotaExchangeCredentialsOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

