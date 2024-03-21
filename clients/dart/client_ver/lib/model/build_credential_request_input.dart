//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BuildCredentialRequestInput {
  /// Returns a new [BuildCredentialRequestInput] instance.
  BuildCredentialRequestInput({
    this.callbackUrl,
    this.credentialRequirements = const [],
    this.issuerDid,
    this.subjectDid,
    this.audienceDid,
    this.expiresAt,
    this.nonce,
  });

  /// Type of the URL
  String? callbackUrl;

  /// Requirements of the VC
  List<CredentialRequirements> credentialRequirements;

  /// Type of the DID
  String? issuerDid;

  /// Type of the DID
  String? subjectDid;

  /// Type of the DID
  String? audienceDid;

  /// Type of the Date ISO
  String? expiresAt;

  /// Credential request nonce
  String? nonce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BuildCredentialRequestInput &&
    other.callbackUrl == callbackUrl &&
    _deepEquality.equals(other.credentialRequirements, credentialRequirements) &&
    other.issuerDid == issuerDid &&
    other.subjectDid == subjectDid &&
    other.audienceDid == audienceDid &&
    other.expiresAt == expiresAt &&
    other.nonce == nonce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (callbackUrl == null ? 0 : callbackUrl!.hashCode) +
    (credentialRequirements.hashCode) +
    (issuerDid == null ? 0 : issuerDid!.hashCode) +
    (subjectDid == null ? 0 : subjectDid!.hashCode) +
    (audienceDid == null ? 0 : audienceDid!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode);

  @override
  String toString() => 'BuildCredentialRequestInput[callbackUrl=$callbackUrl, credentialRequirements=$credentialRequirements, issuerDid=$issuerDid, subjectDid=$subjectDid, audienceDid=$audienceDid, expiresAt=$expiresAt, nonce=$nonce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.callbackUrl != null) {
      json[r'callbackUrl'] = this.callbackUrl;
    } else {
      json[r'callbackUrl'] = null;
    }
      json[r'credentialRequirements'] = this.credentialRequirements;
    if (this.issuerDid != null) {
      json[r'issuerDid'] = this.issuerDid;
    } else {
      json[r'issuerDid'] = null;
    }
    if (this.subjectDid != null) {
      json[r'subjectDid'] = this.subjectDid;
    } else {
      json[r'subjectDid'] = null;
    }
    if (this.audienceDid != null) {
      json[r'audienceDid'] = this.audienceDid;
    } else {
      json[r'audienceDid'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt;
    } else {
      json[r'expiresAt'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    return json;
  }

  /// Returns a new [BuildCredentialRequestInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BuildCredentialRequestInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BuildCredentialRequestInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BuildCredentialRequestInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BuildCredentialRequestInput(
        callbackUrl: mapValueOfType<String>(json, r'callbackUrl'),
        credentialRequirements: CredentialRequirements.listFromJson(json[r'credentialRequirements']),
        issuerDid: mapValueOfType<String>(json, r'issuerDid'),
        subjectDid: mapValueOfType<String>(json, r'subjectDid'),
        audienceDid: mapValueOfType<String>(json, r'audienceDid'),
        expiresAt: mapValueOfType<String>(json, r'expiresAt'),
        nonce: mapValueOfType<String>(json, r'nonce'),
      );
    }
    return null;
  }

  static List<BuildCredentialRequestInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BuildCredentialRequestInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BuildCredentialRequestInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BuildCredentialRequestInput> mapFromJson(dynamic json) {
    final map = <String, BuildCredentialRequestInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BuildCredentialRequestInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BuildCredentialRequestInput-objects as value to a dart map
  static Map<String, List<BuildCredentialRequestInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BuildCredentialRequestInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BuildCredentialRequestInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialRequirements',
  };
}

