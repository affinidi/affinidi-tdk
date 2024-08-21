//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Format {
  /// Returns a new [Format] instance.
  Format({
    this.jwt,
    this.jwtVc,
    this.jwtVp,
    this.ldp,
    this.ldpVc,
    this.ldpVp,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JwtObject? jwt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JwtObject? jwtVc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  JwtObject? jwtVp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LdpObject? ldp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LdpObject? ldpVc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LdpObject? ldpVp;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Format &&
    other.jwt == jwt &&
    other.jwtVc == jwtVc &&
    other.jwtVp == jwtVp &&
    other.ldp == ldp &&
    other.ldpVc == ldpVc &&
    other.ldpVp == ldpVp;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jwt == null ? 0 : jwt!.hashCode) +
    (jwtVc == null ? 0 : jwtVc!.hashCode) +
    (jwtVp == null ? 0 : jwtVp!.hashCode) +
    (ldp == null ? 0 : ldp!.hashCode) +
    (ldpVc == null ? 0 : ldpVc!.hashCode) +
    (ldpVp == null ? 0 : ldpVp!.hashCode);

  @override
  String toString() => 'Format[jwt=$jwt, jwtVc=$jwtVc, jwtVp=$jwtVp, ldp=$ldp, ldpVc=$ldpVc, ldpVp=$ldpVp]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.jwt != null) {
      json[r'jwt'] = this.jwt;
    } else {
      json[r'jwt'] = null;
    }
    if (this.jwtVc != null) {
      json[r'jwt_vc'] = this.jwtVc;
    } else {
      json[r'jwt_vc'] = null;
    }
    if (this.jwtVp != null) {
      json[r'jwt_vp'] = this.jwtVp;
    } else {
      json[r'jwt_vp'] = null;
    }
    if (this.ldp != null) {
      json[r'ldp'] = this.ldp;
    } else {
      json[r'ldp'] = null;
    }
    if (this.ldpVc != null) {
      json[r'ldp_vc'] = this.ldpVc;
    } else {
      json[r'ldp_vc'] = null;
    }
    if (this.ldpVp != null) {
      json[r'ldp_vp'] = this.ldpVp;
    } else {
      json[r'ldp_vp'] = null;
    }
    return json;
  }

  /// Returns a new [Format] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Format? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Format[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Format[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Format(
        jwt: JwtObject.fromJson(json[r'jwt']),
        jwtVc: JwtObject.fromJson(json[r'jwt_vc']),
        jwtVp: JwtObject.fromJson(json[r'jwt_vp']),
        ldp: LdpObject.fromJson(json[r'ldp']),
        ldpVc: LdpObject.fromJson(json[r'ldp_vc']),
        ldpVp: LdpObject.fromJson(json[r'ldp_vp']),
      );
    }
    return null;
  }

  static List<Format> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Format>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Format.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Format> mapFromJson(dynamic json) {
    final map = <String, Format>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Format.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Format-objects as value to a dart map
  static Map<String, List<Format>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Format>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Format.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

