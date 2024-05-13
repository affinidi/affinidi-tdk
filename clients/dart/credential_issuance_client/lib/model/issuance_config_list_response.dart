//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuanceConfigListResponse {
  /// Returns a new [IssuanceConfigListResponse] instance.
  IssuanceConfigListResponse({
    this.configurations = const [],
  });

  List<IssuanceConfigMiniDto> configurations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuanceConfigListResponse &&
    _deepEquality.equals(other.configurations, configurations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configurations.hashCode);

  @override
  String toString() => 'IssuanceConfigListResponse[configurations=$configurations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'configurations'] = this.configurations;
    return json;
  }

  /// Returns a new [IssuanceConfigListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuanceConfigListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssuanceConfigListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssuanceConfigListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssuanceConfigListResponse(
        configurations: IssuanceConfigMiniDto.listFromJson(json[r'configurations']),
      );
    }
    return null;
  }

  static List<IssuanceConfigListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceConfigListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceConfigListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuanceConfigListResponse> mapFromJson(dynamic json) {
    final map = <String, IssuanceConfigListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuanceConfigListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuanceConfigListResponse-objects as value to a dart map
  static Map<String, List<IssuanceConfigListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuanceConfigListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuanceConfigListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'configurations',
  };
}

