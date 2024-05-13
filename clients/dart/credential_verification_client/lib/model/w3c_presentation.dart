//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class W3cPresentation {
  /// Returns a new [W3cPresentation] instance.
  W3cPresentation({
    required this.atContext,
    this.id,
    this.type = const [],
    required this.holder,
    this.verifiableCredential = const [],
    this.presentationSubmission,
    required this.proof,
  });

  W3cPresentationContext atContext;

  String? id;

  List<String> type;

  Object holder;

  List<W3cCredential> verifiableCredential;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PresentationSubmission? presentationSubmission;

  Object proof;

  @override
  bool operator ==(Object other) => identical(this, other) || other is W3cPresentation &&
    other.atContext == atContext &&
    other.id == id &&
    _deepEquality.equals(other.type, type) &&
    other.holder == holder &&
    _deepEquality.equals(other.verifiableCredential, verifiableCredential) &&
    other.presentationSubmission == presentationSubmission &&
    other.proof == proof;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (atContext.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (type.hashCode) +
    (holder.hashCode) +
    (verifiableCredential.hashCode) +
    (presentationSubmission == null ? 0 : presentationSubmission!.hashCode) +
    (proof.hashCode);

  @override
  String toString() => 'W3cPresentation[atContext=$atContext, id=$id, type=$type, holder=$holder, verifiableCredential=$verifiableCredential, presentationSubmission=$presentationSubmission, proof=$proof]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'@context'] = this.atContext;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'type'] = this.type;
      json[r'holder'] = this.holder;
      json[r'verifiableCredential'] = this.verifiableCredential;
    if (this.presentationSubmission != null) {
      json[r'presentation_submission'] = this.presentationSubmission;
    } else {
      json[r'presentation_submission'] = null;
    }
      json[r'proof'] = this.proof;
    return json;
  }

  /// Returns a new [W3cPresentation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static W3cPresentation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "W3cPresentation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "W3cPresentation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return W3cPresentation(
        atContext: W3cPresentationContext.fromJson(json[r'@context'])!,
        id: mapValueOfType<String>(json, r'id'),
        type: json[r'type'] is Iterable
            ? (json[r'type'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        holder: mapValueOfType<Object>(json, r'holder')!,
        verifiableCredential: W3cCredential.listFromJson(json[r'verifiableCredential']),
        presentationSubmission: PresentationSubmission.fromJson(json[r'presentation_submission']),
        proof: mapValueOfType<Object>(json, r'proof')!,
      );
    }
    return null;
  }

  static List<W3cPresentation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <W3cPresentation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = W3cPresentation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, W3cPresentation> mapFromJson(dynamic json) {
    final map = <String, W3cPresentation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = W3cPresentation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of W3cPresentation-objects as value to a dart map
  static Map<String, List<W3cPresentation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<W3cPresentation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = W3cPresentation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '@context',
    'type',
    'holder',
    'verifiableCredential',
    'proof',
  };
}

