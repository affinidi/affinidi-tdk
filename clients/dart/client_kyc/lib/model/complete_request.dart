//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompleteRequest {
  /// Returns a new [CompleteRequest] instance.
  CompleteRequest({
    required this.email,
    required this.did,
    required this.confirmationCode,
  });

  String email;

  String did;

  String confirmationCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompleteRequest &&
    other.email == email &&
    other.did == did &&
    other.confirmationCode == confirmationCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (email.hashCode) +
    (did.hashCode) +
    (confirmationCode.hashCode);

  @override
  String toString() => 'CompleteRequest[email=$email, did=$did, confirmationCode=$confirmationCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'email'] = this.email;
      json[r'did'] = this.did;
      json[r'confirmationCode'] = this.confirmationCode;
    return json;
  }

  /// Returns a new [CompleteRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompleteRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompleteRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompleteRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompleteRequest(
        email: mapValueOfType<String>(json, r'email')!,
        did: mapValueOfType<String>(json, r'did')!,
        confirmationCode: mapValueOfType<String>(json, r'confirmationCode')!,
      );
    }
    return null;
  }

  static List<CompleteRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompleteRequest> mapFromJson(dynamic json) {
    final map = <String, CompleteRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompleteRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompleteRequest-objects as value to a dart map
  static Map<String, List<CompleteRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompleteRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompleteRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
    'did',
    'confirmationCode',
  };
}

