//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OIDCConfigCredentialsSupportedDraft00Inner {
  /// Returns a new [OIDCConfigCredentialsSupportedDraft00Inner] instance.
  OIDCConfigCredentialsSupportedDraft00Inner({
    this.cryptographicBindingMethodsSupported = const [],
    this.cryptographicSuitesSupported = const [],
    this.format,
    this.types = const [],
  });

  List<String> cryptographicBindingMethodsSupported;

  List<String> cryptographicSuitesSupported;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? format;

  List<String> types;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OIDCConfigCredentialsSupportedDraft00Inner &&
    _deepEquality.equals(other.cryptographicBindingMethodsSupported, cryptographicBindingMethodsSupported) &&
    _deepEquality.equals(other.cryptographicSuitesSupported, cryptographicSuitesSupported) &&
    other.format == format &&
    _deepEquality.equals(other.types, types);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cryptographicBindingMethodsSupported.hashCode) +
    (cryptographicSuitesSupported.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (types.hashCode);

  @override
  String toString() => 'OIDCConfigCredentialsSupportedDraft00Inner[cryptographicBindingMethodsSupported=$cryptographicBindingMethodsSupported, cryptographicSuitesSupported=$cryptographicSuitesSupported, format=$format, types=$types]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cryptographic_binding_methods_supported'] = this.cryptographicBindingMethodsSupported;
      json[r'cryptographic_suites_supported'] = this.cryptographicSuitesSupported;
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
      json[r'types'] = this.types;
    return json;
  }

  /// Returns a new [OIDCConfigCredentialsSupportedDraft00Inner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OIDCConfigCredentialsSupportedDraft00Inner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OIDCConfigCredentialsSupportedDraft00Inner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OIDCConfigCredentialsSupportedDraft00Inner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OIDCConfigCredentialsSupportedDraft00Inner(
        cryptographicBindingMethodsSupported: json[r'cryptographic_binding_methods_supported'] is Iterable
            ? (json[r'cryptographic_binding_methods_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        cryptographicSuitesSupported: json[r'cryptographic_suites_supported'] is Iterable
            ? (json[r'cryptographic_suites_supported'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        format: mapValueOfType<String>(json, r'format'),
        types: json[r'types'] is Iterable
            ? (json[r'types'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<OIDCConfigCredentialsSupportedDraft00Inner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OIDCConfigCredentialsSupportedDraft00Inner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OIDCConfigCredentialsSupportedDraft00Inner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OIDCConfigCredentialsSupportedDraft00Inner> mapFromJson(dynamic json) {
    final map = <String, OIDCConfigCredentialsSupportedDraft00Inner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OIDCConfigCredentialsSupportedDraft00Inner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OIDCConfigCredentialsSupportedDraft00Inner-objects as value to a dart map
  static Map<String, List<OIDCConfigCredentialsSupportedDraft00Inner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OIDCConfigCredentialsSupportedDraft00Inner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OIDCConfigCredentialsSupportedDraft00Inner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

