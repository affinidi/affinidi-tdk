//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignJwtToken {
  /// Returns a new [SignJwtToken] instance.
  SignJwtToken({
    required this.header,
    required this.payload,
  });

  Object header;

  Object payload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignJwtToken &&
    other.header == header &&
    other.payload == payload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (header.hashCode) +
    (payload.hashCode);

  @override
  String toString() => 'SignJwtToken[header=$header, payload=$payload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'header'] = this.header;
      json[r'payload'] = this.payload;
    return json;
  }

  /// Returns a new [SignJwtToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignJwtToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignJwtToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignJwtToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignJwtToken(
        header: mapValueOfType<Object>(json, r'header')!,
        payload: mapValueOfType<Object>(json, r'payload')!,
      );
    }
    return null;
  }

  static List<SignJwtToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignJwtToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignJwtToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignJwtToken> mapFromJson(dynamic json) {
    final map = <String, SignJwtToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignJwtToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignJwtToken-objects as value to a dart map
  static Map<String, List<SignJwtToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignJwtToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignJwtToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'header',
    'payload',
  };
}

