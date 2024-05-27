//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DemoWbx {
  /// Returns a new [DemoWbx] instance.
  DemoWbx({
    required this.topicName,
    required this.event,
  });

  String topicName;

  Object event;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DemoWbx &&
    other.topicName == topicName &&
    other.event == event;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (topicName.hashCode) +
    (event.hashCode);

  @override
  String toString() => 'DemoWbx[topicName=$topicName, event=$event]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'topicName'] = this.topicName;
      json[r'event'] = this.event;
    return json;
  }

  /// Returns a new [DemoWbx] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DemoWbx? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DemoWbx[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DemoWbx[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DemoWbx(
        topicName: mapValueOfType<String>(json, r'topicName')!,
        event: mapValueOfType<Object>(json, r'event')!,
      );
    }
    return null;
  }

  static List<DemoWbx> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DemoWbx>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DemoWbx.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DemoWbx> mapFromJson(dynamic json) {
    final map = <String, DemoWbx>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DemoWbx.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DemoWbx-objects as value to a dart map
  static Map<String, List<DemoWbx>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DemoWbx>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DemoWbx.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'topicName',
    'event',
  };
}

