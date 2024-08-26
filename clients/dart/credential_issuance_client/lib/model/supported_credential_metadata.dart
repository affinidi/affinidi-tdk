//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SupportedCredentialMetadata {
  /// Returns a new [SupportedCredentialMetadata] instance.
  SupportedCredentialMetadata({
    this.display = const [],
  });

  List<SupportedCredentialMetadataDisplayInner> display;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SupportedCredentialMetadata &&
    _deepEquality.equals(other.display, display);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (display.hashCode);

  @override
  String toString() => 'SupportedCredentialMetadata[display=$display]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'display'] = this.display;
    return json;
  }

  /// Returns a new [SupportedCredentialMetadata] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SupportedCredentialMetadata? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SupportedCredentialMetadata[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SupportedCredentialMetadata[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SupportedCredentialMetadata(
        display: SupportedCredentialMetadataDisplayInner.listFromJson(json[r'display']),
      );
    }
    return null;
  }

  static List<SupportedCredentialMetadata> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SupportedCredentialMetadata>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SupportedCredentialMetadata.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SupportedCredentialMetadata> mapFromJson(dynamic json) {
    final map = <String, SupportedCredentialMetadata>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SupportedCredentialMetadata.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SupportedCredentialMetadata-objects as value to a dart map
  static Map<String, List<SupportedCredentialMetadata>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SupportedCredentialMetadata>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SupportedCredentialMetadata.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

