//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialResponseImmediate {
  /// Returns a new [CredentialResponseImmediate] instance.
  CredentialResponseImmediate({
    required this.credential,
    required this.cNonce,
    required this.cNonceExpiresIn,
  });

  CredentialResponseImmediateCredential credential;

  /// String containing a nonce to be used when creating a proof of possession of the key proof
  String cNonce;

  CredentialResponseImmediateCNonceExpiresIn cNonceExpiresIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialResponseImmediate &&
    other.credential == credential &&
    other.cNonce == cNonce &&
    other.cNonceExpiresIn == cNonceExpiresIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credential.hashCode) +
    (cNonce.hashCode) +
    (cNonceExpiresIn.hashCode);

  @override
  String toString() => 'CredentialResponseImmediate[credential=$credential, cNonce=$cNonce, cNonceExpiresIn=$cNonceExpiresIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credential'] = this.credential;
      json[r'c_nonce'] = this.cNonce;
      json[r'c_nonce_expires_in'] = this.cNonceExpiresIn;
    return json;
  }

  /// Returns a new [CredentialResponseImmediate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialResponseImmediate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialResponseImmediate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialResponseImmediate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialResponseImmediate(
        credential: CredentialResponseImmediateCredential.fromJson(json[r'credential'])!,
        cNonce: mapValueOfType<String>(json, r'c_nonce')!,
        cNonceExpiresIn: CredentialResponseImmediateCNonceExpiresIn.fromJson(json[r'c_nonce_expires_in'])!,
      );
    }
    return null;
  }

  static List<CredentialResponseImmediate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialResponseImmediate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialResponseImmediate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialResponseImmediate> mapFromJson(dynamic json) {
    final map = <String, CredentialResponseImmediate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialResponseImmediate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialResponseImmediate-objects as value to a dart map
  static Map<String, List<CredentialResponseImmediate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialResponseImmediate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialResponseImmediate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credential',
    'c_nonce',
    'c_nonce_expires_in',
  };
}

