//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SupportedCredentialMetadataDisplayInner {
  /// Returns a new [SupportedCredentialMetadataDisplayInner] instance.
  SupportedCredentialMetadataDisplayInner({
    required this.name,
    this.locale,
    this.logo,
    this.backgroundColor,
    this.textColor,
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locale;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SupportedCredentialMetadataDisplayInnerLogo? logo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backgroundColor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? textColor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SupportedCredentialMetadataDisplayInner &&
    other.name == name &&
    other.locale == locale &&
    other.logo == logo &&
    other.backgroundColor == backgroundColor &&
    other.textColor == textColor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (locale == null ? 0 : locale!.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (backgroundColor == null ? 0 : backgroundColor!.hashCode) +
    (textColor == null ? 0 : textColor!.hashCode);

  @override
  String toString() => 'SupportedCredentialMetadataDisplayInner[name=$name, locale=$locale, logo=$logo, backgroundColor=$backgroundColor, textColor=$textColor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.locale != null) {
      json[r'locale'] = this.locale;
    } else {
      json[r'locale'] = null;
    }
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.backgroundColor != null) {
      json[r'backgroundColor'] = this.backgroundColor;
    } else {
      json[r'backgroundColor'] = null;
    }
    if (this.textColor != null) {
      json[r'textColor'] = this.textColor;
    } else {
      json[r'textColor'] = null;
    }
    return json;
  }

  /// Returns a new [SupportedCredentialMetadataDisplayInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SupportedCredentialMetadataDisplayInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SupportedCredentialMetadataDisplayInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SupportedCredentialMetadataDisplayInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SupportedCredentialMetadataDisplayInner(
        name: mapValueOfType<String>(json, r'name')!,
        locale: mapValueOfType<String>(json, r'locale'),
        logo: SupportedCredentialMetadataDisplayInnerLogo.fromJson(json[r'logo']),
        backgroundColor: mapValueOfType<String>(json, r'backgroundColor'),
        textColor: mapValueOfType<String>(json, r'textColor'),
      );
    }
    return null;
  }

  static List<SupportedCredentialMetadataDisplayInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SupportedCredentialMetadataDisplayInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SupportedCredentialMetadataDisplayInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SupportedCredentialMetadataDisplayInner> mapFromJson(dynamic json) {
    final map = <String, SupportedCredentialMetadataDisplayInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SupportedCredentialMetadataDisplayInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SupportedCredentialMetadataDisplayInner-objects as value to a dart map
  static Map<String, List<SupportedCredentialMetadataDisplayInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SupportedCredentialMetadataDisplayInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SupportedCredentialMetadataDisplayInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

