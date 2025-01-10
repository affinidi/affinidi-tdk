//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetConfigOK {
  /// Returns a new [GetConfigOK] instance.
  GetConfigOK({
    required this.profileName,
    required this.maximumProfiles,
  });

  String profileName;

  int maximumProfiles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetConfigOK &&
    other.profileName == profileName &&
    other.maximumProfiles == maximumProfiles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (profileName.hashCode) +
    (maximumProfiles.hashCode);

  @override
  String toString() => 'GetConfigOK[profileName=$profileName, maximumProfiles=$maximumProfiles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'profileName'] = this.profileName;
      json[r'maximumProfiles'] = this.maximumProfiles;
    return json;
  }

  /// Returns a new [GetConfigOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetConfigOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetConfigOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetConfigOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetConfigOK(
        profileName: mapValueOfType<String>(json, r'profileName')!,
        maximumProfiles: mapValueOfType<int>(json, r'maximumProfiles')!,
      );
    }
    return null;
  }

  static List<GetConfigOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetConfigOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetConfigOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetConfigOK> mapFromJson(dynamic json) {
    final map = <String, GetConfigOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetConfigOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetConfigOK-objects as value to a dart map
  static Map<String, List<GetConfigOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetConfigOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetConfigOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'profileName',
    'maximumProfiles',
  };
}

