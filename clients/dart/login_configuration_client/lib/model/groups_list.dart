//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupsList {
  /// Returns a new [GroupsList] instance.
  GroupsList({
    this.groups = const [],
  });

  List<GroupDto> groups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupsList &&
    _deepEquality.equals(other.groups, groups);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (groups.hashCode);

  @override
  String toString() => 'GroupsList[groups=$groups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'groups'] = this.groups;
    return json;
  }

  /// Returns a new [GroupsList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupsList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupsList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupsList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupsList(
        groups: GroupDto.listFromJson(json[r'groups']),
      );
    }
    return null;
  }

  static List<GroupsList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupsList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupsList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupsList> mapFromJson(dynamic json) {
    final map = <String, GroupsList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupsList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupsList-objects as value to a dart map
  static Map<String, List<GroupsList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupsList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupsList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

