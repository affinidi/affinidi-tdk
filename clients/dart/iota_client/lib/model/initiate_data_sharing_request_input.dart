//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InitiateDataSharingRequestInput {
  /// Returns a new [InitiateDataSharingRequestInput] instance.
  InitiateDataSharingRequestInput({
    required this.queryId,
    required this.correlationId,
    this.tokenMaxAge,
    required this.nonce,
    required this.redirectUri,
  });

  String queryId;

  String correlationId;

  /// token time to live in seconds
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenMaxAge;

  /// Random value used to prevent replay attacks
  String nonce;

  /// the URL that the user will be redirected to after the request has been processed; should be provided by the developer of the client application.
  String redirectUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitiateDataSharingRequestInput &&
    other.queryId == queryId &&
    other.correlationId == correlationId &&
    other.tokenMaxAge == tokenMaxAge &&
    other.nonce == nonce &&
    other.redirectUri == redirectUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (queryId.hashCode) +
    (correlationId.hashCode) +
    (tokenMaxAge == null ? 0 : tokenMaxAge!.hashCode) +
    (nonce.hashCode) +
    (redirectUri.hashCode);

  @override
  String toString() => 'InitiateDataSharingRequestInput[queryId=$queryId, correlationId=$correlationId, tokenMaxAge=$tokenMaxAge, nonce=$nonce, redirectUri=$redirectUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'queryId'] = this.queryId;
      json[r'correlationId'] = this.correlationId;
    if (this.tokenMaxAge != null) {
      json[r'tokenMaxAge'] = this.tokenMaxAge;
    } else {
      json[r'tokenMaxAge'] = null;
    }
      json[r'nonce'] = this.nonce;
      json[r'redirectUri'] = this.redirectUri;
    return json;
  }

  /// Returns a new [InitiateDataSharingRequestInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InitiateDataSharingRequestInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InitiateDataSharingRequestInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InitiateDataSharingRequestInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InitiateDataSharingRequestInput(
        queryId: mapValueOfType<String>(json, r'queryId')!,
        correlationId: mapValueOfType<String>(json, r'correlationId')!,
        tokenMaxAge: mapValueOfType<int>(json, r'tokenMaxAge'),
        nonce: mapValueOfType<String>(json, r'nonce')!,
        redirectUri: mapValueOfType<String>(json, r'redirectUri')!,
      );
    }
    return null;
  }

  static List<InitiateDataSharingRequestInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitiateDataSharingRequestInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitiateDataSharingRequestInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InitiateDataSharingRequestInput> mapFromJson(dynamic json) {
    final map = <String, InitiateDataSharingRequestInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InitiateDataSharingRequestInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InitiateDataSharingRequestInput-objects as value to a dart map
  static Map<String, List<InitiateDataSharingRequestInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InitiateDataSharingRequestInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InitiateDataSharingRequestInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'queryId',
    'correlationId',
    'nonce',
    'redirectUri',
  };
}

