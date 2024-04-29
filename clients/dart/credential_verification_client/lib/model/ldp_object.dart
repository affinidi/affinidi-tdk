//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LdpObject {
  /// Returns a new [LdpObject] instance.
  LdpObject({
    this.proofType = const [],
  });

  /// List of names of the proof types
  List<String> proofType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LdpObject &&
    _deepEquality.equals(other.proofType, proofType);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (proofType.hashCode);

  @override
  String toString() => 'LdpObject[proofType=$proofType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'proof_type'] = this.proofType;
    return json;
  }

  /// Returns a new [LdpObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LdpObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LdpObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LdpObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LdpObject(
        proofType: json[r'proof_type'] is Iterable
            ? (json[r'proof_type'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<LdpObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LdpObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LdpObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LdpObject> mapFromJson(dynamic json) {
    final map = <String, LdpObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LdpObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LdpObject-objects as value to a dart map
  static Map<String, List<LdpObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LdpObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LdpObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'proof_type',
  };
}

