//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class JsonWebKeyDto {
  /// Returns a new [JsonWebKeyDto] instance.
  JsonWebKeyDto({
    required this.kid,
    required this.kty,
    this.n,
    this.e,
    this.x,
    this.y,
    this.crv,
    required this.alg,
    required this.use,
  });

  String kid;

  String kty;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? e;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? x;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? y;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? crv;

  String alg;

  String use;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JsonWebKeyDto &&
    other.kid == kid &&
    other.kty == kty &&
    other.n == n &&
    other.e == e &&
    other.x == x &&
    other.y == y &&
    other.crv == crv &&
    other.alg == alg &&
    other.use == use;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kid.hashCode) +
    (kty.hashCode) +
    (n == null ? 0 : n!.hashCode) +
    (e == null ? 0 : e!.hashCode) +
    (x == null ? 0 : x!.hashCode) +
    (y == null ? 0 : y!.hashCode) +
    (crv == null ? 0 : crv!.hashCode) +
    (alg.hashCode) +
    (use.hashCode);

  @override
  String toString() => 'JsonWebKeyDto[kid=$kid, kty=$kty, n=$n, e=$e, x=$x, y=$y, crv=$crv, alg=$alg, use=$use]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kid'] = this.kid;
      json[r'kty'] = this.kty;
    if (this.n != null) {
      json[r'n'] = this.n;
    } else {
      json[r'n'] = null;
    }
    if (this.e != null) {
      json[r'e'] = this.e;
    } else {
      json[r'e'] = null;
    }
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
    if (this.y != null) {
      json[r'y'] = this.y;
    } else {
      json[r'y'] = null;
    }
    if (this.crv != null) {
      json[r'crv'] = this.crv;
    } else {
      json[r'crv'] = null;
    }
      json[r'alg'] = this.alg;
      json[r'use'] = this.use;
    return json;
  }

  /// Returns a new [JsonWebKeyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JsonWebKeyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JsonWebKeyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JsonWebKeyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JsonWebKeyDto(
        kid: mapValueOfType<String>(json, r'kid')!,
        kty: mapValueOfType<String>(json, r'kty')!,
        n: mapValueOfType<String>(json, r'n'),
        e: mapValueOfType<String>(json, r'e'),
        x: mapValueOfType<String>(json, r'x'),
        y: mapValueOfType<String>(json, r'y'),
        crv: mapValueOfType<String>(json, r'crv'),
        alg: mapValueOfType<String>(json, r'alg')!,
        use: mapValueOfType<String>(json, r'use')!,
      );
    }
    return null;
  }

  static List<JsonWebKeyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JsonWebKeyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JsonWebKeyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JsonWebKeyDto> mapFromJson(dynamic json) {
    final map = <String, JsonWebKeyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JsonWebKeyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JsonWebKeyDto-objects as value to a dart map
  static Map<String, List<JsonWebKeyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JsonWebKeyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JsonWebKeyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kid',
    'kty',
    'alg',
    'use',
  };
}

