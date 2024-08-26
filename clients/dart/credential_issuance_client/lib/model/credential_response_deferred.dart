//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialResponseDeferred {
  /// Returns a new [CredentialResponseDeferred] instance.
  CredentialResponseDeferred({
    required this.transactionId,
    required this.cNonce,
    required this.cNonceExpiresIn,
  });

  /// String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
  String transactionId;

  /// String containing a nonce to be used when creating a proof of possession of the key proof
  String cNonce;

  /// Lifetime in seconds of the c_nonce
  int cNonceExpiresIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialResponseDeferred &&
    other.transactionId == transactionId &&
    other.cNonce == cNonce &&
    other.cNonceExpiresIn == cNonceExpiresIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (transactionId.hashCode) +
    (cNonce.hashCode) +
    (cNonceExpiresIn.hashCode);

  @override
  String toString() => 'CredentialResponseDeferred[transactionId=$transactionId, cNonce=$cNonce, cNonceExpiresIn=$cNonceExpiresIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'transaction_id'] = this.transactionId;
      json[r'c_nonce'] = this.cNonce;
      json[r'c_nonce_expires_in'] = this.cNonceExpiresIn;
    return json;
  }

  /// Returns a new [CredentialResponseDeferred] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialResponseDeferred? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialResponseDeferred[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialResponseDeferred[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialResponseDeferred(
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
        cNonce: mapValueOfType<String>(json, r'c_nonce')!,
        cNonceExpiresIn: mapValueOfType<int>(json, r'c_nonce_expires_in')!,
      );
    }
    return null;
  }

  static List<CredentialResponseDeferred> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialResponseDeferred>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialResponseDeferred.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialResponseDeferred> mapFromJson(dynamic json) {
    final map = <String, CredentialResponseDeferred>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialResponseDeferred.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialResponseDeferred-objects as value to a dart map
  static Map<String, List<CredentialResponseDeferred>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialResponseDeferred>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialResponseDeferred.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'transaction_id',
    'c_nonce',
    'c_nonce_expires_in',
  };
}

