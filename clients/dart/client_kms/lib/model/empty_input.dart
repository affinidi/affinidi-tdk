//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmptyInput {
  /// Returns a new [EmptyInput] instance.
  EmptyInput({
    this.emptyInput,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emptyInput;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmptyInput &&
    other.emptyInput == emptyInput;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emptyInput == null ? 0 : emptyInput!.hashCode);

  @override
  String toString() => 'EmptyInput[emptyInput=$emptyInput]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emptyInput != null) {
      json[r'emptyInput'] = this.emptyInput;
    } else {
      json[r'emptyInput'] = null;
    }
    return json;
  }

  /// Returns a new [EmptyInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmptyInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmptyInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmptyInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmptyInput(
        emptyInput: mapValueOfType<String>(json, r'emptyInput'),
      );
    }
    return null;
  }

  static List<EmptyInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmptyInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmptyInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmptyInput> mapFromJson(dynamic json) {
    final map = <String, EmptyInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmptyInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmptyInput-objects as value to a dart map
  static Map<String, List<EmptyInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmptyInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmptyInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

