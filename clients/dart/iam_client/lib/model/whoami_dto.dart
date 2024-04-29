//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WhoamiDto {
  /// Returns a new [WhoamiDto] instance.
  WhoamiDto({
    required this.principalId,
    required this.principalType,
  });

  String principalId;

  String principalType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WhoamiDto &&
    other.principalId == principalId &&
    other.principalType == principalType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (principalId.hashCode) +
    (principalType.hashCode);

  @override
  String toString() => 'WhoamiDto[principalId=$principalId, principalType=$principalType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'principalId'] = this.principalId;
      json[r'principalType'] = this.principalType;
    return json;
  }

  /// Returns a new [WhoamiDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WhoamiDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WhoamiDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WhoamiDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WhoamiDto(
        principalId: mapValueOfType<String>(json, r'principalId')!,
        principalType: mapValueOfType<String>(json, r'principalType')!,
      );
    }
    return null;
  }

  static List<WhoamiDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WhoamiDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WhoamiDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WhoamiDto> mapFromJson(dynamic json) {
    final map = <String, WhoamiDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WhoamiDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WhoamiDto-objects as value to a dart map
  static Map<String, List<WhoamiDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WhoamiDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WhoamiDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'principalId',
    'principalType',
  };
}

