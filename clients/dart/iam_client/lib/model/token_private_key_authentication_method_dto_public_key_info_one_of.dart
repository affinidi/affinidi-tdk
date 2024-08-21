//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf {
  /// Returns a new [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf] instance.
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf({
    required this.jwks,
  });

  JsonWebKeySetDto jwks;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf &&
    other.jwks == jwks;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jwks.hashCode);

  @override
  String toString() => 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf[jwks=$jwks]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jwks'] = this.jwks;
    return json;
  }

  /// Returns a new [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf(
        jwks: JsonWebKeySetDto.fromJson(json[r'jwks'])!,
      );
    }
    return null;
  }

  static List<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf> mapFromJson(dynamic json) {
    final map = <String, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf-objects as value to a dart map
  static Map<String, List<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jwks',
  };
}

