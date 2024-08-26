//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AwsExchangeCredentialsProjectTokenOKCredentials {
  /// Returns a new [AwsExchangeCredentialsProjectTokenOKCredentials] instance.
  AwsExchangeCredentialsProjectTokenOKCredentials({
    required this.identityId,
    required this.token,
  });

  String identityId;

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwsExchangeCredentialsProjectTokenOKCredentials &&
    other.identityId == identityId &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (identityId.hashCode) +
    (token.hashCode);

  @override
  String toString() => 'AwsExchangeCredentialsProjectTokenOKCredentials[identityId=$identityId, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'identityId'] = this.identityId;
      json[r'token'] = this.token;
    return json;
  }

  /// Returns a new [AwsExchangeCredentialsProjectTokenOKCredentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwsExchangeCredentialsProjectTokenOKCredentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwsExchangeCredentialsProjectTokenOKCredentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwsExchangeCredentialsProjectTokenOKCredentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwsExchangeCredentialsProjectTokenOKCredentials(
        identityId: mapValueOfType<String>(json, r'identityId')!,
        token: mapValueOfType<String>(json, r'token')!,
      );
    }
    return null;
  }

  static List<AwsExchangeCredentialsProjectTokenOKCredentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwsExchangeCredentialsProjectTokenOKCredentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwsExchangeCredentialsProjectTokenOKCredentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwsExchangeCredentialsProjectTokenOKCredentials> mapFromJson(dynamic json) {
    final map = <String, AwsExchangeCredentialsProjectTokenOKCredentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwsExchangeCredentialsProjectTokenOKCredentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwsExchangeCredentialsProjectTokenOKCredentials-objects as value to a dart map
  static Map<String, List<AwsExchangeCredentialsProjectTokenOKCredentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwsExchangeCredentialsProjectTokenOKCredentials>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwsExchangeCredentialsProjectTokenOKCredentials.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identityId',
    'token',
  };
}

