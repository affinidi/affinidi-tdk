//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CallbackInput {
  /// Returns a new [CallbackInput] instance.
  CallbackInput({
    required this.state,
    this.presentationSubmission,
    this.vpToken,
    this.error,
    this.errorDescription,
    this.onboarded,
  });

  /// A randomly generated string that follows a valid UUID (version 1-5) format to validate the session.
  String state;

  /// A JSON string format that describes the link between the Verifiable Presentation and Presentation Definition for the verifier. The presentation submission follows the OID4VP standard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? presentationSubmission;

  /// A JSON string format containing the data the user consented to share in a Verifiable Presentation format. The VP Token follows the OID4VP standard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vpToken;

  /// A short string indicating the error code reported by the service. It follows the OAuth 2.0 error code format (e.g., invalid_request, access_denied). The default is access_denied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// A human-readable description that provides detailed information about the error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorDescription;

  /// It specifies whether the data sharing flow triggered an onboarding process to the Affinidi Vault [New User].
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? onboarded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallbackInput &&
    other.state == state &&
    other.presentationSubmission == presentationSubmission &&
    other.vpToken == vpToken &&
    other.error == error &&
    other.errorDescription == errorDescription &&
    other.onboarded == onboarded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (state.hashCode) +
    (presentationSubmission == null ? 0 : presentationSubmission!.hashCode) +
    (vpToken == null ? 0 : vpToken!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (errorDescription == null ? 0 : errorDescription!.hashCode) +
    (onboarded == null ? 0 : onboarded!.hashCode);

  @override
  String toString() => 'CallbackInput[state=$state, presentationSubmission=$presentationSubmission, vpToken=$vpToken, error=$error, errorDescription=$errorDescription, onboarded=$onboarded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = this.state;
    if (this.presentationSubmission != null) {
      json[r'presentation_submission'] = this.presentationSubmission;
    } else {
      json[r'presentation_submission'] = null;
    }
    if (this.vpToken != null) {
      json[r'vp_token'] = this.vpToken;
    } else {
      json[r'vp_token'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.errorDescription != null) {
      json[r'error_description'] = this.errorDescription;
    } else {
      json[r'error_description'] = null;
    }
    if (this.onboarded != null) {
      json[r'onboarded'] = this.onboarded;
    } else {
      json[r'onboarded'] = null;
    }
    return json;
  }

  /// Returns a new [CallbackInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallbackInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CallbackInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CallbackInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallbackInput(
        state: mapValueOfType<String>(json, r'state')!,
        presentationSubmission: mapValueOfType<String>(json, r'presentation_submission'),
        vpToken: mapValueOfType<String>(json, r'vp_token'),
        error: mapValueOfType<String>(json, r'error'),
        errorDescription: mapValueOfType<String>(json, r'error_description'),
        onboarded: mapValueOfType<bool>(json, r'onboarded'),
      );
    }
    return null;
  }

  static List<CallbackInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallbackInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallbackInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallbackInput> mapFromJson(dynamic json) {
    final map = <String, CallbackInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallbackInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallbackInput-objects as value to a dart map
  static Map<String, List<CallbackInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CallbackInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallbackInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'state',
  };
}

