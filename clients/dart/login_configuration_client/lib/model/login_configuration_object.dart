//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginConfigurationObject {
  /// Returns a new [LoginConfigurationObject] instance.
  LoginConfigurationObject({
    required this.ari,
    this.configurationId,
    required this.projectId,
    required this.name,
    this.redirectUris = const [],
    this.postLogoutRedirectUris = const [],
    this.scope,
    required this.clientId,
    required this.creationDate,
    required this.vpDefinition,
    this.presentationDefinition,
    required this.clientMetadata,
    required this.tokenEndpointAuthMethod,
  });

  /// Configuration ari
  String ari;

  /// Configuration id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configurationId;

  /// Project id
  String projectId;

  /// User defined login configuration name
  String name;

  /// OAuth 2.0 Redirect URIs
  List<String> redirectUris;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  List<String> postLogoutRedirectUris;

  /// OAuth 2.0 Client Scope
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// OAuth 2.0 Client ID
  String clientId;

  /// OAuth 2.0 Client Creation Date
  String creationDate;

  /// VP definition in JSON stringify format
  String vpDefinition;

  /// Presentation Definition
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? presentationDefinition;

  LoginConfigurationClientMetadataOutput clientMetadata;

  TokenEndpointAuthMethod tokenEndpointAuthMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginConfigurationObject &&
    other.ari == ari &&
    other.configurationId == configurationId &&
    other.projectId == projectId &&
    other.name == name &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    _deepEquality.equals(other.postLogoutRedirectUris, postLogoutRedirectUris) &&
    other.scope == scope &&
    other.clientId == clientId &&
    other.creationDate == creationDate &&
    other.vpDefinition == vpDefinition &&
    other.presentationDefinition == presentationDefinition &&
    other.clientMetadata == clientMetadata &&
    other.tokenEndpointAuthMethod == tokenEndpointAuthMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ari.hashCode) +
    (configurationId == null ? 0 : configurationId!.hashCode) +
    (projectId.hashCode) +
    (name.hashCode) +
    (redirectUris.hashCode) +
    (postLogoutRedirectUris.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (clientId.hashCode) +
    (creationDate.hashCode) +
    (vpDefinition.hashCode) +
    (presentationDefinition == null ? 0 : presentationDefinition!.hashCode) +
    (clientMetadata.hashCode) +
    (tokenEndpointAuthMethod.hashCode);

  @override
  String toString() => 'LoginConfigurationObject[ari=$ari, configurationId=$configurationId, projectId=$projectId, name=$name, redirectUris=$redirectUris, postLogoutRedirectUris=$postLogoutRedirectUris, scope=$scope, clientId=$clientId, creationDate=$creationDate, vpDefinition=$vpDefinition, presentationDefinition=$presentationDefinition, clientMetadata=$clientMetadata, tokenEndpointAuthMethod=$tokenEndpointAuthMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ari'] = this.ari;
    if (this.configurationId != null) {
      json[r'configurationId'] = this.configurationId;
    } else {
      json[r'configurationId'] = null;
    }
      json[r'projectId'] = this.projectId;
      json[r'name'] = this.name;
      json[r'redirectUris'] = this.redirectUris;
      json[r'postLogoutRedirectUris'] = this.postLogoutRedirectUris;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'clientId'] = this.clientId;
      json[r'creationDate'] = this.creationDate;
      json[r'vpDefinition'] = this.vpDefinition;
    if (this.presentationDefinition != null) {
      json[r'presentationDefinition'] = this.presentationDefinition;
    } else {
      json[r'presentationDefinition'] = null;
    }
      json[r'clientMetadata'] = this.clientMetadata;
      json[r'tokenEndpointAuthMethod'] = this.tokenEndpointAuthMethod;
    return json;
  }

  /// Returns a new [LoginConfigurationObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginConfigurationObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginConfigurationObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginConfigurationObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginConfigurationObject(
        ari: mapValueOfType<String>(json, r'ari')!,
        configurationId: mapValueOfType<String>(json, r'configurationId'),
        projectId: mapValueOfType<String>(json, r'projectId')!,
        name: mapValueOfType<String>(json, r'name')!,
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        postLogoutRedirectUris: json[r'postLogoutRedirectUris'] is Iterable
            ? (json[r'postLogoutRedirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        scope: mapValueOfType<String>(json, r'scope'),
        clientId: mapValueOfType<String>(json, r'clientId')!,
        creationDate: mapValueOfType<String>(json, r'creationDate')!,
        vpDefinition: mapValueOfType<String>(json, r'vpDefinition')!,
        presentationDefinition: mapValueOfType<Object>(json, r'presentationDefinition'),
        clientMetadata: LoginConfigurationClientMetadataOutput.fromJson(json[r'clientMetadata'])!,
        tokenEndpointAuthMethod: TokenEndpointAuthMethod.fromJson(json[r'tokenEndpointAuthMethod'])!,
      );
    }
    return null;
  }

  static List<LoginConfigurationObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginConfigurationObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginConfigurationObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginConfigurationObject> mapFromJson(dynamic json) {
    final map = <String, LoginConfigurationObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginConfigurationObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginConfigurationObject-objects as value to a dart map
  static Map<String, List<LoginConfigurationObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginConfigurationObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginConfigurationObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ari',
    'projectId',
    'name',
    'clientId',
    'creationDate',
    'vpDefinition',
    'clientMetadata',
    'tokenEndpointAuthMethod',
  };
}

