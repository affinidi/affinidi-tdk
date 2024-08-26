//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListIssuanceResponse {
  /// Returns a new [ListIssuanceResponse] instance.
  ListIssuanceResponse({
    this.issuances = const [],
  });

  /// The list of all issuances for the Project
  List<ListIssuanceResponseIssuancesInner> issuances;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListIssuanceResponse &&
    _deepEquality.equals(other.issuances, issuances);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (issuances.hashCode);

  @override
  String toString() => 'ListIssuanceResponse[issuances=$issuances]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'issuances'] = this.issuances;
    return json;
  }

  /// Returns a new [ListIssuanceResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListIssuanceResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListIssuanceResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListIssuanceResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListIssuanceResponse(
        issuances: ListIssuanceResponseIssuancesInner.listFromJson(json[r'issuances']),
      );
    }
    return null;
  }

  static List<ListIssuanceResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListIssuanceResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListIssuanceResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListIssuanceResponse> mapFromJson(dynamic json) {
    final map = <String, ListIssuanceResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListIssuanceResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListIssuanceResponse-objects as value to a dart map
  static Map<String, List<ListIssuanceResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListIssuanceResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListIssuanceResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'issuances',
  };
}

