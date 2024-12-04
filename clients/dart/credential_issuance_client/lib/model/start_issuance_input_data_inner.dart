//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartIssuanceInputDataInner {
  /// Returns a new [StartIssuanceInputDataInner] instance.
  StartIssuanceInputDataInner({
    required this.credentialTypeId,
    this.credentialData = const {},
    this.statusListDetails = const [],
    this.metaData,
  });

  /// It is a String that identifies a Credential that is being requested to be issued.
  String credentialTypeId;

  /// Object of data to be included in the issued credential ,should  match the credential type
  Map<String, Object> credentialData;

  /// Types of status lists to which the credential should be added once issued. If not provided or empty, the credential is not added to any of the status lists.
  List<StartIssuanceInputDataInnerStatusListDetailsInner> statusListDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StartIssuanceInputDataInnerMetaData? metaData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartIssuanceInputDataInner &&
    other.credentialTypeId == credentialTypeId &&
    _deepEquality.equals(other.credentialData, credentialData) &&
    _deepEquality.equals(other.statusListDetails, statusListDetails) &&
    other.metaData == metaData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialTypeId.hashCode) +
    (credentialData.hashCode) +
    (statusListDetails.hashCode) +
    (metaData == null ? 0 : metaData!.hashCode);

  @override
  String toString() => 'StartIssuanceInputDataInner[credentialTypeId=$credentialTypeId, credentialData=$credentialData, statusListDetails=$statusListDetails, metaData=$metaData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'credentialTypeId'] = this.credentialTypeId;
      json[r'credentialData'] = this.credentialData;
      json[r'statusListDetails'] = this.statusListDetails;
    if (this.metaData != null) {
      json[r'metaData'] = this.metaData;
    } else {
      json[r'metaData'] = null;
    }
    return json;
  }

  /// Returns a new [StartIssuanceInputDataInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartIssuanceInputDataInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartIssuanceInputDataInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartIssuanceInputDataInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartIssuanceInputDataInner(
        credentialTypeId: mapValueOfType<String>(json, r'credentialTypeId')!,
        credentialData: mapCastOfType<String, Object>(json, r'credentialData')!,
        statusListDetails: StartIssuanceInputDataInnerStatusListDetailsInner.listFromJson(json[r'statusListDetails']),
        metaData: StartIssuanceInputDataInnerMetaData.fromJson(json[r'metaData']),
      );
    }
    return null;
  }

  static List<StartIssuanceInputDataInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuanceInputDataInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuanceInputDataInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartIssuanceInputDataInner> mapFromJson(dynamic json) {
    final map = <String, StartIssuanceInputDataInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartIssuanceInputDataInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartIssuanceInputDataInner-objects as value to a dart map
  static Map<String, List<StartIssuanceInputDataInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartIssuanceInputDataInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartIssuanceInputDataInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'credentialTypeId',
    'credentialData',
  };
}

