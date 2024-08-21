//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PresentationDefinition {
  /// Returns a new [PresentationDefinition] instance.
  PresentationDefinition({
    required this.id,
    this.name,
    this.purpose,
    this.format,
    this.submissionRequirements = const [],
    this.inputDescriptors = const [],
    this.frame,
  });

  /// Definition id
  String id;

  /// Definition name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Definition purpose
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Format? format;

  List<SubmissionRequirement> submissionRequirements;

  List<InputDescriptor> inputDescriptors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FreeFormObject? frame;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PresentationDefinition &&
    other.id == id &&
    other.name == name &&
    other.purpose == purpose &&
    other.format == format &&
    _deepEquality.equals(other.submissionRequirements, submissionRequirements) &&
    _deepEquality.equals(other.inputDescriptors, inputDescriptors) &&
    other.frame == frame;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (purpose == null ? 0 : purpose!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (submissionRequirements.hashCode) +
    (inputDescriptors.hashCode) +
    (frame == null ? 0 : frame!.hashCode);

  @override
  String toString() => 'PresentationDefinition[id=$id, name=$name, purpose=$purpose, format=$format, submissionRequirements=$submissionRequirements, inputDescriptors=$inputDescriptors, frame=$frame]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
      json[r'submission_requirements'] = this.submissionRequirements;
      json[r'input_descriptors'] = this.inputDescriptors;
    if (this.frame != null) {
      json[r'frame'] = this.frame;
    } else {
      json[r'frame'] = null;
    }
    return json;
  }

  /// Returns a new [PresentationDefinition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PresentationDefinition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PresentationDefinition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PresentationDefinition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PresentationDefinition(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        purpose: mapValueOfType<String>(json, r'purpose'),
        format: Format.fromJson(json[r'format']),
        submissionRequirements: SubmissionRequirement.listFromJson(json[r'submission_requirements']),
        inputDescriptors: InputDescriptor.listFromJson(json[r'input_descriptors']),
        frame: FreeFormObject.fromJson(json[r'frame']),
      );
    }
    return null;
  }

  static List<PresentationDefinition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PresentationDefinition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PresentationDefinition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PresentationDefinition> mapFromJson(dynamic json) {
    final map = <String, PresentationDefinition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PresentationDefinition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PresentationDefinition-objects as value to a dart map
  static Map<String, List<PresentationDefinition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PresentationDefinition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PresentationDefinition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'input_descriptors',
  };
}

