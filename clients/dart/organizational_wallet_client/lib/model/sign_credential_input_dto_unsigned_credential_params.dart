//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignCredentialInputDtoUnsignedCredentialParams {
  /// Returns a new [SignCredentialInputDtoUnsignedCredentialParams] instance.
  SignCredentialInputDtoUnsignedCredentialParams({
    required this.jsonLdContextUrl,
    required this.jsonSchemaUrl,
    required this.typeName,
    this.credentialSubject = const {},
    required this.holderDid,
    required this.expiresAt,
  });

  String jsonLdContextUrl;

  String jsonSchemaUrl;

  String typeName;

  Map<String, Object> credentialSubject;

  String holderDid;

  String expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignCredentialInputDtoUnsignedCredentialParams &&
    other.jsonLdContextUrl == jsonLdContextUrl &&
    other.jsonSchemaUrl == jsonSchemaUrl &&
    other.typeName == typeName &&
    _deepEquality.equals(other.credentialSubject, credentialSubject) &&
    other.holderDid == holderDid &&
    other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jsonLdContextUrl.hashCode) +
    (jsonSchemaUrl.hashCode) +
    (typeName.hashCode) +
    (credentialSubject.hashCode) +
    (holderDid.hashCode) +
    (expiresAt.hashCode);

  @override
  String toString() => 'SignCredentialInputDtoUnsignedCredentialParams[jsonLdContextUrl=$jsonLdContextUrl, jsonSchemaUrl=$jsonSchemaUrl, typeName=$typeName, credentialSubject=$credentialSubject, holderDid=$holderDid, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jsonLdContextUrl'] = this.jsonLdContextUrl;
      json[r'jsonSchemaUrl'] = this.jsonSchemaUrl;
      json[r'typeName'] = this.typeName;
      json[r'credentialSubject'] = this.credentialSubject;
      json[r'holderDid'] = this.holderDid;
      json[r'expiresAt'] = this.expiresAt;
    return json;
  }

  /// Returns a new [SignCredentialInputDtoUnsignedCredentialParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignCredentialInputDtoUnsignedCredentialParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignCredentialInputDtoUnsignedCredentialParams[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignCredentialInputDtoUnsignedCredentialParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignCredentialInputDtoUnsignedCredentialParams(
        jsonLdContextUrl: mapValueOfType<String>(json, r'jsonLdContextUrl')!,
        jsonSchemaUrl: mapValueOfType<String>(json, r'jsonSchemaUrl')!,
        typeName: mapValueOfType<String>(json, r'typeName')!,
        credentialSubject: mapCastOfType<String, Object>(json, r'credentialSubject')!,
        holderDid: mapValueOfType<String>(json, r'holderDid')!,
        expiresAt: mapValueOfType<String>(json, r'expiresAt')!,
      );
    }
    return null;
  }

  static List<SignCredentialInputDtoUnsignedCredentialParams> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignCredentialInputDtoUnsignedCredentialParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCredentialInputDtoUnsignedCredentialParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignCredentialInputDtoUnsignedCredentialParams> mapFromJson(dynamic json) {
    final map = <String, SignCredentialInputDtoUnsignedCredentialParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignCredentialInputDtoUnsignedCredentialParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignCredentialInputDtoUnsignedCredentialParams-objects as value to a dart map
  static Map<String, List<SignCredentialInputDtoUnsignedCredentialParams>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignCredentialInputDtoUnsignedCredentialParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignCredentialInputDtoUnsignedCredentialParams.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jsonLdContextUrl',
    'jsonSchemaUrl',
    'typeName',
    'credentialSubject',
    'holderDid',
    'expiresAt',
  };
}

