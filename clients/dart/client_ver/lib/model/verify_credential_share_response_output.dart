//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VerifyCredentialShareResponseOutput {
  /// Returns a new [VerifyCredentialShareResponseOutput] instance.
  VerifyCredentialShareResponseOutput({
    required this.jti,
    this.errors = const [],
    required this.issuer,
    required this.isValid,
    this.suppliedCredentials = const [],
  });

  /// JWT ID
  String jti;

  /// Errors of the failed verification
  List<String> errors;

  /// Issuer of VCs
  String issuer;

  /// Verification result
  bool isValid;

  /// Supplied credentials
  List<Object> suppliedCredentials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VerifyCredentialShareResponseOutput &&
    other.jti == jti &&
    _deepEquality.equals(other.errors, errors) &&
    other.issuer == issuer &&
    other.isValid == isValid &&
    _deepEquality.equals(other.suppliedCredentials, suppliedCredentials);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jti.hashCode) +
    (errors.hashCode) +
    (issuer.hashCode) +
    (isValid.hashCode) +
    (suppliedCredentials.hashCode);

  @override
  String toString() => 'VerifyCredentialShareResponseOutput[jti=$jti, errors=$errors, issuer=$issuer, isValid=$isValid, suppliedCredentials=$suppliedCredentials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jti'] = this.jti;
      json[r'errors'] = this.errors;
      json[r'issuer'] = this.issuer;
      json[r'isValid'] = this.isValid;
      json[r'suppliedCredentials'] = this.suppliedCredentials;
    return json;
  }

  /// Returns a new [VerifyCredentialShareResponseOutput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VerifyCredentialShareResponseOutput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VerifyCredentialShareResponseOutput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VerifyCredentialShareResponseOutput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VerifyCredentialShareResponseOutput(
        jti: mapValueOfType<String>(json, r'jti')!,
        errors: json[r'errors'] is Iterable
            ? (json[r'errors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        issuer: mapValueOfType<String>(json, r'issuer')!,
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        suppliedCredentials: Object.listFromJson(json[r'suppliedCredentials']),
      );
    }
    return null;
  }

  static List<VerifyCredentialShareResponseOutput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VerifyCredentialShareResponseOutput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VerifyCredentialShareResponseOutput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VerifyCredentialShareResponseOutput> mapFromJson(dynamic json) {
    final map = <String, VerifyCredentialShareResponseOutput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VerifyCredentialShareResponseOutput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VerifyCredentialShareResponseOutput-objects as value to a dart map
  static Map<String, List<VerifyCredentialShareResponseOutput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VerifyCredentialShareResponseOutput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VerifyCredentialShareResponseOutput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jti',
    'errors',
    'issuer',
    'isValid',
    'suppliedCredentials',
  };
}

