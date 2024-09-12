//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FetchIOTAVPResponseOK {
  /// Returns a new [FetchIOTAVPResponseOK] instance.
  FetchIOTAVPResponseOK({
    this.correlationId,
    this.presentationSubmission,
    this.vpToken,
  });

  /// A correlationId used for the flow
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? correlationId;

  /// A string that must be a valid JSON object. The structure of presentation submission should follow OID4VP standard.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? presentationSubmission;

  /// A string that must be a valid JSON object. Ensure to escape special characters properly..
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vpToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FetchIOTAVPResponseOK &&
    other.correlationId == correlationId &&
    other.presentationSubmission == presentationSubmission &&
    other.vpToken == vpToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (correlationId == null ? 0 : correlationId!.hashCode) +
    (presentationSubmission == null ? 0 : presentationSubmission!.hashCode) +
    (vpToken == null ? 0 : vpToken!.hashCode);

  @override
  String toString() => 'FetchIOTAVPResponseOK[correlationId=$correlationId, presentationSubmission=$presentationSubmission, vpToken=$vpToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.correlationId != null) {
      json[r'correlationId'] = this.correlationId;
    } else {
      json[r'correlationId'] = null;
    }
    if (this.presentationSubmission != null) {
      json[r'presentation_submission'] = this.presentationSubmission;
    } else {
      json[r'presentation_submission'] = null;
    }
    if (this.vpToken != null) {
      json[r'vp_token'] = this.vpToken;
    } else {
      json[r'vp_token'] = null;
    }
    return json;
  }

  /// Returns a new [FetchIOTAVPResponseOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FetchIOTAVPResponseOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FetchIOTAVPResponseOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FetchIOTAVPResponseOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FetchIOTAVPResponseOK(
        correlationId: mapValueOfType<String>(json, r'correlationId'),
        presentationSubmission: mapValueOfType<String>(json, r'presentation_submission'),
        vpToken: mapValueOfType<String>(json, r'vp_token'),
      );
    }
    return null;
  }

  static List<FetchIOTAVPResponseOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FetchIOTAVPResponseOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FetchIOTAVPResponseOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FetchIOTAVPResponseOK> mapFromJson(dynamic json) {
    final map = <String, FetchIOTAVPResponseOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FetchIOTAVPResponseOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FetchIOTAVPResponseOK-objects as value to a dart map
  static Map<String, List<FetchIOTAVPResponseOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FetchIOTAVPResponseOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FetchIOTAVPResponseOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

