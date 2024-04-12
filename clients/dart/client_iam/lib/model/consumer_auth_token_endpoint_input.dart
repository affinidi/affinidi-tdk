//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConsumerAuthTokenEndpointInput {
  /// Returns a new [ConsumerAuthTokenEndpointInput] instance.
  ConsumerAuthTokenEndpointInput({
    required this.grantType,
    this.code,
    this.refreshToken,
    this.redirectUri,
    this.clientId,
  });

  String grantType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refreshToken;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? redirectUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsumerAuthTokenEndpointInput &&
    other.grantType == grantType &&
    other.code == code &&
    other.refreshToken == refreshToken &&
    other.redirectUri == redirectUri &&
    other.clientId == clientId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (grantType.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (refreshToken == null ? 0 : refreshToken!.hashCode) +
    (redirectUri == null ? 0 : redirectUri!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode);

  @override
  String toString() => 'ConsumerAuthTokenEndpointInput[grantType=$grantType, code=$code, refreshToken=$refreshToken, redirectUri=$redirectUri, clientId=$clientId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'grant_type'] = this.grantType;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.refreshToken != null) {
      json[r'refresh_token'] = this.refreshToken;
    } else {
      json[r'refresh_token'] = null;
    }
    if (this.redirectUri != null) {
      json[r'redirect_uri'] = this.redirectUri;
    } else {
      json[r'redirect_uri'] = null;
    }
    if (this.clientId != null) {
      json[r'client_id'] = this.clientId;
    } else {
      json[r'client_id'] = null;
    }
    return json;
  }

  /// Returns a new [ConsumerAuthTokenEndpointInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsumerAuthTokenEndpointInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsumerAuthTokenEndpointInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsumerAuthTokenEndpointInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsumerAuthTokenEndpointInput(
        grantType: mapValueOfType<String>(json, r'grant_type')!,
        code: mapValueOfType<String>(json, r'code'),
        refreshToken: mapValueOfType<String>(json, r'refresh_token'),
        redirectUri: mapValueOfType<String>(json, r'redirect_uri'),
        clientId: mapValueOfType<String>(json, r'client_id'),
      );
    }
    return null;
  }

  static List<ConsumerAuthTokenEndpointInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsumerAuthTokenEndpointInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsumerAuthTokenEndpointInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsumerAuthTokenEndpointInput> mapFromJson(dynamic json) {
    final map = <String, ConsumerAuthTokenEndpointInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsumerAuthTokenEndpointInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsumerAuthTokenEndpointInput-objects as value to a dart map
  static Map<String, List<ConsumerAuthTokenEndpointInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsumerAuthTokenEndpointInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsumerAuthTokenEndpointInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'grant_type',
  };
}

