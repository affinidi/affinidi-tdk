//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateCredentialInput {
  /// Returns a new [CreateCredentialInput] instance.
  CreateCredentialInput({
    this.credentialIdentifier,
    required this.proof,
  });

  /// It is a String that identifies a Credential that is being requested to be issued.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialIdentifier;

  CredentialProof proof;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateCredentialInput &&
    other.credentialIdentifier == credentialIdentifier &&
    other.proof == proof;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialIdentifier == null ? 0 : credentialIdentifier!.hashCode) +
    (proof.hashCode);

  @override
  String toString() => 'CreateCredentialInput[credentialIdentifier=$credentialIdentifier, proof=$proof]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentialIdentifier != null) {
      json[r'credential_identifier'] = this.credentialIdentifier;
    } else {
      json[r'credential_identifier'] = null;
    }
      json[r'proof'] = this.proof;
    return json;
  }

  /// Returns a new [CreateCredentialInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateCredentialInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateCredentialInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateCredentialInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateCredentialInput(
        credentialIdentifier: mapValueOfType<String>(json, r'credential_identifier'),
        proof: CredentialProof.fromJson(json[r'proof'])!,
      );
    }
    return null;
  }

  static List<CreateCredentialInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateCredentialInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateCredentialInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateCredentialInput> mapFromJson(dynamic json) {
    final map = <String, CreateCredentialInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateCredentialInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateCredentialInput-objects as value to a dart map
  static Map<String, List<CreateCredentialInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateCredentialInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateCredentialInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'proof',
  };
}

