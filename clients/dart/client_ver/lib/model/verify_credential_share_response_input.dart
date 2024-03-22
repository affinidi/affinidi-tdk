//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyCredentialShareResponseInput {
  /// Returns a new [VerifyCredentialShareResponseInput] instance.
  VerifyCredentialShareResponseInput({
    this.credentialShareRequestToken,
    required this.credentialShareResponseToken,
    this.isHolderMustBeSubject,
  });

  /// Token of the credential share request
  String? credentialShareRequestToken;

  /// Token of the credential share response
  String credentialShareResponseToken;

  /// Defines if holder did should be a subject
  bool? isHolderMustBeSubject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyCredentialShareResponseInput &&
    other.credentialShareRequestToken == credentialShareRequestToken &&
    other.credentialShareResponseToken == credentialShareResponseToken &&
    other.isHolderMustBeSubject == isHolderMustBeSubject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialShareRequestToken == null ? 0 : credentialShareRequestToken!.hashCode) +
    (credentialShareResponseToken.hashCode) +
    (isHolderMustBeSubject == null ? 0 : isHolderMustBeSubject!.hashCode);

  @override
  String toString() => 'VerifyCredentialShareResponseInput[credentialShareRequestToken=$credentialShareRequestToken, credentialShareResponseToken=$credentialShareResponseToken, isHolderMustBeSubject=$isHolderMustBeSubject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentialShareRequestToken != null) {
      json[r'credentialShareRequestToken'] = this.credentialShareRequestToken;
    } else {
      json[r'credentialShareRequestToken'] = null;
    }
      json[r'credentialShareResponseToken'] = this.credentialShareResponseToken;
    if (this.isHolderMustBeSubject != null) {
      json[r'isHolderMustBeSubject'] = this.isHolderMustBeSubject;
    } else {
      json[r'isHolderMustBeSubject'] = null;
    }
    return json;
  }

  /// Returns a new [VerifyCredentialShareResponseInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyCredentialShareResponseInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyCredentialShareResponseInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyCredentialShareResponseInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyCredentialShareResponseInput(
        credentialShareRequestToken: mapValueOfType<String>(json, r'credentialShareRequestToken'),
        credentialShareResponseToken: mapValueOfType<String>(json, r'credentialShareResponseToken')!,
        isHolderMustBeSubject: mapValueOfType<bool>(json, r'isHolderMustBeSubject'),
      );
    }
    return null;
  }

  static List<VerifyCredentialShareResponseInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyCredentialShareResponseInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyCredentialShareResponseInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyCredentialShareResponseInput> mapFromJson(dynamic json) {
    final map = <String, VerifyCredentialShareResponseInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyCredentialShareResponseInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyCredentialShareResponseInput-objects as value to a dart map
  static Map<String, List<VerifyCredentialShareResponseInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyCredentialShareResponseInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyCredentialShareResponseInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialShareResponseToken',
  };
}

