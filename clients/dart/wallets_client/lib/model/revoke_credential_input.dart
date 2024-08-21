//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevokeCredentialInput {
  /// Returns a new [RevokeCredentialInput] instance.
  RevokeCredentialInput({
    this.revocationReason,
    this.credentialId,
  });

  String? revocationReason;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? credentialId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevokeCredentialInput &&
    other.revocationReason == revocationReason &&
    other.credentialId == credentialId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (revocationReason == null ? 0 : revocationReason!.hashCode) +
    (credentialId == null ? 0 : credentialId!.hashCode);

  @override
  String toString() => 'RevokeCredentialInput[revocationReason=$revocationReason, credentialId=$credentialId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.revocationReason != null) {
      json[r'revocationReason'] = this.revocationReason;
    } else {
      json[r'revocationReason'] = null;
    }
    if (this.credentialId != null) {
      json[r'credentialId'] = this.credentialId;
    } else {
      json[r'credentialId'] = null;
    }
    return json;
  }

  /// Returns a new [RevokeCredentialInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevokeCredentialInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevokeCredentialInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevokeCredentialInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevokeCredentialInput(
        revocationReason: mapValueOfType<String>(json, r'revocationReason'),
        credentialId: mapValueOfType<String>(json, r'credentialId'),
      );
    }
    return null;
  }

  static List<RevokeCredentialInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevokeCredentialInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevokeCredentialInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevokeCredentialInput> mapFromJson(dynamic json) {
    final map = <String, RevokeCredentialInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevokeCredentialInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevokeCredentialInput-objects as value to a dart map
  static Map<String, List<RevokeCredentialInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevokeCredentialInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevokeCredentialInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

