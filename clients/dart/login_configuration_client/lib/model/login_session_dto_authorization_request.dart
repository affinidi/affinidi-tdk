//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginSessionDtoAuthorizationRequest {
  /// Returns a new [LoginSessionDtoAuthorizationRequest] instance.
  LoginSessionDtoAuthorizationRequest({
    required this.state,
    required this.presentationDefinition,
    this.ari,
    this.clientId,
    this.nonce,
  });

  /// State parameter
  String state;

  /// Presentation Definition to ask from the user. In JSON Stringify format.
  String presentationDefinition;

  /// ARI is used for analytics proposals.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ari;

  /// clientId used for detect origin.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientId;

  /// nonce for VP Token proof challenge
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nonce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSessionDtoAuthorizationRequest &&
    other.state == state &&
    other.presentationDefinition == presentationDefinition &&
    other.ari == ari &&
    other.clientId == clientId &&
    other.nonce == nonce;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (state.hashCode) +
    (presentationDefinition.hashCode) +
    (ari == null ? 0 : ari!.hashCode) +
    (clientId == null ? 0 : clientId!.hashCode) +
    (nonce == null ? 0 : nonce!.hashCode);

  @override
  String toString() => 'LoginSessionDtoAuthorizationRequest[state=$state, presentationDefinition=$presentationDefinition, ari=$ari, clientId=$clientId, nonce=$nonce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'state'] = this.state;
      json[r'presentationDefinition'] = this.presentationDefinition;
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
    if (this.clientId != null) {
      json[r'clientId'] = this.clientId;
    } else {
      json[r'clientId'] = null;
    }
    if (this.nonce != null) {
      json[r'nonce'] = this.nonce;
    } else {
      json[r'nonce'] = null;
    }
    return json;
  }

  /// Returns a new [LoginSessionDtoAuthorizationRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSessionDtoAuthorizationRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginSessionDtoAuthorizationRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginSessionDtoAuthorizationRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginSessionDtoAuthorizationRequest(
        state: mapValueOfType<String>(json, r'state')!,
        presentationDefinition: mapValueOfType<String>(json, r'presentationDefinition')!,
        ari: mapValueOfType<String>(json, r'ari'),
        clientId: mapValueOfType<String>(json, r'clientId'),
        nonce: mapValueOfType<String>(json, r'nonce'),
      );
    }
    return null;
  }

  static List<LoginSessionDtoAuthorizationRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionDtoAuthorizationRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionDtoAuthorizationRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSessionDtoAuthorizationRequest> mapFromJson(dynamic json) {
    final map = <String, LoginSessionDtoAuthorizationRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSessionDtoAuthorizationRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSessionDtoAuthorizationRequest-objects as value to a dart map
  static Map<String, List<LoginSessionDtoAuthorizationRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSessionDtoAuthorizationRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSessionDtoAuthorizationRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'state',
    'presentationDefinition',
  };
}

