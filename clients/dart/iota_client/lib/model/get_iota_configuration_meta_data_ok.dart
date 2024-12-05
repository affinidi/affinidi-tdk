//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetIotaConfigurationMetaDataOK {
  /// Returns a new [GetIotaConfigurationMetaDataOK] instance.
  GetIotaConfigurationMetaDataOK({
    required this.name,
    required this.origin,
    required this.logo,
  });

  /// The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website's name.
  String name;

  /// The URL of the requester displayed on the consent page indicates the request's origin.
  String origin;

  /// The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.
  String logo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetIotaConfigurationMetaDataOK &&
    other.name == name &&
    other.origin == origin &&
    other.logo == logo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (origin.hashCode) +
    (logo.hashCode);

  @override
  String toString() => 'GetIotaConfigurationMetaDataOK[name=$name, origin=$origin, logo=$logo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'origin'] = this.origin;
      json[r'logo'] = this.logo;
    return json;
  }

  /// Returns a new [GetIotaConfigurationMetaDataOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetIotaConfigurationMetaDataOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetIotaConfigurationMetaDataOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetIotaConfigurationMetaDataOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetIotaConfigurationMetaDataOK(
        name: mapValueOfType<String>(json, r'name')!,
        origin: mapValueOfType<String>(json, r'origin')!,
        logo: mapValueOfType<String>(json, r'logo')!,
      );
    }
    return null;
  }

  static List<GetIotaConfigurationMetaDataOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetIotaConfigurationMetaDataOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetIotaConfigurationMetaDataOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetIotaConfigurationMetaDataOK> mapFromJson(dynamic json) {
    final map = <String, GetIotaConfigurationMetaDataOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetIotaConfigurationMetaDataOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetIotaConfigurationMetaDataOK-objects as value to a dart map
  static Map<String, List<GetIotaConfigurationMetaDataOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetIotaConfigurationMetaDataOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetIotaConfigurationMetaDataOK.listFromJson(entry.value, growable: growable,);
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

