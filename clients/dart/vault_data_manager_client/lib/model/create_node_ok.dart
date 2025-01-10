//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateNodeOK {
  /// Returns a new [CreateNodeOK] instance.
  CreateNodeOK({
    required this.nodeId,
    this.url,
    this.link,
    this.fields = const {},
  });

  String nodeId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? link;

  Map<String, Object> fields;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateNodeOK &&
    other.nodeId == nodeId &&
    other.url == url &&
    other.link == link &&
    _deepEquality.equals(other.fields, fields);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (nodeId.hashCode) +
    (url == null ? 0 : url!.hashCode) +
    (link == null ? 0 : link!.hashCode) +
    (fields.hashCode);

  @override
  String toString() => 'CreateNodeOK[nodeId=$nodeId, url=$url, link=$link, fields=$fields]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'nodeId'] = this.nodeId;
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    if (this.link != null) {
      json[r'link'] = this.link;
    } else {
      json[r'link'] = null;
    }
      json[r'fields'] = this.fields;
    return json;
  }

  /// Returns a new [CreateNodeOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateNodeOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateNodeOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateNodeOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateNodeOK(
        nodeId: mapValueOfType<String>(json, r'nodeId')!,
        url: mapValueOfType<String>(json, r'url'),
        link: mapValueOfType<String>(json, r'link'),
        fields: mapCastOfType<String, Object>(json, r'fields') ?? const {},
      );
    }
    return null;
  }

  static List<CreateNodeOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateNodeOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateNodeOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateNodeOK> mapFromJson(dynamic json) {
    final map = <String, CreateNodeOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateNodeOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateNodeOK-objects as value to a dart map
  static Map<String, List<CreateNodeOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateNodeOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateNodeOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'nodeId',
  };
}

