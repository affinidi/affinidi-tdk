//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AwsExchangeCredentialsProjectToken {
  /// Returns a new [AwsExchangeCredentialsProjectToken] instance.
  AwsExchangeCredentialsProjectToken({
    required this.sessionId,
    required this.configurationId,
    required this.did,
  });

  /// sessionId generated by client
  String sessionId;

  /// iotaConfiguration Id
  String configurationId;

  /// Vault DID of the user
  String did;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwsExchangeCredentialsProjectToken &&
    other.sessionId == sessionId &&
    other.configurationId == configurationId &&
    other.did == did;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionId.hashCode) +
    (configurationId.hashCode) +
    (did.hashCode);

  @override
  String toString() => 'AwsExchangeCredentialsProjectToken[sessionId=$sessionId, configurationId=$configurationId, did=$did]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sessionId'] = this.sessionId;
      json[r'configurationId'] = this.configurationId;
      json[r'did'] = this.did;
    return json;
  }

  /// Returns a new [AwsExchangeCredentialsProjectToken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwsExchangeCredentialsProjectToken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwsExchangeCredentialsProjectToken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwsExchangeCredentialsProjectToken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwsExchangeCredentialsProjectToken(
        sessionId: mapValueOfType<String>(json, r'sessionId')!,
        configurationId: mapValueOfType<String>(json, r'configurationId')!,
        did: mapValueOfType<String>(json, r'did')!,
      );
    }
    return null;
  }

  static List<AwsExchangeCredentialsProjectToken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwsExchangeCredentialsProjectToken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwsExchangeCredentialsProjectToken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwsExchangeCredentialsProjectToken> mapFromJson(dynamic json) {
    final map = <String, AwsExchangeCredentialsProjectToken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwsExchangeCredentialsProjectToken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwsExchangeCredentialsProjectToken-objects as value to a dart map
  static Map<String, List<AwsExchangeCredentialsProjectToken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwsExchangeCredentialsProjectToken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwsExchangeCredentialsProjectToken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sessionId',
    'configurationId',
    'did',
  };
}
