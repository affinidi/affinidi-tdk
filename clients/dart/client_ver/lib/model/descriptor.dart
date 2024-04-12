//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Descriptor {
  /// Returns a new [Descriptor] instance.
  Descriptor({
    required this.id,
    required this.path,
    this.pathNested,
    required this.format,
  });

  String id;

  String path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NestedDescriptor? pathNested;

  String format;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Descriptor &&
    other.id == id &&
    other.path == path &&
    other.pathNested == pathNested &&
    other.format == format;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (path.hashCode) +
    (pathNested == null ? 0 : pathNested!.hashCode) +
    (format.hashCode);

  @override
  String toString() => 'Descriptor[id=$id, path=$path, pathNested=$pathNested, format=$format]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'path'] = this.path;
    if (this.pathNested != null) {
      json[r'path_nested'] = this.pathNested;
    } else {
      json[r'path_nested'] = null;
    }
      json[r'format'] = this.format;
    return json;
  }

  /// Returns a new [Descriptor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Descriptor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Descriptor[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Descriptor[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Descriptor(
        id: mapValueOfType<String>(json, r'id')!,
        path: mapValueOfType<String>(json, r'path')!,
        pathNested: NestedDescriptor.fromJson(json[r'path_nested']),
        format: mapValueOfType<String>(json, r'format')!,
      );
    }
    return null;
  }

  static List<Descriptor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Descriptor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Descriptor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Descriptor> mapFromJson(dynamic json) {
    final map = <String, Descriptor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Descriptor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Descriptor-objects as value to a dart map
  static Map<String, List<Descriptor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Descriptor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Descriptor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'path',
    'format',
  };
}

