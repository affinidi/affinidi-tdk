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
    required this.configurationId,
    required this.mode,
  });

  /// The ID of the query.
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

  /// A randomly generated value that is added in the request and response to prevent replay attacks.
  String nonce;

  /// List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
  String redirectUri;

  /// ID of the Affinidi Iota Framework configuration.
  String configurationId;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  InitiateDataSharingRequestInputModeEnum mode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InitiateDataSharingRequestInput &&
    other.queryId == queryId &&
    other.correlationId == correlationId &&
    other.tokenMaxAge == tokenMaxAge &&
    other.nonce == nonce &&
    other.redirectUri == redirectUri &&
    other.configurationId == configurationId &&
    other.mode == mode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (queryId.hashCode) +
    (correlationId.hashCode) +
    (tokenMaxAge == null ? 0 : tokenMaxAge!.hashCode) +
    (nonce.hashCode) +
    (redirectUri.hashCode) +
    (configurationId.hashCode) +
    (mode.hashCode);

  @override
  String toString() => 'InitiateDataSharingRequestInput[queryId=$queryId, correlationId=$correlationId, tokenMaxAge=$tokenMaxAge, nonce=$nonce, redirectUri=$redirectUri, configurationId=$configurationId, mode=$mode]';

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
      json[r'configurationId'] = this.configurationId;
      json[r'mode'] = this.mode;
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
        configurationId: mapValueOfType<String>(json, r'configurationId')!,
        mode: InitiateDataSharingRequestInputModeEnum.fromJson(json[r'mode'])!,
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
    'configurationId',
    'mode',
  };
}

/// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
class InitiateDataSharingRequestInputModeEnum {
  /// Instantiate a new enum with the provided [value].
  const InitiateDataSharingRequestInputModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const redirect = InitiateDataSharingRequestInputModeEnum._(r'redirect');
  static const websocket = InitiateDataSharingRequestInputModeEnum._(r'websocket');

  /// List of all possible values in this [enum][InitiateDataSharingRequestInputModeEnum].
  static const values = <InitiateDataSharingRequestInputModeEnum>[
    redirect,
    websocket,
  ];

  static InitiateDataSharingRequestInputModeEnum? fromJson(dynamic value) => InitiateDataSharingRequestInputModeEnumTypeTransformer().decode(value);

  static List<InitiateDataSharingRequestInputModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InitiateDataSharingRequestInputModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InitiateDataSharingRequestInputModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InitiateDataSharingRequestInputModeEnum] to String,
/// and [decode] dynamic data back to [InitiateDataSharingRequestInputModeEnum].
class InitiateDataSharingRequestInputModeEnumTypeTransformer {
  factory InitiateDataSharingRequestInputModeEnumTypeTransformer() => _instance ??= const InitiateDataSharingRequestInputModeEnumTypeTransformer._();

  const InitiateDataSharingRequestInputModeEnumTypeTransformer._();

  String encode(InitiateDataSharingRequestInputModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InitiateDataSharingRequestInputModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InitiateDataSharingRequestInputModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'redirect': return InitiateDataSharingRequestInputModeEnum.redirect;
        case r'websocket': return InitiateDataSharingRequestInputModeEnum.websocket;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InitiateDataSharingRequestInputModeEnumTypeTransformer] instance.
  static InitiateDataSharingRequestInputModeEnumTypeTransformer? _instance;
}


