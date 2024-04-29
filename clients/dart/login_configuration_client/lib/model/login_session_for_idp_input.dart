//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginSessionForIDPInput {
  /// Returns a new [LoginSessionForIDPInput] instance.
  LoginSessionForIDPInput({
    required this.loginChallenge,
    required this.clientId,
  });

  /// IDP Login Challenge to Associate the Session with
  String loginChallenge;

  /// IDP client id to Associate the Session with
  String clientId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSessionForIDPInput &&
    other.loginChallenge == loginChallenge &&
    other.clientId == clientId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (loginChallenge.hashCode) +
    (clientId.hashCode);

  @override
  String toString() => 'LoginSessionForIDPInput[loginChallenge=$loginChallenge, clientId=$clientId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'loginChallenge'] = this.loginChallenge;
      json[r'clientId'] = this.clientId;
    return json;
  }

  /// Returns a new [LoginSessionForIDPInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSessionForIDPInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginSessionForIDPInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginSessionForIDPInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginSessionForIDPInput(
        loginChallenge: mapValueOfType<String>(json, r'loginChallenge')!,
        clientId: mapValueOfType<String>(json, r'clientId')!,
      );
    }
    return null;
  }

  static List<LoginSessionForIDPInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionForIDPInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionForIDPInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSessionForIDPInput> mapFromJson(dynamic json) {
    final map = <String, LoginSessionForIDPInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSessionForIDPInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSessionForIDPInput-objects as value to a dart map
  static Map<String, List<LoginSessionForIDPInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSessionForIDPInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSessionForIDPInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'loginChallenge',
    'clientId',
  };
}

