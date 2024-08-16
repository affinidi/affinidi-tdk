//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialSupportedObject {
  /// Returns a new [CredentialSupportedObject] instance.
  CredentialSupportedObject({
    required this.credentialTypeId,
    required this.jsonSchemaUrl,
    required this.jsonLdContextUrl,
    this.metadata,
  });

  /// It is a String that identifies a Credential that is being requested to be issued.
  String credentialTypeId;

  /// credential jsonLdContextUrl
  String jsonSchemaUrl;

  /// credential jsonSchemaUrl
  String jsonLdContextUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SupportedCredentialMetadata? metadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialSupportedObject &&
    other.credentialTypeId == credentialTypeId &&
    other.jsonSchemaUrl == jsonSchemaUrl &&
    other.jsonLdContextUrl == jsonLdContextUrl &&
    other.metadata == metadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialTypeId.hashCode) +
    (jsonSchemaUrl.hashCode) +
    (jsonLdContextUrl.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode);

  @override
  String toString() => 'CredentialSupportedObject[credentialTypeId=$credentialTypeId, jsonSchemaUrl=$jsonSchemaUrl, jsonLdContextUrl=$jsonLdContextUrl, metadata=$metadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credentialTypeId'] = this.credentialTypeId;
      json[r'jsonSchemaUrl'] = this.jsonSchemaUrl;
      json[r'jsonLdContextUrl'] = this.jsonLdContextUrl;
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    return json;
  }

  /// Returns a new [CredentialSupportedObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialSupportedObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialSupportedObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialSupportedObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialSupportedObject(
        credentialTypeId: mapValueOfType<String>(json, r'credentialTypeId')!,
        jsonSchemaUrl: mapValueOfType<String>(json, r'jsonSchemaUrl')!,
        jsonLdContextUrl: mapValueOfType<String>(json, r'jsonLdContextUrl')!,
        metadata: SupportedCredentialMetadata.fromJson(json[r'metadata']),
      );
    }
    return null;
  }

  static List<CredentialSupportedObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialSupportedObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialSupportedObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialSupportedObject> mapFromJson(dynamic json) {
    final map = <String, CredentialSupportedObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialSupportedObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialSupportedObject-objects as value to a dart map
  static Map<String, List<CredentialSupportedObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialSupportedObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialSupportedObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialTypeId',
    'jsonSchemaUrl',
    'jsonLdContextUrl',
  };
}

