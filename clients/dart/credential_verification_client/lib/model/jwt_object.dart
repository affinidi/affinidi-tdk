//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JwtObject {
  /// Returns a new [JwtObject] instance.
  JwtObject({
    this.alg = const [],
  });

  /// List of names of the the JWT Algorithms
  List<String> alg;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JwtObject &&
    _deepEquality.equals(other.alg, alg);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alg.hashCode);

  @override
  String toString() => 'JwtObject[alg=$alg]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alg'] = this.alg;
    return json;
  }

  /// Returns a new [JwtObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JwtObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JwtObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JwtObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JwtObject(
        alg: json[r'alg'] is Iterable
            ? (json[r'alg'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<JwtObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JwtObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JwtObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JwtObject> mapFromJson(dynamic json) {
    final map = <String, JwtObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JwtObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JwtObject-objects as value to a dart map
  static Map<String, List<JwtObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JwtObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JwtObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'alg',
  };
}

