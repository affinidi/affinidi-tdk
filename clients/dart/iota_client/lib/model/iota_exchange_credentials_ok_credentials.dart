//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IotaExchangeCredentialsOKCredentials {
  /// Returns a new [IotaExchangeCredentialsOKCredentials] instance.
  IotaExchangeCredentialsOKCredentials({
    required this.accessKeyId,
    required this.secretKey,
    required this.sessionToken,
    required this.expiration,
  });

  String accessKeyId;

  String secretKey;

  String sessionToken;

  String expiration;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IotaExchangeCredentialsOKCredentials &&
    other.accessKeyId == accessKeyId &&
    other.secretKey == secretKey &&
    other.sessionToken == sessionToken &&
    other.expiration == expiration;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessKeyId.hashCode) +
    (secretKey.hashCode) +
    (sessionToken.hashCode) +
    (expiration.hashCode);

  @override
  String toString() => 'IotaExchangeCredentialsOKCredentials[accessKeyId=$accessKeyId, secretKey=$secretKey, sessionToken=$sessionToken, expiration=$expiration]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessKeyId'] = this.accessKeyId;
      json[r'secretKey'] = this.secretKey;
      json[r'sessionToken'] = this.sessionToken;
      json[r'expiration'] = this.expiration;
    return json;
  }

  /// Returns a new [IotaExchangeCredentialsOKCredentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IotaExchangeCredentialsOKCredentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IotaExchangeCredentialsOKCredentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IotaExchangeCredentialsOKCredentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IotaExchangeCredentialsOKCredentials(
        accessKeyId: mapValueOfType<String>(json, r'accessKeyId')!,
        secretKey: mapValueOfType<String>(json, r'secretKey')!,
        sessionToken: mapValueOfType<String>(json, r'sessionToken')!,
        expiration: mapValueOfType<String>(json, r'expiration')!,
      );
    }
    return null;
  }

  static List<IotaExchangeCredentialsOKCredentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IotaExchangeCredentialsOKCredentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IotaExchangeCredentialsOKCredentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IotaExchangeCredentialsOKCredentials> mapFromJson(dynamic json) {
    final map = <String, IotaExchangeCredentialsOKCredentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IotaExchangeCredentialsOKCredentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IotaExchangeCredentialsOKCredentials-objects as value to a dart map
  static Map<String, List<IotaExchangeCredentialsOKCredentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IotaExchangeCredentialsOKCredentials>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IotaExchangeCredentialsOKCredentials.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accessKeyId',
    'secretKey',
    'sessionToken',
    'expiration',
  };
}

