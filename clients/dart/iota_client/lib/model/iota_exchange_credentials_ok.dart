//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IotaExchangeCredentialsOK {
  /// Returns a new [IotaExchangeCredentialsOK] instance.
  IotaExchangeCredentialsOK({
    required this.connectionClientId,
    required this.credentials,
  });

  String connectionClientId;

  IotaExchangeCredentialsOKCredentials credentials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IotaExchangeCredentialsOK &&
    other.connectionClientId == connectionClientId &&
    other.credentials == credentials;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionClientId.hashCode) +
    (credentials.hashCode);

  @override
  String toString() => 'IotaExchangeCredentialsOK[connectionClientId=$connectionClientId, credentials=$credentials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionClientId'] = this.connectionClientId;
      json[r'credentials'] = this.credentials;
    return json;
  }

  /// Returns a new [IotaExchangeCredentialsOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IotaExchangeCredentialsOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IotaExchangeCredentialsOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IotaExchangeCredentialsOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IotaExchangeCredentialsOK(
        connectionClientId: mapValueOfType<String>(json, r'connectionClientId')!,
        credentials: IotaExchangeCredentialsOKCredentials.fromJson(json[r'credentials'])!,
      );
    }
    return null;
  }

  static List<IotaExchangeCredentialsOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IotaExchangeCredentialsOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IotaExchangeCredentialsOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IotaExchangeCredentialsOK> mapFromJson(dynamic json) {
    final map = <String, IotaExchangeCredentialsOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IotaExchangeCredentialsOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IotaExchangeCredentialsOK-objects as value to a dart map
  static Map<String, List<IotaExchangeCredentialsOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IotaExchangeCredentialsOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IotaExchangeCredentialsOK.listFromJson(entry.value, growable: growable,);
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

