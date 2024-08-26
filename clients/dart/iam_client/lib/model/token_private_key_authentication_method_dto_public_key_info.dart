//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo {
  /// Returns a new [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo] instance.
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo({
    required this.jwks,
    required this.jwksUri,
  });

  JsonWebKeySetDto jwks;

  String jwksUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo &&
    other.jwks == jwks &&
    other.jwksUri == jwksUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jwks.hashCode) +
    (jwksUri.hashCode);

  @override
  String toString() => 'TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo[jwks=$jwks, jwksUri=$jwksUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jwks'] = this.jwks;
      json[r'jwksUri'] = this.jwksUri;
    return json;
  }

  /// Returns a new [TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo(
        jwks: JsonWebKeySetDto.fromJson(json[r'jwks'])!,
        jwksUri: mapValueOfType<String>(json, r'jwksUri')!,
      );
    }
    return null;
  }

  static List<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo> mapFromJson(dynamic json) {
    final map = <String, TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo-objects as value to a dart map
  static Map<String, List<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jwks',
    'jwksUri',
  };
}

