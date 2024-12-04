//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrepareRequest {
  /// Returns a new [PrepareRequest] instance.
  PrepareRequest({
    required this.connectionClientId,
    required this.queryId,
    required this.correlationId,
    this.tokenMaxAge,
    this.audience,
  });

  String connectionClientId;

  String queryId;

  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  String correlationId;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenMaxAge;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audience;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrepareRequest &&
    other.connectionClientId == connectionClientId &&
    other.queryId == queryId &&
    other.correlationId == correlationId &&
    other.tokenMaxAge == tokenMaxAge &&
    other.audience == audience;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionClientId.hashCode) +
    (queryId.hashCode) +
    (correlationId.hashCode) +
    (tokenMaxAge == null ? 0 : tokenMaxAge!.hashCode) +
    (audience == null ? 0 : audience!.hashCode);

  @override
  String toString() => 'PrepareRequest[connectionClientId=$connectionClientId, queryId=$queryId, correlationId=$correlationId, tokenMaxAge=$tokenMaxAge, audience=$audience]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionClientId'] = this.connectionClientId;
      json[r'queryId'] = this.queryId;
      json[r'correlationId'] = this.correlationId;
    if (this.tokenMaxAge != null) {
      json[r'tokenMaxAge'] = this.tokenMaxAge;
    } else {
      json[r'tokenMaxAge'] = null;
    }
    if (this.audience != null) {
      json[r'audience'] = this.audience;
    } else {
      json[r'audience'] = null;
    }
    return json;
  }

  /// Returns a new [PrepareRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrepareRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrepareRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrepareRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrepareRequest(
        connectionClientId: mapValueOfType<String>(json, r'connectionClientId')!,
        queryId: mapValueOfType<String>(json, r'queryId')!,
        correlationId: mapValueOfType<String>(json, r'correlationId')!,
        tokenMaxAge: mapValueOfType<int>(json, r'tokenMaxAge'),
        audience: mapValueOfType<String>(json, r'audience'),
      );
    }
    return null;
  }

  static List<PrepareRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrepareRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrepareRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrepareRequest> mapFromJson(dynamic json) {
    final map = <String, PrepareRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrepareRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrepareRequest-objects as value to a dart map
  static Map<String, List<PrepareRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrepareRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrepareRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectionClientId',
    'queryId',
    'correlationId',
  };
}

