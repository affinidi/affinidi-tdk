//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLoginConfigurationOutput {
  /// Returns a new [CreateLoginConfigurationOutput] instance.
  CreateLoginConfigurationOutput({
    required this.ari,
    required this.projectId,
    this.configurationId,
    required this.name,
    required this.auth,
    this.redirectUris = const [],
    required this.clientMetadata,
    required this.creationDate,
  });

  /// Configuration ari
  String ari;

  /// Project id
  String projectId;

  /// Configuration id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configurationId;

  /// User defined login configuration name
  String name;

  CreateLoginConfigurationOutputAuth auth;

  /// OAuth 2.0 Redirect URIs
  List<String> redirectUris;

  LoginConfigurationClientMetadataOutput clientMetadata;

  /// OAuth 2.0 Client Creation Date
  String creationDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLoginConfigurationOutput &&
    other.ari == ari &&
    other.projectId == projectId &&
    other.configurationId == configurationId &&
    other.name == name &&
    other.auth == auth &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    other.clientMetadata == clientMetadata &&
    other.creationDate == creationDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ari.hashCode) +
    (projectId.hashCode) +
    (configurationId == null ? 0 : configurationId!.hashCode) +
    (name.hashCode) +
    (auth.hashCode) +
    (redirectUris.hashCode) +
    (clientMetadata.hashCode) +
    (creationDate.hashCode);

  @override
  String toString() => 'CreateLoginConfigurationOutput[ari=$ari, projectId=$projectId, configurationId=$configurationId, name=$name, auth=$auth, redirectUris=$redirectUris, clientMetadata=$clientMetadata, creationDate=$creationDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ari'] = this.ari;
      json[r'projectId'] = this.projectId;
    if (this.configurationId != null) {
      json[r'configurationId'] = this.configurationId;
    } else {
      json[r'configurationId'] = null;
    }
      json[r'name'] = this.name;
      json[r'auth'] = this.auth;
      json[r'redirectUris'] = this.redirectUris;
      json[r'clientMetadata'] = this.clientMetadata;
      json[r'creationDate'] = this.creationDate;
    return json;
  }

  /// Returns a new [CreateLoginConfigurationOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLoginConfigurationOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLoginConfigurationOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLoginConfigurationOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLoginConfigurationOutput(
        ari: mapValueOfType<String>(json, r'ari')!,
        projectId: mapValueOfType<String>(json, r'projectId')!,
        configurationId: mapValueOfType<String>(json, r'configurationId'),
        name: mapValueOfType<String>(json, r'name')!,
        auth: CreateLoginConfigurationOutputAuth.fromJson(json[r'auth'])!,
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        clientMetadata: LoginConfigurationClientMetadataOutput.fromJson(json[r'clientMetadata'])!,
        creationDate: mapValueOfType<String>(json, r'creationDate')!,
      );
    }
    return null;
  }

  static List<CreateLoginConfigurationOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurationOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurationOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLoginConfigurationOutput> mapFromJson(dynamic json) {
    final map = <String, CreateLoginConfigurationOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLoginConfigurationOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLoginConfigurationOutput-objects as value to a dart map
  static Map<String, List<CreateLoginConfigurationOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLoginConfigurationOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLoginConfigurationOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ari',
    'projectId',
    'name',
    'auth',
    'redirectUris',
    'clientMetadata',
    'creationDate',
  };
}

