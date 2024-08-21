//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyPresentationOutput {
  /// Returns a new [VerifyPresentationOutput] instance.
  VerifyPresentationOutput({
    required this.errors,
    required this.isValid,
  });

  VerifyPresentationOutputErrors errors;

  /// Verification result
  bool isValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyPresentationOutput &&
    other.errors == errors &&
    other.isValid == isValid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (errors.hashCode) +
    (isValid.hashCode);

  @override
  String toString() => 'VerifyPresentationOutput[errors=$errors, isValid=$isValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'errors'] = this.errors;
      json[r'isValid'] = this.isValid;
    return json;
  }

  /// Returns a new [VerifyPresentationOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyPresentationOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyPresentationOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyPresentationOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyPresentationOutput(
        errors: VerifyPresentationOutputErrors.fromJson(json[r'errors'])!,
        isValid: mapValueOfType<bool>(json, r'isValid')!,
      );
    }
    return null;
  }

  static List<VerifyPresentationOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyPresentationOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyPresentationOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyPresentationOutput> mapFromJson(dynamic json) {
    final map = <String, VerifyPresentationOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyPresentationOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyPresentationOutput-objects as value to a dart map
  static Map<String, List<VerifyPresentationOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyPresentationOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyPresentationOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'errors',
    'isValid',
  };
}

