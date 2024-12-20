//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdatePexQueryInput {
  /// Returns a new [UpdatePexQueryInput] instance.
  UpdatePexQueryInput({
    this.vpDefinition,
    this.description,
  });

  /// The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vpDefinition;

  /// An optional description of what the query is used for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdatePexQueryInput &&
    other.vpDefinition == vpDefinition &&
    other.description == description;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vpDefinition == null ? 0 : vpDefinition!.hashCode) +
    (description == null ? 0 : description!.hashCode);

  @override
  String toString() => 'UpdatePexQueryInput[vpDefinition=$vpDefinition, description=$description]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.vpDefinition != null) {
      json[r'vpDefinition'] = this.vpDefinition;
    } else {
      json[r'vpDefinition'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    return json;
  }

  /// Returns a new [UpdatePexQueryInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdatePexQueryInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdatePexQueryInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdatePexQueryInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdatePexQueryInput(
        vpDefinition: mapValueOfType<String>(json, r'vpDefinition'),
        description: mapValueOfType<String>(json, r'description'),
      );
    }
    return null;
  }

  static List<UpdatePexQueryInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdatePexQueryInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdatePexQueryInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdatePexQueryInput> mapFromJson(dynamic json) {
    final map = <String, UpdatePexQueryInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdatePexQueryInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdatePexQueryInput-objects as value to a dart map
  static Map<String, List<UpdatePexQueryInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdatePexQueryInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdatePexQueryInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

