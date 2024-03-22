//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListSeedResultDto {
  /// Returns a new [ListSeedResultDto] instance.
  ListSeedResultDto({
    this.records = const [],
  });

  List<ListSeedResultDtoRecordsInner> records;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListSeedResultDto &&
    _deepEquality.equals(other.records, records);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (records.hashCode);

  @override
  String toString() => 'ListSeedResultDto[records=$records]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'records'] = this.records;
    return json;
  }

  /// Returns a new [ListSeedResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListSeedResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListSeedResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListSeedResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListSeedResultDto(
        records: ListSeedResultDtoRecordsInner.listFromJson(json[r'records']),
      );
    }
    return null;
  }

  static List<ListSeedResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListSeedResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListSeedResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListSeedResultDto> mapFromJson(dynamic json) {
    final map = <String, ListSeedResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListSeedResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListSeedResultDto-objects as value to a dart map
  static Map<String, List<ListSeedResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListSeedResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListSeedResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

