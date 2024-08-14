//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AwsExchangeCredentialsProjectTokenOK {
  /// Returns a new [AwsExchangeCredentialsProjectTokenOK] instance.
  AwsExchangeCredentialsProjectTokenOK({
    required this.connectionClientId,
    required this.credentials,
  });

  String connectionClientId;

  AwsExchangeCredentialsProjectTokenOKCredentials credentials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwsExchangeCredentialsProjectTokenOK &&
    other.connectionClientId == connectionClientId &&
    other.credentials == credentials;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionClientId.hashCode) +
    (credentials.hashCode);

  @override
  String toString() => 'AwsExchangeCredentialsProjectTokenOK[connectionClientId=$connectionClientId, credentials=$credentials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionClientId'] = this.connectionClientId;
      json[r'credentials'] = this.credentials;
    return json;
  }

  /// Returns a new [AwsExchangeCredentialsProjectTokenOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwsExchangeCredentialsProjectTokenOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwsExchangeCredentialsProjectTokenOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwsExchangeCredentialsProjectTokenOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwsExchangeCredentialsProjectTokenOK(
        connectionClientId: mapValueOfType<String>(json, r'connectionClientId')!,
        credentials: AwsExchangeCredentialsProjectTokenOKCredentials.fromJson(json[r'credentials'])!,
      );
    }
    return null;
  }

  static List<AwsExchangeCredentialsProjectTokenOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwsExchangeCredentialsProjectTokenOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwsExchangeCredentialsProjectTokenOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwsExchangeCredentialsProjectTokenOK> mapFromJson(dynamic json) {
    final map = <String, AwsExchangeCredentialsProjectTokenOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwsExchangeCredentialsProjectTokenOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwsExchangeCredentialsProjectTokenOK-objects as value to a dart map
  static Map<String, List<AwsExchangeCredentialsProjectTokenOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwsExchangeCredentialsProjectTokenOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwsExchangeCredentialsProjectTokenOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectionClientId',
    'credentials',
  };
}

