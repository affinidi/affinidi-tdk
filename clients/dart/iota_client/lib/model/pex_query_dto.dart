//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PexQueryDto {
  /// Returns a new [PexQueryDto] instance.
  PexQueryDto({
    required this.ari,
    required this.queryId,
    required this.name,
    required this.description,
    required this.configurationAri,
    required this.vpDefinition,
  });

  /// The unique resource identifier of the qeuery.
  String ari;

  /// The ID of the query.
  String queryId;

  /// The name of the presentation definition to quickly identify the query.
  String name;

  /// An optional description of what the query is used for.
  String description;

  /// The unique resource identifier of the related configuration where the query is defined.
  String configurationAri;

  /// The presentation definition describing the data requirement that must be satisfied by the user. The value is in a JSON stringify format.
  String vpDefinition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PexQueryDto &&
    other.ari == ari &&
    other.queryId == queryId &&
    other.name == name &&
    other.description == description &&
    other.configurationAri == configurationAri &&
    other.vpDefinition == vpDefinition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ari.hashCode) +
    (queryId.hashCode) +
    (name.hashCode) +
    (description.hashCode) +
    (configurationAri.hashCode) +
    (vpDefinition.hashCode);

  @override
  String toString() => 'PexQueryDto[ari=$ari, queryId=$queryId, name=$name, description=$description, configurationAri=$configurationAri, vpDefinition=$vpDefinition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ari'] = this.ari;
      json[r'queryId'] = this.queryId;
      json[r'name'] = this.name;
      json[r'description'] = this.description;
      json[r'configurationAri'] = this.configurationAri;
      json[r'vpDefinition'] = this.vpDefinition;
    return json;
  }

  /// Returns a new [PexQueryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PexQueryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PexQueryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PexQueryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PexQueryDto(
        ari: mapValueOfType<String>(json, r'ari')!,
        queryId: mapValueOfType<String>(json, r'queryId')!,
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description')!,
        configurationAri: mapValueOfType<String>(json, r'configurationAri')!,
        vpDefinition: mapValueOfType<String>(json, r'vpDefinition')!,
      );
    }
    return null;
  }

  static List<PexQueryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PexQueryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PexQueryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PexQueryDto> mapFromJson(dynamic json) {
    final map = <String, PexQueryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PexQueryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PexQueryDto-objects as value to a dart map
  static Map<String, List<PexQueryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PexQueryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PexQueryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ari',
    'queryId',
    'name',
    'description',
    'configurationAri',
    'vpDefinition',
  };
}

