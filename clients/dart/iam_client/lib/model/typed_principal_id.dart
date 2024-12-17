//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TypedPrincipalId {
  /// Returns a new [TypedPrincipalId] instance.
  TypedPrincipalId({
    required this.principalId,
  });

  String principalId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TypedPrincipalId &&
    other.principalId == principalId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (principalId.hashCode);

  @override
  String toString() => 'TypedPrincipalId[principalId=$principalId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'principalId'] = this.principalId;
    return json;
  }

  /// Returns a new [TypedPrincipalId] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TypedPrincipalId? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TypedPrincipalId[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TypedPrincipalId[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TypedPrincipalId(
        principalId: mapValueOfType<String>(json, r'principalId')!,
      );
    }
    return null;
  }

  static List<TypedPrincipalId> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TypedPrincipalId>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TypedPrincipalId.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TypedPrincipalId> mapFromJson(dynamic json) {
    final map = <String, TypedPrincipalId>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TypedPrincipalId.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TypedPrincipalId-objects as value to a dart map
  static Map<String, List<TypedPrincipalId>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TypedPrincipalId>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TypedPrincipalId.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'principalId',
  };
}

