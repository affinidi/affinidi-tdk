//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InitiateDataSharingRequestOKData {
  /// Returns a new [InitiateDataSharingRequestOKData] instance.
  InitiateDataSharingRequestOKData({
    required this.jwt,
    required this.correlationId,
    required this.transactionId,
  });

  String jwt;

  String correlationId;

  String transactionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitiateDataSharingRequestOKData &&
    other.jwt == jwt &&
    other.correlationId == correlationId &&
    other.transactionId == transactionId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jwt.hashCode) +
    (correlationId.hashCode) +
    (transactionId.hashCode);

  @override
  String toString() => 'InitiateDataSharingRequestOKData[jwt=$jwt, correlationId=$correlationId, transactionId=$transactionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jwt'] = this.jwt;
      json[r'correlationId'] = this.correlationId;
      json[r'transactionId'] = this.transactionId;
    return json;
  }

  /// Returns a new [InitiateDataSharingRequestOKData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InitiateDataSharingRequestOKData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InitiateDataSharingRequestOKData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InitiateDataSharingRequestOKData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InitiateDataSharingRequestOKData(
        jwt: mapValueOfType<String>(json, r'jwt')!,
        correlationId: mapValueOfType<String>(json, r'correlationId')!,
        transactionId: mapValueOfType<String>(json, r'transactionId')!,
      );
    }
    return null;
  }

  static List<InitiateDataSharingRequestOKData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitiateDataSharingRequestOKData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitiateDataSharingRequestOKData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InitiateDataSharingRequestOKData> mapFromJson(dynamic json) {
    final map = <String, InitiateDataSharingRequestOKData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InitiateDataSharingRequestOKData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InitiateDataSharingRequestOKData-objects as value to a dart map
  static Map<String, List<InitiateDataSharingRequestOKData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InitiateDataSharingRequestOKData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InitiateDataSharingRequestOKData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jwt',
    'correlationId',
    'transactionId',
  };
}

