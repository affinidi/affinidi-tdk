//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLoginConfigurationInput {
  /// Returns a new [CreateLoginConfigurationInput] instance.
  CreateLoginConfigurationInput({
    required this.name,
    this.redirectUris = const [],
    this.postLogoutRedirectUris = const [],
    this.vpDefinition,
    this.presentationDefinition,
    this.clientMetadata,
    this.claimFormat,
    this.failOnMappingConflict = true,
    this.scope,
    this.tokenEndpointAuthMethod,
  });

  /// User defined login configuration name
  String name;

  /// OAuth 2.0 Redirect URIs
  List<String> redirectUris;

  /// Post Logout Redirect URIs, Used to redirect the user's browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs
  List<String> postLogoutRedirectUris;

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

  /// ID token claims output format. Default is array.
  CreateLoginConfigurationInputClaimFormatEnum? claimFormat;

  /// Interrupts login process if duplications of data fields names will be found
  bool failOnMappingConflict;

  /// List of groups separated by space
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TokenEndpointAuthMethod? tokenEndpointAuthMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLoginConfigurationInput &&
    other.name == name &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    _deepEquality.equals(other.postLogoutRedirectUris, postLogoutRedirectUris) &&
    other.vpDefinition == vpDefinition &&
    other.presentationDefinition == presentationDefinition &&
    other.clientMetadata == clientMetadata &&
    other.claimFormat == claimFormat &&
    other.failOnMappingConflict == failOnMappingConflict &&
    other.scope == scope &&
    other.tokenEndpointAuthMethod == tokenEndpointAuthMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (redirectUris.hashCode) +
    (postLogoutRedirectUris.hashCode) +
    (vpDefinition == null ? 0 : vpDefinition!.hashCode) +
    (presentationDefinition == null ? 0 : presentationDefinition!.hashCode) +
    (clientMetadata == null ? 0 : clientMetadata!.hashCode) +
    (claimFormat == null ? 0 : claimFormat!.hashCode) +
    (failOnMappingConflict.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (tokenEndpointAuthMethod == null ? 0 : tokenEndpointAuthMethod!.hashCode);

  @override
  String toString() => 'CreateLoginConfigurationInput[name=$name, redirectUris=$redirectUris, postLogoutRedirectUris=$postLogoutRedirectUris, vpDefinition=$vpDefinition, presentationDefinition=$presentationDefinition, clientMetadata=$clientMetadata, claimFormat=$claimFormat, failOnMappingConflict=$failOnMappingConflict, scope=$scope, tokenEndpointAuthMethod=$tokenEndpointAuthMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'redirectUris'] = this.redirectUris;
      json[r'postLogoutRedirectUris'] = this.postLogoutRedirectUris;
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
    if (this.claimFormat != null) {
      json[r'claimFormat'] = this.claimFormat;
    } else {
      json[r'claimFormat'] = null;
    }
      json[r'failOnMappingConflict'] = this.failOnMappingConflict;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.tokenEndpointAuthMethod != null) {
      json[r'tokenEndpointAuthMethod'] = this.tokenEndpointAuthMethod;
    } else {
      json[r'tokenEndpointAuthMethod'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLoginConfigurationInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLoginConfigurationInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLoginConfigurationInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLoginConfigurationInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLoginConfigurationInput(
        name: mapValueOfType<String>(json, r'name')!,
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        postLogoutRedirectUris: json[r'postLogoutRedirectUris'] is Iterable
            ? (json[r'postLogoutRedirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        vpDefinition: mapValueOfType<String>(json, r'vpDefinition'),
        presentationDefinition: mapValueOfType<Object>(json, r'presentationDefinition'),
        clientMetadata: LoginConfigurationClientMetadataInput.fromJson(json[r'clientMetadata']),
        claimFormat: CreateLoginConfigurationInputClaimFormatEnum.fromJson(json[r'claimFormat']),
        failOnMappingConflict: mapValueOfType<bool>(json, r'failOnMappingConflict') ?? true,
        scope: mapValueOfType<String>(json, r'scope'),
        tokenEndpointAuthMethod: TokenEndpointAuthMethod.fromJson(json[r'tokenEndpointAuthMethod']),
      );
    }
    return null;
  }

  static List<CreateLoginConfigurationInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurationInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurationInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLoginConfigurationInput> mapFromJson(dynamic json) {
    final map = <String, CreateLoginConfigurationInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLoginConfigurationInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLoginConfigurationInput-objects as value to a dart map
  static Map<String, List<CreateLoginConfigurationInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLoginConfigurationInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLoginConfigurationInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'redirectUris',
  };
}

/// ID token claims output format. Default is array.
class CreateLoginConfigurationInputClaimFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateLoginConfigurationInputClaimFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const array = CreateLoginConfigurationInputClaimFormatEnum._(r'array');
  static const map = CreateLoginConfigurationInputClaimFormatEnum._(r'map');

  /// List of all possible values in this [enum][CreateLoginConfigurationInputClaimFormatEnum].
  static const values = <CreateLoginConfigurationInputClaimFormatEnum>[
    array,
    map,
  ];

  static CreateLoginConfigurationInputClaimFormatEnum? fromJson(dynamic value) => CreateLoginConfigurationInputClaimFormatEnumTypeTransformer().decode(value);

  static List<CreateLoginConfigurationInputClaimFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurationInputClaimFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurationInputClaimFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateLoginConfigurationInputClaimFormatEnum] to String,
/// and [decode] dynamic data back to [CreateLoginConfigurationInputClaimFormatEnum].
class CreateLoginConfigurationInputClaimFormatEnumTypeTransformer {
  factory CreateLoginConfigurationInputClaimFormatEnumTypeTransformer() => _instance ??= const CreateLoginConfigurationInputClaimFormatEnumTypeTransformer._();

  const CreateLoginConfigurationInputClaimFormatEnumTypeTransformer._();

  String encode(CreateLoginConfigurationInputClaimFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateLoginConfigurationInputClaimFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateLoginConfigurationInputClaimFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'array': return CreateLoginConfigurationInputClaimFormatEnum.array;
        case r'map': return CreateLoginConfigurationInputClaimFormatEnum.map;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateLoginConfigurationInputClaimFormatEnumTypeTransformer] instance.
  static CreateLoginConfigurationInputClaimFormatEnumTypeTransformer? _instance;
}


