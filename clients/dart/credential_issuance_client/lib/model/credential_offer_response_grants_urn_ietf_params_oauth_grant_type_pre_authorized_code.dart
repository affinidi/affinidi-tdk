//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode {
  /// Returns a new [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode] instance.
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode({
    required this.preAuthorizedCode,
    this.txCode,
  });

  /// pre authorized code to be exchanged with jwt token
  String preAuthorizedCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode? txCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode &&
    other.preAuthorizedCode == preAuthorizedCode &&
    other.txCode == txCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (preAuthorizedCode.hashCode) +
    (txCode == null ? 0 : txCode!.hashCode);

  @override
  String toString() => 'CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode[preAuthorizedCode=$preAuthorizedCode, txCode=$txCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pre-authorized_code'] = this.preAuthorizedCode;
    if (this.txCode != null) {
      json[r'tx_code'] = this.txCode;
    } else {
      json[r'tx_code'] = null;
    }
    return json;
  }

  /// Returns a new [CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode(
        preAuthorizedCode: mapValueOfType<String>(json, r'pre-authorized_code')!,
        txCode: CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.fromJson(json[r'tx_code']),
      );
    }
    return null;
  }

  static List<CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode> mapFromJson(dynamic json) {
    final map = <String, CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode-objects as value to a dart map
  static Map<String, List<CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'pre-authorized_code',
  };
}

