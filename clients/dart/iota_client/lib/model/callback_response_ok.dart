//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CallbackResponseOK {
  /// Returns a new [CallbackResponseOK] instance.
  CallbackResponseOK({
    required this.message,
    this.redirectResponse,
  });

  /// A message to vault that flow is updated successfully
  String message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CallbackResponseOKRedirectResponse? redirectResponse;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CallbackResponseOK &&
    other.message == message &&
    other.redirectResponse == redirectResponse;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (redirectResponse == null ? 0 : redirectResponse!.hashCode);

  @override
  String toString() => 'CallbackResponseOK[message=$message, redirectResponse=$redirectResponse]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
    if (this.redirectResponse != null) {
      json[r'redirectResponse'] = this.redirectResponse;
    } else {
      json[r'redirectResponse'] = null;
    }
    return json;
  }

  /// Returns a new [CallbackResponseOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CallbackResponseOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CallbackResponseOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CallbackResponseOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CallbackResponseOK(
        message: mapValueOfType<String>(json, r'message')!,
        redirectResponse: CallbackResponseOKRedirectResponse.fromJson(json[r'redirectResponse']),
      );
    }
    return null;
  }

  static List<CallbackResponseOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CallbackResponseOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CallbackResponseOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CallbackResponseOK> mapFromJson(dynamic json) {
    final map = <String, CallbackResponseOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CallbackResponseOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CallbackResponseOK-objects as value to a dart map
  static Map<String, List<CallbackResponseOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CallbackResponseOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CallbackResponseOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
  };
}

