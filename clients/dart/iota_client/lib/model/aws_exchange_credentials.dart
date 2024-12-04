//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AwsExchangeCredentials {
  /// Returns a new [AwsExchangeCredentials] instance.
  AwsExchangeCredentials({
    required this.assertion,
  });

  /// A valid JSON Web Token (JWT) that secures the WebSocket connection. The JWT is signed with the key pair's private key used to create the Personal Access Token (PAT).
  String assertion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwsExchangeCredentials &&
    other.assertion == assertion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assertion.hashCode);

  @override
  String toString() => 'AwsExchangeCredentials[assertion=$assertion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'assertion'] = this.assertion;
    return json;
  }

  /// Returns a new [AwsExchangeCredentials] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwsExchangeCredentials? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwsExchangeCredentials[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwsExchangeCredentials[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwsExchangeCredentials(
        assertion: mapValueOfType<String>(json, r'assertion')!,
      );
    }
    return null;
  }

  static List<AwsExchangeCredentials> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwsExchangeCredentials>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwsExchangeCredentials.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwsExchangeCredentials> mapFromJson(dynamic json) {
    final map = <String, AwsExchangeCredentials>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwsExchangeCredentials.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwsExchangeCredentials-objects as value to a dart map
  static Map<String, List<AwsExchangeCredentials>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwsExchangeCredentials>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwsExchangeCredentials.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'assertion',
  };
}

