//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JsonWebKeySetDto {
  /// Returns a new [JsonWebKeySetDto] instance.
  JsonWebKeySetDto({
    this.keys = const [],
  });

  List<JsonWebKeyDto> keys;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JsonWebKeySetDto &&
    _deepEquality.equals(other.keys, keys);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keys.hashCode);

  @override
  String toString() => 'JsonWebKeySetDto[keys=$keys]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'keys'] = this.keys;
    return json;
  }

  /// Returns a new [JsonWebKeySetDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JsonWebKeySetDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JsonWebKeySetDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JsonWebKeySetDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JsonWebKeySetDto(
        keys: JsonWebKeyDto.listFromJson(json[r'keys']),
      );
    }
    return null;
  }

  static List<JsonWebKeySetDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JsonWebKeySetDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JsonWebKeySetDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JsonWebKeySetDto> mapFromJson(dynamic json) {
    final map = <String, JsonWebKeySetDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JsonWebKeySetDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JsonWebKeySetDto-objects as value to a dart map
  static Map<String, List<JsonWebKeySetDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JsonWebKeySetDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JsonWebKeySetDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'keys',
  };
}

