//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ListRootNodeChildrenOK {
  /// Returns a new [ListRootNodeChildrenOK] instance.
  ListRootNodeChildrenOK({
    this.nodes = const [],
  });

  List<NodeDto> nodes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListRootNodeChildrenOK &&
    _deepEquality.equals(other.nodes, nodes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodes.hashCode);

  @override
  String toString() => 'ListRootNodeChildrenOK[nodes=$nodes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodes'] = this.nodes;
    return json;
  }

  /// Returns a new [ListRootNodeChildrenOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListRootNodeChildrenOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListRootNodeChildrenOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListRootNodeChildrenOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListRootNodeChildrenOK(
        nodes: NodeDto.listFromJson(json[r'nodes']),
      );
    }
    return null;
  }

  static List<ListRootNodeChildrenOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListRootNodeChildrenOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListRootNodeChildrenOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListRootNodeChildrenOK> mapFromJson(dynamic json) {
    final map = <String, ListRootNodeChildrenOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListRootNodeChildrenOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListRootNodeChildrenOK-objects as value to a dart map
  static Map<String, List<ListRootNodeChildrenOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListRootNodeChildrenOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListRootNodeChildrenOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

