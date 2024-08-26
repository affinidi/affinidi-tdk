//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyPresentationInput {
  /// Returns a new [VerifyPresentationInput] instance.
  VerifyPresentationInput({
    this.verifiablePresentation,
    this.signedPresentation,
    this.presentationDefinition,
    this.presentationSubmission,
    this.challenge,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  W3cPresentation? verifiablePresentation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  W3cPresentation? signedPresentation;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? presentationDefinition;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? presentationSubmission;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? challenge;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyPresentationInput &&
    other.verifiablePresentation == verifiablePresentation &&
    other.signedPresentation == signedPresentation &&
    other.presentationDefinition == presentationDefinition &&
    other.presentationSubmission == presentationSubmission &&
    other.challenge == challenge;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (verifiablePresentation == null ? 0 : verifiablePresentation!.hashCode) +
    (signedPresentation == null ? 0 : signedPresentation!.hashCode) +
    (presentationDefinition == null ? 0 : presentationDefinition!.hashCode) +
    (presentationSubmission == null ? 0 : presentationSubmission!.hashCode) +
    (challenge == null ? 0 : challenge!.hashCode);

  @override
  String toString() => 'VerifyPresentationInput[verifiablePresentation=$verifiablePresentation, signedPresentation=$signedPresentation, presentationDefinition=$presentationDefinition, presentationSubmission=$presentationSubmission, challenge=$challenge]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.verifiablePresentation != null) {
      json[r'verifiablePresentation'] = this.verifiablePresentation;
    } else {
      json[r'verifiablePresentation'] = null;
    }
    if (this.signedPresentation != null) {
      json[r'signedPresentation'] = this.signedPresentation;
    } else {
      json[r'signedPresentation'] = null;
    }
    if (this.presentationDefinition != null) {
      json[r'presentationDefinition'] = this.presentationDefinition;
    } else {
      json[r'presentationDefinition'] = null;
    }
    if (this.presentationSubmission != null) {
      json[r'presentationSubmission'] = this.presentationSubmission;
    } else {
      json[r'presentationSubmission'] = null;
    }
    if (this.challenge != null) {
      json[r'challenge'] = this.challenge;
    } else {
      json[r'challenge'] = null;
    }
    return json;
  }

  /// Returns a new [VerifyPresentationInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyPresentationInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyPresentationInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyPresentationInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyPresentationInput(
        verifiablePresentation: W3cPresentation.fromJson(json[r'verifiablePresentation']),
        signedPresentation: W3cPresentation.fromJson(json[r'signedPresentation']),
        presentationDefinition: mapValueOfType<Object>(json, r'presentationDefinition'),
        presentationSubmission: mapValueOfType<Object>(json, r'presentationSubmission'),
        challenge: mapValueOfType<String>(json, r'challenge'),
      );
    }
    return null;
  }

  static List<VerifyPresentationInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyPresentationInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyPresentationInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyPresentationInput> mapFromJson(dynamic json) {
    final map = <String, VerifyPresentationInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyPresentationInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyPresentationInput-objects as value to a dart map
  static Map<String, List<VerifyPresentationInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyPresentationInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyPresentationInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

