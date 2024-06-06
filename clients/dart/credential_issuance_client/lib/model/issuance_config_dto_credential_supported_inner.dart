//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuanceConfigDtoCredentialSupportedInner {
  /// Returns a new [IssuanceConfigDtoCredentialSupportedInner] instance.
  IssuanceConfigDtoCredentialSupportedInner({
    required this.credentialTypeId,
    required this.jsonSchemaUrl,
    required this.jsonLdContextUrl,
  });

  /// It is a String that identifies a Credential that is being requested to be issued.
  String credentialTypeId;

  /// credential jsonLdContextUrl
  String jsonSchemaUrl;

  /// credential jsonSchemaUrl
  String jsonLdContextUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuanceConfigDtoCredentialSupportedInner &&
    other.credentialTypeId == credentialTypeId &&
    other.jsonSchemaUrl == jsonSchemaUrl &&
    other.jsonLdContextUrl == jsonLdContextUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialTypeId.hashCode) +
    (jsonSchemaUrl.hashCode) +
    (jsonLdContextUrl.hashCode);

  @override
  String toString() => 'IssuanceConfigDtoCredentialSupportedInner[credentialTypeId=$credentialTypeId, jsonSchemaUrl=$jsonSchemaUrl, jsonLdContextUrl=$jsonLdContextUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credentialTypeId'] = this.credentialTypeId;
      json[r'jsonSchemaUrl'] = this.jsonSchemaUrl;
      json[r'jsonLdContextUrl'] = this.jsonLdContextUrl;
    return json;
  }

  /// Returns a new [IssuanceConfigDtoCredentialSupportedInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuanceConfigDtoCredentialSupportedInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssuanceConfigDtoCredentialSupportedInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssuanceConfigDtoCredentialSupportedInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssuanceConfigDtoCredentialSupportedInner(
        credentialTypeId: mapValueOfType<String>(json, r'credentialTypeId')!,
        jsonSchemaUrl: mapValueOfType<String>(json, r'jsonSchemaUrl')!,
        jsonLdContextUrl: mapValueOfType<String>(json, r'jsonLdContextUrl')!,
      );
    }
    return null;
  }

  static List<IssuanceConfigDtoCredentialSupportedInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceConfigDtoCredentialSupportedInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceConfigDtoCredentialSupportedInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuanceConfigDtoCredentialSupportedInner> mapFromJson(dynamic json) {
    final map = <String, IssuanceConfigDtoCredentialSupportedInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuanceConfigDtoCredentialSupportedInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuanceConfigDtoCredentialSupportedInner-objects as value to a dart map
  static Map<String, List<IssuanceConfigDtoCredentialSupportedInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuanceConfigDtoCredentialSupportedInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuanceConfigDtoCredentialSupportedInner.listFromJson(entry.value, growable: growable,);
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

