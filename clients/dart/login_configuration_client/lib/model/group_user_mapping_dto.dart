//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupUserMappingDto {
  /// Returns a new [GroupUserMappingDto] instance.
  GroupUserMappingDto({
    required this.userId,
    required this.addedAt,
  });

  /// Unique identifier of the user
  String userId;

  /// Group to user mapping creation date
  String addedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupUserMappingDto &&
    other.userId == userId &&
    other.addedAt == addedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (addedAt.hashCode);

  @override
  String toString() => 'GroupUserMappingDto[userId=$userId, addedAt=$addedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
      json[r'addedAt'] = this.addedAt;
    return json;
  }

  /// Returns a new [GroupUserMappingDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupUserMappingDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupUserMappingDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupUserMappingDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupUserMappingDto(
        userId: mapValueOfType<String>(json, r'userId')!,
        addedAt: mapValueOfType<String>(json, r'addedAt')!,
      );
    }
    return null;
  }

  static List<GroupUserMappingDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupUserMappingDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupUserMappingDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupUserMappingDto> mapFromJson(dynamic json) {
    final map = <String, GroupUserMappingDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupUserMappingDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupUserMappingDto-objects as value to a dart map
  static Map<String, List<GroupUserMappingDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupUserMappingDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupUserMappingDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'addedAt',
  };
}

