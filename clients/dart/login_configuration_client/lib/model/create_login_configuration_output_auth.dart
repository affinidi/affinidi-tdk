//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLoginConfigurationOutputAuth {
  /// Returns a new [CreateLoginConfigurationOutputAuth] instance.
  CreateLoginConfigurationOutputAuth({
    required this.clientId,
    this.clientSecret,
    this.scope,
    this.issuer,
  });

  /// OAuth 2.0 Client ID
  String clientId;

  /// OAuth 2.0 Client Secret
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// OAuth 2.0 Client Scope
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Issuer URL
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuer;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLoginConfigurationOutputAuth &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.scope == scope &&
    other.issuer == issuer;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (issuer == null ? 0 : issuer!.hashCode);

  @override
  String toString() => 'CreateLoginConfigurationOutputAuth[clientId=$clientId, clientSecret=$clientSecret, scope=$scope, issuer=$issuer]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clientId'] = this.clientId;
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.issuer != null) {
      json[r'issuer'] = this.issuer;
    } else {
      json[r'issuer'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLoginConfigurationOutputAuth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLoginConfigurationOutputAuth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLoginConfigurationOutputAuth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLoginConfigurationOutputAuth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLoginConfigurationOutputAuth(
        clientId: mapValueOfType<String>(json, r'clientId')!,
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        scope: mapValueOfType<String>(json, r'scope'),
        issuer: mapValueOfType<String>(json, r'issuer'),
      );
    }
    return null;
  }

  static List<CreateLoginConfigurationOutputAuth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurationOutputAuth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurationOutputAuth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLoginConfigurationOutputAuth> mapFromJson(dynamic json) {
    final map = <String, CreateLoginConfigurationOutputAuth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLoginConfigurationOutputAuth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLoginConfigurationOutputAuth-objects as value to a dart map
  static Map<String, List<CreateLoginConfigurationOutputAuth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLoginConfigurationOutputAuth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLoginConfigurationOutputAuth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'clientId',
  };
}

