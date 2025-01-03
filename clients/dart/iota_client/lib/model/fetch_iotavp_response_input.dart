//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FetchIOTAVPResponseInput {
  /// Returns a new [FetchIOTAVPResponseInput] instance.
  FetchIOTAVPResponseInput({
    required this.correlationId,
    required this.transactionId,
    required this.responseCode,
    required this.configurationId,
  });

  /// A unique, randomly generated identifier that correlates the request and response in the data-sharing request flow.
  String correlationId;

  /// A unique, randomly generated identifier data-sharing request flow is initiated. This value is used with the response code to fetch the callback response data.
  String transactionId;

  /// A unique identifier to fetch the callback response data. Send this value together with the transactionId to successfully fetch the data.
  String responseCode;

  /// ID of the Affinidi Iota Framework configuration.
  String configurationId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FetchIOTAVPResponseInput &&
    other.correlationId == correlationId &&
    other.transactionId == transactionId &&
    other.responseCode == responseCode &&
    other.configurationId == configurationId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (correlationId.hashCode) +
    (transactionId.hashCode) +
    (responseCode.hashCode) +
    (configurationId.hashCode);

  @override
  String toString() => 'FetchIOTAVPResponseInput[correlationId=$correlationId, transactionId=$transactionId, responseCode=$responseCode, configurationId=$configurationId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'correlationId'] = this.correlationId;
      json[r'transactionId'] = this.transactionId;
      json[r'responseCode'] = this.responseCode;
      json[r'configurationId'] = this.configurationId;
    return json;
  }

  /// Returns a new [FetchIOTAVPResponseInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FetchIOTAVPResponseInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FetchIOTAVPResponseInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FetchIOTAVPResponseInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FetchIOTAVPResponseInput(
        correlationId: mapValueOfType<String>(json, r'correlationId')!,
        transactionId: mapValueOfType<String>(json, r'transactionId')!,
        responseCode: mapValueOfType<String>(json, r'responseCode')!,
        configurationId: mapValueOfType<String>(json, r'configurationId')!,
      );
    }
    return null;
  }

  static List<FetchIOTAVPResponseInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FetchIOTAVPResponseInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FetchIOTAVPResponseInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FetchIOTAVPResponseInput> mapFromJson(dynamic json) {
    final map = <String, FetchIOTAVPResponseInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FetchIOTAVPResponseInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FetchIOTAVPResponseInput-objects as value to a dart map
  static Map<String, List<FetchIOTAVPResponseInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FetchIOTAVPResponseInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FetchIOTAVPResponseInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'correlationId',
    'transactionId',
    'responseCode',
    'configurationId',
  };
}

