//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BlockedUsers {
  /// Returns a new [BlockedUsers] instance.
  BlockedUsers({
    this.userIds = const [],
    this.pageToken,
  });

  List<String> userIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? pageToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlockedUsers &&
    _deepEquality.equals(other.userIds, userIds) &&
    other.pageToken == pageToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userIds.hashCode) +
    (pageToken == null ? 0 : pageToken!.hashCode);

  @override
  String toString() => 'BlockedUsers[userIds=$userIds, pageToken=$pageToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userIds'] = this.userIds;
    if (this.pageToken != null) {
      json[r'pageToken'] = this.pageToken;
    } else {
      json[r'pageToken'] = null;
    }
    return json;
  }

  /// Returns a new [BlockedUsers] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlockedUsers? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlockedUsers[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlockedUsers[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlockedUsers(
        userIds: json[r'userIds'] is Iterable
            ? (json[r'userIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        pageToken: mapValueOfType<Object>(json, r'pageToken'),
      );
    }
    return null;
  }

  static List<BlockedUsers> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlockedUsers>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlockedUsers.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlockedUsers> mapFromJson(dynamic json) {
    final map = <String, BlockedUsers>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlockedUsers.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlockedUsers-objects as value to a dart map
  static Map<String, List<BlockedUsers>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlockedUsers>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlockedUsers.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userIds',
  };
}

