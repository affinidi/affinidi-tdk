//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateJwtOutput {
  /// Returns a new [ValidateJwtOutput] instance.
  ValidateJwtOutput({
    required this.isValid,
    required this.payload,
  });

  /// Defines if jwt is valid
  bool isValid;

  /// Decoded payload of the token
  Object payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateJwtOutput &&
    other.isValid == isValid &&
    other.payload == payload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isValid.hashCode) +
    (payload.hashCode);

  @override
  String toString() => 'ValidateJwtOutput[isValid=$isValid, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isValid'] = this.isValid;
      json[r'payload'] = this.payload;
    return json;
  }

  /// Returns a new [ValidateJwtOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateJwtOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateJwtOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateJwtOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateJwtOutput(
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        payload: mapValueOfType<Object>(json, r'payload')!,
      );
    }
    return null;
  }

  static List<ValidateJwtOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateJwtOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateJwtOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateJwtOutput> mapFromJson(dynamic json) {
    final map = <String, ValidateJwtOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateJwtOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateJwtOutput-objects as value to a dart map
  static Map<String, List<ValidateJwtOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateJwtOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateJwtOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isValid',
    'payload',
  };
}

