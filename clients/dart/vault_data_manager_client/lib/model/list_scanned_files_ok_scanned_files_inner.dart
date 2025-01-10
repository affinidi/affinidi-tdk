//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListScannedFilesOKScannedFilesInner {
  /// Returns a new [ListScannedFilesOKScannedFilesInner] instance.
  ListScannedFilesOKScannedFilesInner({
    required this.jobId,
    required this.status,
    required this.profileId,
    required this.nodeId,
    required this.createdAt,
    required this.name,
  });

  /// A unique, randomly generated identifier
  String jobId;

  /// The Status of the listed files
  String status;

  /// A unique, randomly generated identifier
  String profileId;

  String nodeId;

  String createdAt;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListScannedFilesOKScannedFilesInner &&
    other.jobId == jobId &&
    other.status == status &&
    other.profileId == profileId &&
    other.nodeId == nodeId &&
    other.createdAt == createdAt &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobId.hashCode) +
    (status.hashCode) +
    (profileId.hashCode) +
    (nodeId.hashCode) +
    (createdAt.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'ListScannedFilesOKScannedFilesInner[jobId=$jobId, status=$status, profileId=$profileId, nodeId=$nodeId, createdAt=$createdAt, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jobId'] = this.jobId;
      json[r'status'] = this.status;
      json[r'profileId'] = this.profileId;
      json[r'nodeId'] = this.nodeId;
      json[r'createdAt'] = this.createdAt;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [ListScannedFilesOKScannedFilesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListScannedFilesOKScannedFilesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListScannedFilesOKScannedFilesInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListScannedFilesOKScannedFilesInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListScannedFilesOKScannedFilesInner(
        jobId: mapValueOfType<String>(json, r'jobId')!,
        status: mapValueOfType<String>(json, r'status')!,
        profileId: mapValueOfType<String>(json, r'profileId')!,
        nodeId: mapValueOfType<String>(json, r'nodeId')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<ListScannedFilesOKScannedFilesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListScannedFilesOKScannedFilesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListScannedFilesOKScannedFilesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListScannedFilesOKScannedFilesInner> mapFromJson(dynamic json) {
    final map = <String, ListScannedFilesOKScannedFilesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListScannedFilesOKScannedFilesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListScannedFilesOKScannedFilesInner-objects as value to a dart map
  static Map<String, List<ListScannedFilesOKScannedFilesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListScannedFilesOKScannedFilesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListScannedFilesOKScannedFilesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jobId',
    'status',
    'profileId',
    'nodeId',
    'createdAt',
    'name',
  };
}

