//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrepareRequestCreatedData {
  /// Returns a new [PrepareRequestCreatedData] instance.
  PrepareRequestCreatedData({
    required this.jwt,
    required this.correlationId,
  });

  String jwt;

  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  String correlationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrepareRequestCreatedData &&
    other.jwt == jwt &&
    other.correlationId == correlationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jwt.hashCode) +
    (correlationId.hashCode);

  @override
  String toString() => 'PrepareRequestCreatedData[jwt=$jwt, correlationId=$correlationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jwt'] = this.jwt;
      json[r'correlationId'] = this.correlationId;
    return json;
  }

  /// Returns a new [PrepareRequestCreatedData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrepareRequestCreatedData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrepareRequestCreatedData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrepareRequestCreatedData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrepareRequestCreatedData(
        jwt: mapValueOfType<String>(json, r'jwt')!,
        correlationId: mapValueOfType<String>(json, r'correlationId')!,
      );
    }
    return null;
  }

  static List<PrepareRequestCreatedData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrepareRequestCreatedData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrepareRequestCreatedData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrepareRequestCreatedData> mapFromJson(dynamic json) {
    final map = <String, PrepareRequestCreatedData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrepareRequestCreatedData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrepareRequestCreatedData-objects as value to a dart map
  static Map<String, List<PrepareRequestCreatedData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrepareRequestCreatedData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrepareRequestCreatedData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jwt',
    'correlationId',
  };
}

