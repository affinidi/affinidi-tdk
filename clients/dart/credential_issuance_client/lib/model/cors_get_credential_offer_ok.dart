//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorsGetCredentialOfferOK {
  /// Returns a new [CorsGetCredentialOfferOK] instance.
  CorsGetCredentialOfferOK({
    this.corsGetCredentialOfferOk,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? corsGetCredentialOfferOk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorsGetCredentialOfferOK &&
    other.corsGetCredentialOfferOk == corsGetCredentialOfferOk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (corsGetCredentialOfferOk == null ? 0 : corsGetCredentialOfferOk!.hashCode);

  @override
  String toString() => 'CorsGetCredentialOfferOK[corsGetCredentialOfferOk=$corsGetCredentialOfferOk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.corsGetCredentialOfferOk != null) {
      json[r'corsGetCredentialOfferOk'] = this.corsGetCredentialOfferOk;
    } else {
      json[r'corsGetCredentialOfferOk'] = null;
    }
    return json;
  }

  /// Returns a new [CorsGetCredentialOfferOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorsGetCredentialOfferOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorsGetCredentialOfferOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorsGetCredentialOfferOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorsGetCredentialOfferOK(
        corsGetCredentialOfferOk: mapValueOfType<String>(json, r'corsGetCredentialOfferOk'),
      );
    }
    return null;
  }

  static List<CorsGetCredentialOfferOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorsGetCredentialOfferOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorsGetCredentialOfferOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorsGetCredentialOfferOK> mapFromJson(dynamic json) {
    final map = <String, CorsGetCredentialOfferOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorsGetCredentialOfferOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorsGetCredentialOfferOK-objects as value to a dart map
  static Map<String, List<CorsGetCredentialOfferOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorsGetCredentialOfferOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorsGetCredentialOfferOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

