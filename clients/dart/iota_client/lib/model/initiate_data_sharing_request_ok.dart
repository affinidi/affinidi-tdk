//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InitiateDataSharingRequestOK {
  /// Returns a new [InitiateDataSharingRequestOK] instance.
  InitiateDataSharingRequestOK({
    this.data,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  InitiateDataSharingRequestOKData? data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitiateDataSharingRequestOK &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode);

  @override
  String toString() => 'InitiateDataSharingRequestOK[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    return json;
  }

  /// Returns a new [InitiateDataSharingRequestOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InitiateDataSharingRequestOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InitiateDataSharingRequestOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InitiateDataSharingRequestOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InitiateDataSharingRequestOK(
        data: InitiateDataSharingRequestOKData.fromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<InitiateDataSharingRequestOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitiateDataSharingRequestOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitiateDataSharingRequestOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InitiateDataSharingRequestOK> mapFromJson(dynamic json) {
    final map = <String, InitiateDataSharingRequestOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InitiateDataSharingRequestOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InitiateDataSharingRequestOK-objects as value to a dart map
  static Map<String, List<InitiateDataSharingRequestOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InitiateDataSharingRequestOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InitiateDataSharingRequestOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

