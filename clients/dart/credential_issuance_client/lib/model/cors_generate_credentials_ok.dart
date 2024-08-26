//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CorsGenerateCredentialsOK {
  /// Returns a new [CorsGenerateCredentialsOK] instance.
  CorsGenerateCredentialsOK({
    this.corsGenerateCredentialsOk,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? corsGenerateCredentialsOk;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorsGenerateCredentialsOK &&
    other.corsGenerateCredentialsOk == corsGenerateCredentialsOk;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (corsGenerateCredentialsOk == null ? 0 : corsGenerateCredentialsOk!.hashCode);

  @override
  String toString() => 'CorsGenerateCredentialsOK[corsGenerateCredentialsOk=$corsGenerateCredentialsOk]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.corsGenerateCredentialsOk != null) {
      json[r'corsGenerateCredentialsOk'] = this.corsGenerateCredentialsOk;
    } else {
      json[r'corsGenerateCredentialsOk'] = null;
    }
    return json;
  }

  /// Returns a new [CorsGenerateCredentialsOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorsGenerateCredentialsOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorsGenerateCredentialsOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorsGenerateCredentialsOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorsGenerateCredentialsOK(
        corsGenerateCredentialsOk: mapValueOfType<String>(json, r'corsGenerateCredentialsOk'),
      );
    }
    return null;
  }

  static List<CorsGenerateCredentialsOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorsGenerateCredentialsOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorsGenerateCredentialsOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorsGenerateCredentialsOK> mapFromJson(dynamic json) {
    final map = <String, CorsGenerateCredentialsOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorsGenerateCredentialsOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorsGenerateCredentialsOK-objects as value to a dart map
  static Map<String, List<CorsGenerateCredentialsOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorsGenerateCredentialsOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorsGenerateCredentialsOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

