//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServiceErrorResponse {
  /// Returns a new [ServiceErrorResponse] instance.
  ServiceErrorResponse({
    required this.debugId,
    required this.name,
    required this.code,
    this.details = const [],
  });

  /// unique id for correlating this specific error to logs
  String debugId;

  /// name of the error
  String name;

  /// backwards compatible Affinidi error code
  String code;

  /// error details
  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceErrorResponse &&
    other.debugId == debugId &&
    other.name == name &&
    other.code == code &&
    _deepEquality.equals(other.details, details);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (debugId.hashCode) +
    (name.hashCode) +
    (code.hashCode) +
    (details.hashCode);

  @override
  String toString() => 'ServiceErrorResponse[debugId=$debugId, name=$name, code=$code, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'debugId'] = this.debugId;
      json[r'name'] = this.name;
      json[r'code'] = this.code;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ServiceErrorResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceErrorResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ServiceErrorResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ServiceErrorResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ServiceErrorResponse(
        debugId: mapValueOfType<String>(json, r'debugId')!,
        name: mapValueOfType<String>(json, r'name')!,
        code: mapValueOfType<String>(json, r'code')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ServiceErrorResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceErrorResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceErrorResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceErrorResponse> mapFromJson(dynamic json) {
    final map = <String, ServiceErrorResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceErrorResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceErrorResponse-objects as value to a dart map
  static Map<String, List<ServiceErrorResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceErrorResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceErrorResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'debugId',
    'name',
    'code',
  };
}

