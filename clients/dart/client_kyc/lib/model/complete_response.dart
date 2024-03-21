//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompleteResponse {
  /// Returns a new [CompleteResponse] instance.
  CompleteResponse({
    this.emailVc,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? emailVc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompleteResponse &&
    other.emailVc == emailVc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailVc == null ? 0 : emailVc!.hashCode);

  @override
  String toString() => 'CompleteResponse[emailVc=$emailVc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emailVc != null) {
      json[r'emailVc'] = this.emailVc;
    } else {
      json[r'emailVc'] = null;
    }
    return json;
  }

  /// Returns a new [CompleteResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompleteResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompleteResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompleteResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompleteResponse(
        emailVc: mapValueOfType<Object>(json, r'emailVc'),
      );
    }
    return null;
  }

  static List<CompleteResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompleteResponse> mapFromJson(dynamic json) {
    final map = <String, CompleteResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompleteResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompleteResponse-objects as value to a dart map
  static Map<String, List<CompleteResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompleteResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompleteResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

