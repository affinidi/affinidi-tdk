//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CallbackInput {
  /// Returns a new [CallbackInput] instance.
  CallbackInput({
    required this.state,
    required this.presentationSubmission,
    required this.vpToken,
  });

  String state;

  String presentationSubmission;

  String vpToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallbackInput &&
    other.state == state &&
    other.presentationSubmission == presentationSubmission &&
    other.vpToken == vpToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (state.hashCode) +
    (presentationSubmission.hashCode) +
    (vpToken.hashCode);

  @override
  String toString() => 'CallbackInput[state=$state, presentationSubmission=$presentationSubmission, vpToken=$vpToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = this.state;
      json[r'presentation_submission'] = this.presentationSubmission;
      json[r'vp_token'] = this.vpToken;
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
        presentationSubmission: mapValueOfType<String>(json, r'presentation_submission')!,
        vpToken: mapValueOfType<String>(json, r'vp_token')!,
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
    'presentation_submission',
    'vp_token',
  };
}

