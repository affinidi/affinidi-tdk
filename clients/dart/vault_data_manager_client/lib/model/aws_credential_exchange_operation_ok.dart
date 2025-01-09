//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AwsCredentialExchangeOperationOK {
  /// Returns a new [AwsCredentialExchangeOperationOK] instance.
  AwsCredentialExchangeOperationOK({
    required this.token,
    required this.identityId,
  });

  String token;

  String identityId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AwsCredentialExchangeOperationOK &&
    other.token == token &&
    other.identityId == identityId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (token.hashCode) +
    (identityId.hashCode);

  @override
  String toString() => 'AwsCredentialExchangeOperationOK[token=$token, identityId=$identityId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'token'] = this.token;
      json[r'identityId'] = this.identityId;
    return json;
  }

  /// Returns a new [AwsCredentialExchangeOperationOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AwsCredentialExchangeOperationOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AwsCredentialExchangeOperationOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AwsCredentialExchangeOperationOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AwsCredentialExchangeOperationOK(
        token: mapValueOfType<String>(json, r'token')!,
        identityId: mapValueOfType<String>(json, r'identityId')!,
      );
    }
    return null;
  }

  static List<AwsCredentialExchangeOperationOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AwsCredentialExchangeOperationOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AwsCredentialExchangeOperationOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AwsCredentialExchangeOperationOK> mapFromJson(dynamic json) {
    final map = <String, AwsCredentialExchangeOperationOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AwsCredentialExchangeOperationOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AwsCredentialExchangeOperationOK-objects as value to a dart map
  static Map<String, List<AwsCredentialExchangeOperationOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AwsCredentialExchangeOperationOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AwsCredentialExchangeOperationOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'token',
    'identityId',
  };
}

