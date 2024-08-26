//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InputDescriptor {
  /// Returns a new [InputDescriptor] instance.
  InputDescriptor({
    required this.id,
    required this.constraints,
    this.name,
    this.purpose,
    this.format,
    this.group = const [],
  });

  String id;

  Constraints constraints;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Format? format;

  List<String> group;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InputDescriptor &&
    other.id == id &&
    other.constraints == constraints &&
    other.name == name &&
    other.purpose == purpose &&
    other.format == format &&
    _deepEquality.equals(other.group, group);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (constraints.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (purpose == null ? 0 : purpose!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (group.hashCode);

  @override
  String toString() => 'InputDescriptor[id=$id, constraints=$constraints, name=$name, purpose=$purpose, format=$format, group=$group]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'constraints'] = this.constraints;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
      json[r'group'] = this.group;
    return json;
  }

  /// Returns a new [InputDescriptor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InputDescriptor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InputDescriptor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InputDescriptor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InputDescriptor(
        id: mapValueOfType<String>(json, r'id')!,
        constraints: Constraints.fromJson(json[r'constraints'])!,
        name: mapValueOfType<String>(json, r'name'),
        purpose: mapValueOfType<String>(json, r'purpose'),
        format: Format.fromJson(json[r'format']),
        group: json[r'group'] is Iterable
            ? (json[r'group'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<InputDescriptor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InputDescriptor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InputDescriptor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InputDescriptor> mapFromJson(dynamic json) {
    final map = <String, InputDescriptor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InputDescriptor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InputDescriptor-objects as value to a dart map
  static Map<String, List<InputDescriptor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InputDescriptor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InputDescriptor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'constraints',
  };
}

