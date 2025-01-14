//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetScannedFileInfoOK {
  /// Returns a new [GetScannedFileInfoOK] instance.
  GetScannedFileInfoOK({
    required this.data,
    required this.jobId,
    required this.status,
    required this.profileId,
    this.exclusiveStartKey,
    required this.nodeId,
    required this.createdAt,
    required this.name,
  });

  Object data;

  /// A unique, randomly generated idetifier
  String jobId;

  /// Status of the file scanning once initiated
  String status;

  /// A unique, randomly generated identifier
  String profileId;

  /// The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exclusiveStartKey;

  /// A unique, randomly generated identifier
  String nodeId;

  String createdAt;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScannedFileInfoOK &&
    other.data == data &&
    other.jobId == jobId &&
    other.status == status &&
    other.profileId == profileId &&
    other.exclusiveStartKey == exclusiveStartKey &&
    other.nodeId == nodeId &&
    other.createdAt == createdAt &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (jobId.hashCode) +
    (status.hashCode) +
    (profileId.hashCode) +
    (exclusiveStartKey == null ? 0 : exclusiveStartKey!.hashCode) +
    (nodeId.hashCode) +
    (createdAt.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'GetScannedFileInfoOK[data=$data, jobId=$jobId, status=$status, profileId=$profileId, exclusiveStartKey=$exclusiveStartKey, nodeId=$nodeId, createdAt=$createdAt, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'jobId'] = this.jobId;
      json[r'status'] = this.status;
      json[r'profileId'] = this.profileId;
    if (this.exclusiveStartKey != null) {
      json[r'exclusiveStartKey'] = this.exclusiveStartKey;
    } else {
      json[r'exclusiveStartKey'] = null;
    }
      json[r'nodeId'] = this.nodeId;
      json[r'createdAt'] = this.createdAt;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [GetScannedFileInfoOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScannedFileInfoOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetScannedFileInfoOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetScannedFileInfoOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetScannedFileInfoOK(
        data: mapValueOfType<Object>(json, r'data')!,
        jobId: mapValueOfType<String>(json, r'jobId')!,
        status: mapValueOfType<String>(json, r'status')!,
        profileId: mapValueOfType<String>(json, r'profileId')!,
        exclusiveStartKey: mapValueOfType<String>(json, r'exclusiveStartKey'),
        nodeId: mapValueOfType<String>(json, r'nodeId')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<GetScannedFileInfoOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScannedFileInfoOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScannedFileInfoOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScannedFileInfoOK> mapFromJson(dynamic json) {
    final map = <String, GetScannedFileInfoOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScannedFileInfoOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScannedFileInfoOK-objects as value to a dart map
  static Map<String, List<GetScannedFileInfoOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScannedFileInfoOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScannedFileInfoOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'jobId',
    'status',
    'profileId',
    'nodeId',
    'createdAt',
    'name',
  };
}

