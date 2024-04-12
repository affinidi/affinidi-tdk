//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyCredentialInput {
  /// Returns a new [VerifyCredentialInput] instance.
  VerifyCredentialInput({
    this.verifiableCredentials = const [],
    this.issuerDidDocument,
  });

  /// List of VCs
  List<W3cCredential> verifiableCredentials;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeFormObject? issuerDidDocument;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyCredentialInput &&
    _deepEquality.equals(other.verifiableCredentials, verifiableCredentials) &&
    other.issuerDidDocument == issuerDidDocument;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (verifiableCredentials.hashCode) +
    (issuerDidDocument == null ? 0 : issuerDidDocument!.hashCode);

  @override
  String toString() => 'VerifyCredentialInput[verifiableCredentials=$verifiableCredentials, issuerDidDocument=$issuerDidDocument]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'verifiableCredentials'] = this.verifiableCredentials;
    if (this.issuerDidDocument != null) {
      json[r'issuerDidDocument'] = this.issuerDidDocument;
    } else {
      json[r'issuerDidDocument'] = null;
    }
    return json;
  }

  /// Returns a new [VerifyCredentialInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyCredentialInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyCredentialInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyCredentialInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyCredentialInput(
        verifiableCredentials: W3cCredential.listFromJson(json[r'verifiableCredentials']),
        issuerDidDocument: FreeFormObject.fromJson(json[r'issuerDidDocument']),
      );
    }
    return null;
  }

  static List<VerifyCredentialInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyCredentialInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyCredentialInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyCredentialInput> mapFromJson(dynamic json) {
    final map = <String, VerifyCredentialInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyCredentialInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyCredentialInput-objects as value to a dart map
  static Map<String, List<VerifyCredentialInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyCredentialInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyCredentialInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'verifiableCredentials',
  };
}

