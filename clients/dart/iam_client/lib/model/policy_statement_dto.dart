//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PolicyStatementDto {
  /// Returns a new [PolicyStatementDto] instance.
  PolicyStatementDto({
    this.action = const [],
    required this.effect,
    this.principal = const [],
    this.resource = const [],
  });

  List<String> action;

  String effect;

  List<String> principal;

  List<String> resource;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PolicyStatementDto &&
    _deepEquality.equals(other.action, action) &&
    other.effect == effect &&
    _deepEquality.equals(other.principal, principal) &&
    _deepEquality.equals(other.resource, resource);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (effect.hashCode) +
    (principal.hashCode) +
    (resource.hashCode);

  @override
  String toString() => 'PolicyStatementDto[action=$action, effect=$effect, principal=$principal, resource=$resource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
      json[r'effect'] = this.effect;
      json[r'principal'] = this.principal;
      json[r'resource'] = this.resource;
    return json;
  }

  /// Returns a new [PolicyStatementDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PolicyStatementDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PolicyStatementDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PolicyStatementDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PolicyStatementDto(
        action: json[r'action'] is Iterable
            ? (json[r'action'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        effect: mapValueOfType<String>(json, r'effect')!,
        principal: json[r'principal'] is Iterable
            ? (json[r'principal'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        resource: json[r'resource'] is Iterable
            ? (json[r'resource'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PolicyStatementDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PolicyStatementDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PolicyStatementDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PolicyStatementDto> mapFromJson(dynamic json) {
    final map = <String, PolicyStatementDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PolicyStatementDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PolicyStatementDto-objects as value to a dart map
  static Map<String, List<PolicyStatementDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PolicyStatementDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PolicyStatementDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
    'effect',
    'principal',
    'resource',
  };
}

