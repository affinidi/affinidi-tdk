//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImportSeedRequest {
  /// Returns a new [ImportSeedRequest] instance.
  ImportSeedRequest({
    this.mnemonic,
    this.seedHex,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mnemonic;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seedHex;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImportSeedRequest &&
    other.mnemonic == mnemonic &&
    other.seedHex == seedHex;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mnemonic == null ? 0 : mnemonic!.hashCode) +
    (seedHex == null ? 0 : seedHex!.hashCode);

  @override
  String toString() => 'ImportSeedRequest[mnemonic=$mnemonic, seedHex=$seedHex]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mnemonic != null) {
      json[r'mnemonic'] = this.mnemonic;
    } else {
      json[r'mnemonic'] = null;
    }
    if (this.seedHex != null) {
      json[r'seedHex'] = this.seedHex;
    } else {
      json[r'seedHex'] = null;
    }
    return json;
  }

  /// Returns a new [ImportSeedRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImportSeedRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImportSeedRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImportSeedRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImportSeedRequest(
        mnemonic: mapValueOfType<String>(json, r'mnemonic'),
        seedHex: mapValueOfType<String>(json, r'seedHex'),
      );
    }
    return null;
  }

  static List<ImportSeedRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImportSeedRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImportSeedRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImportSeedRequest> mapFromJson(dynamic json) {
    final map = <String, ImportSeedRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImportSeedRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImportSeedRequest-objects as value to a dart map
  static Map<String, List<ImportSeedRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImportSeedRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImportSeedRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

