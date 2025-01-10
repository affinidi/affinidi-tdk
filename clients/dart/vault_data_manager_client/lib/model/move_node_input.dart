//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MoveNodeInput {
  /// Returns a new [MoveNodeInput] instance.
  MoveNodeInput({
    required this.destinationNodeId,
    this.resolveNameConflictsAutomatically = false,
  });

  /// Parent to which current node should be moved
  String destinationNodeId;

  /// automatically update the name of Node if target Node has children with the same name. If not provided, name won't be updated automatically
  bool resolveNameConflictsAutomatically;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoveNodeInput &&
    other.destinationNodeId == destinationNodeId &&
    other.resolveNameConflictsAutomatically == resolveNameConflictsAutomatically;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (destinationNodeId.hashCode) +
    (resolveNameConflictsAutomatically.hashCode);

  @override
  String toString() => 'MoveNodeInput[destinationNodeId=$destinationNodeId, resolveNameConflictsAutomatically=$resolveNameConflictsAutomatically]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'destinationNodeId'] = this.destinationNodeId;
      json[r'resolveNameConflictsAutomatically'] = this.resolveNameConflictsAutomatically;
    return json;
  }

  /// Returns a new [MoveNodeInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoveNodeInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoveNodeInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoveNodeInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoveNodeInput(
        destinationNodeId: mapValueOfType<String>(json, r'destinationNodeId')!,
        resolveNameConflictsAutomatically: mapValueOfType<bool>(json, r'resolveNameConflictsAutomatically') ?? false,
      );
    }
    return null;
  }

  static List<MoveNodeInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoveNodeInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoveNodeInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoveNodeInput> mapFromJson(dynamic json) {
    final map = <String, MoveNodeInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoveNodeInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoveNodeInput-objects as value to a dart map
  static Map<String, List<MoveNodeInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoveNodeInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoveNodeInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'destinationNodeId',
  };
}

