//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OAuth2Token {
  /// Returns a new [OAuth2Token] instance.
  OAuth2Token({
    this.accessToken,
    this.expiresIn,
    this.idToken,
    this.refreshToken,
    this.scope,
    this.tokenType,
  });

  /// The access token issued by the authorization server. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessToken;

  /// The lifetime in seconds of the access token.  For example, the value \"3600\" denotes that the access  token will expire in one hour from the time the response was generated. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? expiresIn;

  /// To retrieve a refresh token request the id_token scope. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idToken;

  /// The refresh token, which can be used to obtain new access tokens. To retrieve it add the scope \"offline\" to your access token request. 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  /// The scope of the access token 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// The type of the token issued 
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tokenType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OAuth2Token &&
    other.accessToken == accessToken &&
    other.expiresIn == expiresIn &&
    other.idToken == idToken &&
    other.refreshToken == refreshToken &&
    other.scope == scope &&
    other.tokenType == tokenType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (expiresIn == null ? 0 : expiresIn!.hashCode) +
    (idToken == null ? 0 : idToken!.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (tokenType == null ? 0 : tokenType!.hashCode);

  @override
  String toString() => 'OAuth2Token[accessToken=$accessToken, expiresIn=$expiresIn, idToken=$idToken, refreshToken=$refreshToken, scope=$scope, tokenType=$tokenType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessToken != null) {
      json[r'access_token'] = this.accessToken;
    } else {
      json[r'access_token'] = null;
    }
    if (this.expiresIn != null) {
      json[r'expires_in'] = this.expiresIn;
    } else {
      json[r'expires_in'] = null;
    }
    if (this.idToken != null) {
      json[r'id_token'] = this.idToken;
    } else {
      json[r'id_token'] = null;
    }
    if (this.refreshToken != null) {
      json[r'refresh_token'] = this.refreshToken;
    } else {
      json[r'refresh_token'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.tokenType != null) {
      json[r'token_type'] = this.tokenType;
    } else {
      json[r'token_type'] = null;
    }
    return json;
  }

  /// Returns a new [OAuth2Token] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OAuth2Token? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OAuth2Token[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OAuth2Token[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OAuth2Token(
        accessToken: mapValueOfType<String>(json, r'access_token'),
        expiresIn: mapValueOfType<int>(json, r'expires_in'),
        idToken: mapValueOfType<int>(json, r'id_token'),
        refreshToken: mapValueOfType<String>(json, r'refresh_token'),
        scope: mapValueOfType<String>(json, r'scope'),
        tokenType: mapValueOfType<String>(json, r'token_type'),
      );
    }
    return null;
  }

  static List<OAuth2Token> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OAuth2Token>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OAuth2Token.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OAuth2Token> mapFromJson(dynamic json) {
    final map = <String, OAuth2Token>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OAuth2Token.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OAuth2Token-objects as value to a dart map
  static Map<String, List<OAuth2Token>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OAuth2Token>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OAuth2Token.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

