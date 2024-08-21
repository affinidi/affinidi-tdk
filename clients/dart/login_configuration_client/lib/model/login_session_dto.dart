//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginSessionDto {
  /// Returns a new [LoginSessionDto] instance.
  LoginSessionDto({
    required this.id,
    required this.authorizationRequest,
  });

  /// Session primary identifier
  String id;

  LoginSessionDtoAuthorizationRequest authorizationRequest;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSessionDto &&
    other.id == id &&
    other.authorizationRequest == authorizationRequest;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (authorizationRequest.hashCode);

  @override
  String toString() => 'LoginSessionDto[id=$id, authorizationRequest=$authorizationRequest]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'authorizationRequest'] = this.authorizationRequest;
    return json;
  }

  /// Returns a new [LoginSessionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSessionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginSessionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginSessionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginSessionDto(
        id: mapValueOfType<String>(json, r'id')!,
        authorizationRequest: LoginSessionDtoAuthorizationRequest.fromJson(json[r'authorizationRequest'])!,
      );
    }
    return null;
  }

  static List<LoginSessionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSessionDto> mapFromJson(dynamic json) {
    final map = <String, LoginSessionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSessionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSessionDto-objects as value to a dart map
  static Map<String, List<LoginSessionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSessionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSessionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'authorizationRequest',
  };
}

