//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginSessionRejectResponseRequest {
  /// Returns a new [LoginSessionRejectResponseRequest] instance.
  LoginSessionRejectResponseRequest({
    this.error,
    this.errorDescription,
    required this.state,
  });

  /// The error should follow the OAuth2 error format (e.g. invalid_request, login_required). Defaults to request_denied
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Description of the error in a human readable format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorDescription;

  /// Random state associated to the Session
  String state;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSessionRejectResponseRequest &&
    other.error == error &&
    other.errorDescription == errorDescription &&
    other.state == state;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (errorDescription == null ? 0 : errorDescription!.hashCode) +
    (state.hashCode);

  @override
  String toString() => 'LoginSessionRejectResponseRequest[error=$error, errorDescription=$errorDescription, state=$state]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.errorDescription != null) {
      json[r'errorDescription'] = this.errorDescription;
    } else {
      json[r'errorDescription'] = null;
    }
      json[r'state'] = this.state;
    return json;
  }

  /// Returns a new [LoginSessionRejectResponseRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSessionRejectResponseRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginSessionRejectResponseRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginSessionRejectResponseRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginSessionRejectResponseRequest(
        error: mapValueOfType<String>(json, r'error'),
        errorDescription: mapValueOfType<String>(json, r'errorDescription'),
        state: mapValueOfType<String>(json, r'state')!,
      );
    }
    return null;
  }

  static List<LoginSessionRejectResponseRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionRejectResponseRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionRejectResponseRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSessionRejectResponseRequest> mapFromJson(dynamic json) {
    final map = <String, LoginSessionRejectResponseRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSessionRejectResponseRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSessionRejectResponseRequest-objects as value to a dart map
  static Map<String, List<LoginSessionRejectResponseRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSessionRejectResponseRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSessionRejectResponseRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'state',
  };
}

