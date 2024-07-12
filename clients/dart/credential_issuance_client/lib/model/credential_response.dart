//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialResponse {
  /// Returns a new [CredentialResponse] instance.
  CredentialResponse({
    required this.credential,
    required this.cNonce,
    required this.cNonceExpiresIn,
    required this.transactionId,
  });

  CredentialResponseImmediateCredential credential;

  /// String containing a nonce to be used when creating a proof of possession of the key proof
  String cNonce;

  /// Lifetime in seconds of the c_nonce
  int cNonceExpiresIn;

  /// String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential.
  String transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialResponse &&
    other.credential == credential &&
    other.cNonce == cNonce &&
    other.cNonceExpiresIn == cNonceExpiresIn &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credential.hashCode) +
    (cNonce.hashCode) +
    (cNonceExpiresIn.hashCode) +
    (transactionId.hashCode);

  @override
  String toString() => 'CredentialResponse[credential=$credential, cNonce=$cNonce, cNonceExpiresIn=$cNonceExpiresIn, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credential'] = this.credential;
      json[r'c_nonce'] = this.cNonce;
      json[r'c_nonce_expires_in'] = this.cNonceExpiresIn;
      json[r'transaction_id'] = this.transactionId;
    return json;
  }

  /// Returns a new [CredentialResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialResponse(
        credential: CredentialResponseImmediateCredential.fromJson(json[r'credential'])!,
        cNonce: mapValueOfType<String>(json, r'c_nonce')!,
        cNonceExpiresIn: mapValueOfType<int>(json, r'c_nonce_expires_in')!,
        transactionId: mapValueOfType<String>(json, r'transaction_id')!,
      );
    }
    return null;
  }

  static List<CredentialResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialResponse> mapFromJson(dynamic json) {
    final map = <String, CredentialResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialResponse-objects as value to a dart map
  static Map<String, List<CredentialResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credential',
    'c_nonce',
    'c_nonce_expires_in',
    'transaction_id',
  };
}

