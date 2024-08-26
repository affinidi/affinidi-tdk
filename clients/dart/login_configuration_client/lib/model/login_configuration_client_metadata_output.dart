//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginConfigurationClientMetadataOutput {
  /// Returns a new [LoginConfigurationClientMetadataOutput] instance.
  LoginConfigurationClientMetadataOutput({
    required this.name,
    required this.origin,
    required this.logo,
    this.domainVerified,
  });

  /// application name that will be displayed in consent page
  String name;

  /// origin url that will be displayed in consent page
  String origin;

  /// logo url that will be displayed in consent page
  String logo;

  /// indicates if the developer's ownership of the domain has been verified
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? domainVerified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginConfigurationClientMetadataOutput &&
    other.name == name &&
    other.origin == origin &&
    other.logo == logo &&
    other.domainVerified == domainVerified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (origin.hashCode) +
    (logo.hashCode) +
    (domainVerified == null ? 0 : domainVerified!.hashCode);

  @override
  String toString() => 'LoginConfigurationClientMetadataOutput[name=$name, origin=$origin, logo=$logo, domainVerified=$domainVerified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'origin'] = this.origin;
      json[r'logo'] = this.logo;
    if (this.domainVerified != null) {
      json[r'domainVerified'] = this.domainVerified;
    } else {
      json[r'domainVerified'] = null;
    }
    return json;
  }

  /// Returns a new [LoginConfigurationClientMetadataOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginConfigurationClientMetadataOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginConfigurationClientMetadataOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginConfigurationClientMetadataOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginConfigurationClientMetadataOutput(
        name: mapValueOfType<String>(json, r'name')!,
        origin: mapValueOfType<String>(json, r'origin')!,
        logo: mapValueOfType<String>(json, r'logo')!,
        domainVerified: mapValueOfType<bool>(json, r'domainVerified'),
      );
    }
    return null;
  }

  static List<LoginConfigurationClientMetadataOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginConfigurationClientMetadataOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginConfigurationClientMetadataOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginConfigurationClientMetadataOutput> mapFromJson(dynamic json) {
    final map = <String, LoginConfigurationClientMetadataOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginConfigurationClientMetadataOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginConfigurationClientMetadataOutput-objects as value to a dart map
  static Map<String, List<LoginConfigurationClientMetadataOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginConfigurationClientMetadataOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginConfigurationClientMetadataOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'origin',
    'logo',
  };
}

