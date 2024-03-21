//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DecryptByPrivateKeyResultDto {
  /// Returns a new [DecryptByPrivateKeyResultDto] instance.
  DecryptByPrivateKeyResultDto({
    required this.decryptedData,
  });

  String decryptedData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DecryptByPrivateKeyResultDto &&
    other.decryptedData == decryptedData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (decryptedData.hashCode);

  @override
  String toString() => 'DecryptByPrivateKeyResultDto[decryptedData=$decryptedData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'decryptedData'] = this.decryptedData;
    return json;
  }

  /// Returns a new [DecryptByPrivateKeyResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DecryptByPrivateKeyResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DecryptByPrivateKeyResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DecryptByPrivateKeyResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DecryptByPrivateKeyResultDto(
        decryptedData: mapValueOfType<String>(json, r'decryptedData')!,
      );
    }
    return null;
  }

  static List<DecryptByPrivateKeyResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DecryptByPrivateKeyResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DecryptByPrivateKeyResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DecryptByPrivateKeyResultDto> mapFromJson(dynamic json) {
    final map = <String, DecryptByPrivateKeyResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DecryptByPrivateKeyResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DecryptByPrivateKeyResultDto-objects as value to a dart map
  static Map<String, List<DecryptByPrivateKeyResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DecryptByPrivateKeyResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DecryptByPrivateKeyResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'decryptedData',
  };
}

