//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignCredentialInputDto {
  /// Returns a new [SignCredentialInputDto] instance.
  SignCredentialInputDto({
    this.unsignedCredential,
    this.revocable,
    this.unsignedCredentialParams,
  });

  /// Unsiged Credential. If provided \"unsignedCredentialParams\" is not accepted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? unsignedCredential;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? revocable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SignCredentialInputDtoUnsignedCredentialParams? unsignedCredentialParams;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignCredentialInputDto &&
    other.unsignedCredential == unsignedCredential &&
    other.revocable == revocable &&
    other.unsignedCredentialParams == unsignedCredentialParams;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (unsignedCredential == null ? 0 : unsignedCredential!.hashCode) +
    (revocable == null ? 0 : revocable!.hashCode) +
    (unsignedCredentialParams == null ? 0 : unsignedCredentialParams!.hashCode);

  @override
  String toString() => 'SignCredentialInputDto[unsignedCredential=$unsignedCredential, revocable=$revocable, unsignedCredentialParams=$unsignedCredentialParams]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.unsignedCredential != null) {
      json[r'unsignedCredential'] = this.unsignedCredential;
    } else {
      json[r'unsignedCredential'] = null;
    }
    if (this.revocable != null) {
      json[r'revocable'] = this.revocable;
    } else {
      json[r'revocable'] = null;
    }
    if (this.unsignedCredentialParams != null) {
      json[r'unsignedCredentialParams'] = this.unsignedCredentialParams;
    } else {
      json[r'unsignedCredentialParams'] = null;
    }
    return json;
  }

  /// Returns a new [SignCredentialInputDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignCredentialInputDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignCredentialInputDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignCredentialInputDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignCredentialInputDto(
        unsignedCredential: mapValueOfType<Object>(json, r'unsignedCredential'),
        revocable: mapValueOfType<bool>(json, r'revocable'),
        unsignedCredentialParams: SignCredentialInputDtoUnsignedCredentialParams.fromJson(json[r'unsignedCredentialParams']),
      );
    }
    return null;
  }

  static List<SignCredentialInputDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignCredentialInputDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCredentialInputDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignCredentialInputDto> mapFromJson(dynamic json) {
    final map = <String, SignCredentialInputDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignCredentialInputDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignCredentialInputDto-objects as value to a dart map
  static Map<String, List<SignCredentialInputDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignCredentialInputDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignCredentialInputDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

