//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JsonWebKey {
  /// Returns a new [JsonWebKey] instance.
  JsonWebKey({
    this.keys = const [],
  });

  /// The value of the \"keys\" parameter is an array of JSON Web Key (JWK) values.  By default, the order of the JWK values within the array does not imply an  order of preference among them, although applications of JWK Sets can choose  to assign a meaning to the order for their purposes, if desired. 
  List<JsonWebKeyKeysInner> keys;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JsonWebKey &&
    _deepEquality.equals(other.keys, keys);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keys.hashCode);

  @override
  String toString() => 'JsonWebKey[keys=$keys]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'keys'] = this.keys;
    return json;
  }

  /// Returns a new [JsonWebKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JsonWebKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JsonWebKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JsonWebKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JsonWebKey(
        keys: JsonWebKeyKeysInner.listFromJson(json[r'keys']),
      );
    }
    return null;
  }

  static List<JsonWebKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JsonWebKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JsonWebKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JsonWebKey> mapFromJson(dynamic json) {
    final map = <String, JsonWebKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JsonWebKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JsonWebKey-objects as value to a dart map
  static Map<String, List<JsonWebKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JsonWebKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JsonWebKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

