//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreatePexQueryInput {
  /// Returns a new [CreatePexQueryInput] instance.
  CreatePexQueryInput({
    required this.name,
    required this.vpDefinition,
  });

  String name;

  /// VP definition in JSON stringify format
  String vpDefinition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreatePexQueryInput &&
    other.name == name &&
    other.vpDefinition == vpDefinition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (vpDefinition.hashCode);

  @override
  String toString() => 'CreatePexQueryInput[name=$name, vpDefinition=$vpDefinition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'vpDefinition'] = this.vpDefinition;
    return json;
  }

  /// Returns a new [CreatePexQueryInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreatePexQueryInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreatePexQueryInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreatePexQueryInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreatePexQueryInput(
        name: mapValueOfType<String>(json, r'name')!,
        vpDefinition: mapValueOfType<String>(json, r'vpDefinition')!,
      );
    }
    return null;
  }

  static List<CreatePexQueryInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreatePexQueryInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreatePexQueryInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreatePexQueryInput> mapFromJson(dynamic json) {
    final map = <String, CreatePexQueryInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreatePexQueryInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreatePexQueryInput-objects as value to a dart map
  static Map<String, List<CreatePexQueryInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreatePexQueryInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreatePexQueryInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'vpDefinition',
  };
}

