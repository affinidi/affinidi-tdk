//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateProfileDataInput {
  /// Returns a new [UpdateProfileDataInput] instance.
  UpdateProfileDataInput({
    required this.dek,
    required this.data,
  });

  /// A base64 encoded data encryption key, encrypted using VFS public key. This is used to get profile data from s3
  String dek;

  Object data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateProfileDataInput &&
    other.dek == dek &&
    other.data == data;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dek.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'UpdateProfileDataInput[dek=$dek, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dek'] = this.dek;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [UpdateProfileDataInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateProfileDataInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateProfileDataInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateProfileDataInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateProfileDataInput(
        dek: mapValueOfType<String>(json, r'dek')!,
        data: mapValueOfType<Object>(json, r'data')!,
      );
    }
    return null;
  }

  static List<UpdateProfileDataInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateProfileDataInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateProfileDataInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateProfileDataInput> mapFromJson(dynamic json) {
    final map = <String, UpdateProfileDataInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateProfileDataInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateProfileDataInput-objects as value to a dart map
  static Map<String, List<UpdateProfileDataInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateProfileDataInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateProfileDataInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'dek',
    'data',
  };
}

