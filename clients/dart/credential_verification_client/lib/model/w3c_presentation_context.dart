//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class W3cPresentationContext {
  /// Returns a new [W3cPresentationContext] instance.
  W3cPresentationContext({
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is W3cPresentationContext &&

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis

  @override
  String toString() => 'W3cPresentationContext[]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    return json;
  }

  /// Returns a new [W3cPresentationContext] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static W3cPresentationContext? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "W3cPresentationContext[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "W3cPresentationContext[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return W3cPresentationContext(
      );
    }
    return null;
  }

  static List<W3cPresentationContext> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <W3cPresentationContext>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = W3cPresentationContext.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, W3cPresentationContext> mapFromJson(dynamic json) {
    final map = <String, W3cPresentationContext>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = W3cPresentationContext.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of W3cPresentationContext-objects as value to a dart map
  static Map<String, List<W3cPresentationContext>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<W3cPresentationContext>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = W3cPresentationContext.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

