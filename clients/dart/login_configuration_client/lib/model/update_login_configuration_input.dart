//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateLoginConfigurationInput {
  /// Returns a new [UpdateLoginConfigurationInput] instance.
  UpdateLoginConfigurationInput({
    this.name,
    this.redirectUris = const [],
    this.postLogoutRedirectUris = const [],
    this.clientSecret,
    this.vpDefinition,
    this.presentationDefinition,
    this.clientMetadata,
    this.tokenEndpointAuthMethod,
    this.failOnMappingConflict,
  });

  /// User defined login configuration name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// OAuth 2.0 Redirect URIs
  List<String> redirectUris;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  List<String> postLogoutRedirectUris;

  /// OAuth2 client secret
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// VP definition in JSON stringify format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vpDefinition;

  /// Presentation Definition
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
  LoginConfigurationClientMetadataInput? clientMetadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TokenEndpointAuthMethod? tokenEndpointAuthMethod;

  /// Interrupts login process if duplications of data fields names will be found
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? failOnMappingConflict;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateLoginConfigurationInput &&
    other.name == name &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    _deepEquality.equals(other.postLogoutRedirectUris, postLogoutRedirectUris) &&
    other.clientSecret == clientSecret &&
    other.vpDefinition == vpDefinition &&
    other.presentationDefinition == presentationDefinition &&
    other.clientMetadata == clientMetadata &&
    other.tokenEndpointAuthMethod == tokenEndpointAuthMethod &&
    other.failOnMappingConflict == failOnMappingConflict;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (redirectUris.hashCode) +
    (postLogoutRedirectUris.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (vpDefinition == null ? 0 : vpDefinition!.hashCode) +
    (presentationDefinition == null ? 0 : presentationDefinition!.hashCode) +
    (clientMetadata == null ? 0 : clientMetadata!.hashCode) +
    (tokenEndpointAuthMethod == null ? 0 : tokenEndpointAuthMethod!.hashCode) +
    (failOnMappingConflict == null ? 0 : failOnMappingConflict!.hashCode);

  @override
  String toString() => 'UpdateLoginConfigurationInput[name=$name, redirectUris=$redirectUris, postLogoutRedirectUris=$postLogoutRedirectUris, clientSecret=$clientSecret, vpDefinition=$vpDefinition, presentationDefinition=$presentationDefinition, clientMetadata=$clientMetadata, tokenEndpointAuthMethod=$tokenEndpointAuthMethod, failOnMappingConflict=$failOnMappingConflict]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'redirectUris'] = this.redirectUris;
      json[r'postLogoutRedirectUris'] = this.postLogoutRedirectUris;
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
    if (this.vpDefinition != null) {
      json[r'vpDefinition'] = this.vpDefinition;
    } else {
      json[r'vpDefinition'] = null;
    }
    if (this.presentationDefinition != null) {
      json[r'presentationDefinition'] = this.presentationDefinition;
    } else {
      json[r'presentationDefinition'] = null;
    }
    if (this.clientMetadata != null) {
      json[r'clientMetadata'] = this.clientMetadata;
    } else {
      json[r'clientMetadata'] = null;
    }
    if (this.tokenEndpointAuthMethod != null) {
      json[r'tokenEndpointAuthMethod'] = this.tokenEndpointAuthMethod;
    } else {
      json[r'tokenEndpointAuthMethod'] = null;
    }
    if (this.failOnMappingConflict != null) {
      json[r'failOnMappingConflict'] = this.failOnMappingConflict;
    } else {
      json[r'failOnMappingConflict'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateLoginConfigurationInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateLoginConfigurationInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateLoginConfigurationInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateLoginConfigurationInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateLoginConfigurationInput(
        name: mapValueOfType<String>(json, r'name'),
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        postLogoutRedirectUris: json[r'postLogoutRedirectUris'] is Iterable
            ? (json[r'postLogoutRedirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        vpDefinition: mapValueOfType<String>(json, r'vpDefinition'),
        presentationDefinition: mapValueOfType<Object>(json, r'presentationDefinition'),
        clientMetadata: LoginConfigurationClientMetadataInput.fromJson(json[r'clientMetadata']),
        tokenEndpointAuthMethod: TokenEndpointAuthMethod.fromJson(json[r'tokenEndpointAuthMethod']),
        failOnMappingConflict: mapValueOfType<bool>(json, r'failOnMappingConflict'),
      );
    }
    return null;
  }

  static List<UpdateLoginConfigurationInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateLoginConfigurationInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateLoginConfigurationInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateLoginConfigurationInput> mapFromJson(dynamic json) {
    final map = <String, UpdateLoginConfigurationInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateLoginConfigurationInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateLoginConfigurationInput-objects as value to a dart map
  static Map<String, List<UpdateLoginConfigurationInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateLoginConfigurationInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateLoginConfigurationInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

