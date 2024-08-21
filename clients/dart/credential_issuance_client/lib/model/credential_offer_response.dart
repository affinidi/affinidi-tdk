//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialOfferResponse {
  /// Returns a new [CredentialOfferResponse] instance.
  CredentialOfferResponse({
    required this.credentialIssuer,
    this.credentialConfigurationIds = const [],
    required this.grants,
  });

  /// The URL of the Credential Issuer
  String credentialIssuer;

  /// Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported
  List<String> credentialConfigurationIds;

  CredentialOfferResponseGrants grants;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialOfferResponse &&
    other.credentialIssuer == credentialIssuer &&
    _deepEquality.equals(other.credentialConfigurationIds, credentialConfigurationIds) &&
    other.grants == grants;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialIssuer.hashCode) +
    (credentialConfigurationIds.hashCode) +
    (grants.hashCode);

  @override
  String toString() => 'CredentialOfferResponse[credentialIssuer=$credentialIssuer, credentialConfigurationIds=$credentialConfigurationIds, grants=$grants]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credential_issuer'] = this.credentialIssuer;
      json[r'credential_configuration_ids'] = this.credentialConfigurationIds;
      json[r'grants'] = this.grants;
    return json;
  }

  /// Returns a new [CredentialOfferResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialOfferResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialOfferResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialOfferResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialOfferResponse(
        credentialIssuer: mapValueOfType<String>(json, r'credential_issuer')!,
        credentialConfigurationIds: json[r'credential_configuration_ids'] is Iterable
            ? (json[r'credential_configuration_ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        grants: CredentialOfferResponseGrants.fromJson(json[r'grants'])!,
      );
    }
    return null;
  }

  static List<CredentialOfferResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialOfferResponse> mapFromJson(dynamic json) {
    final map = <String, CredentialOfferResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialOfferResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialOfferResponse-objects as value to a dart map
  static Map<String, List<CredentialOfferResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialOfferResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialOfferResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credential_issuer',
    'credential_configuration_ids',
    'grants',
  };
}

