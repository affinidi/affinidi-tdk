//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateIotaConfigurationInput {
  /// Returns a new [CreateIotaConfigurationInput] instance.
  CreateIotaConfigurationInput({
    required this.name,
    this.description,
    required this.walletAri,
    this.iotaResponseWebhookURL,
    required this.enableVerification,
    required this.enableConsentAuditLog,
    this.tokenMaxAge,
    required this.clientMetadata,
    this.mode = const CreateIotaConfigurationInputModeEnum._('websocket'),
    this.redirectUris = const [],
    this.enableIdvProviders,
  });

  /// The name of the configuration to quickly identify the resource.
  String name;

  /// An optional description of what the configuration is used for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The unique resource identifier of the Wallet used to sign the request token.
  String walletAri;

  /// The webhook URL is used for callback when the data is ready.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iotaResponseWebhookURL;

  /// Cryptographically verifies the data shared by the user when enabled.
  bool enableVerification;

  /// Records the user's consent when they share their data, including the type of data shared when enabled.
  bool enableConsentAuditLog;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenMaxAge;

  IotaConfigurationDtoClientMetadata clientMetadata;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  CreateIotaConfigurationInputModeEnum mode;

  /// List of allowed URLs to redirect users, including the response from the request. This is required if the selected data-sharing mode is Redirect.
  List<String> redirectUris;

  /// Enables identity verification from user with a 3rd-party provider when a verified identity document is not found.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableIdvProviders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIotaConfigurationInput &&
    other.name == name &&
    other.description == description &&
    other.walletAri == walletAri &&
    other.iotaResponseWebhookURL == iotaResponseWebhookURL &&
    other.enableVerification == enableVerification &&
    other.enableConsentAuditLog == enableConsentAuditLog &&
    other.tokenMaxAge == tokenMaxAge &&
    other.clientMetadata == clientMetadata &&
    other.mode == mode &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    other.enableIdvProviders == enableIdvProviders;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (walletAri.hashCode) +
    (iotaResponseWebhookURL == null ? 0 : iotaResponseWebhookURL!.hashCode) +
    (enableVerification.hashCode) +
    (enableConsentAuditLog.hashCode) +
    (tokenMaxAge == null ? 0 : tokenMaxAge!.hashCode) +
    (clientMetadata.hashCode) +
    (mode.hashCode) +
    (redirectUris.hashCode) +
    (enableIdvProviders == null ? 0 : enableIdvProviders!.hashCode);

  @override
  String toString() => 'CreateIotaConfigurationInput[name=$name, description=$description, walletAri=$walletAri, iotaResponseWebhookURL=$iotaResponseWebhookURL, enableVerification=$enableVerification, enableConsentAuditLog=$enableConsentAuditLog, tokenMaxAge=$tokenMaxAge, clientMetadata=$clientMetadata, mode=$mode, redirectUris=$redirectUris, enableIdvProviders=$enableIdvProviders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'walletAri'] = this.walletAri;
    if (this.iotaResponseWebhookURL != null) {
      json[r'iotaResponseWebhookURL'] = this.iotaResponseWebhookURL;
    } else {
      json[r'iotaResponseWebhookURL'] = null;
    }
      json[r'enableVerification'] = this.enableVerification;
      json[r'enableConsentAuditLog'] = this.enableConsentAuditLog;
    if (this.tokenMaxAge != null) {
      json[r'tokenMaxAge'] = this.tokenMaxAge;
    } else {
      json[r'tokenMaxAge'] = null;
    }
      json[r'clientMetadata'] = this.clientMetadata;
      json[r'mode'] = this.mode;
      json[r'redirectUris'] = this.redirectUris;
    if (this.enableIdvProviders != null) {
      json[r'enableIdvProviders'] = this.enableIdvProviders;
    } else {
      json[r'enableIdvProviders'] = null;
    }
    return json;
  }

  /// Returns a new [CreateIotaConfigurationInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateIotaConfigurationInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateIotaConfigurationInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateIotaConfigurationInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateIotaConfigurationInput(
        name: mapValueOfType<String>(json, r'name')!,
        description: mapValueOfType<String>(json, r'description'),
        walletAri: mapValueOfType<String>(json, r'walletAri')!,
        iotaResponseWebhookURL: mapValueOfType<String>(json, r'iotaResponseWebhookURL'),
        enableVerification: mapValueOfType<bool>(json, r'enableVerification')!,
        enableConsentAuditLog: mapValueOfType<bool>(json, r'enableConsentAuditLog')!,
        tokenMaxAge: mapValueOfType<int>(json, r'tokenMaxAge'),
        clientMetadata: IotaConfigurationDtoClientMetadata.fromJson(json[r'clientMetadata'])!,
        mode: CreateIotaConfigurationInputModeEnum.fromJson(json[r'mode']) ?? 'websocket',
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        enableIdvProviders: mapValueOfType<bool>(json, r'enableIdvProviders'),
      );
    }
    return null;
  }

  static List<CreateIotaConfigurationInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIotaConfigurationInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIotaConfigurationInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateIotaConfigurationInput> mapFromJson(dynamic json) {
    final map = <String, CreateIotaConfigurationInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateIotaConfigurationInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateIotaConfigurationInput-objects as value to a dart map
  static Map<String, List<CreateIotaConfigurationInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateIotaConfigurationInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateIotaConfigurationInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'walletAri',
    'enableVerification',
    'enableConsentAuditLog',
    'clientMetadata',
  };
}

/// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
class CreateIotaConfigurationInputModeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateIotaConfigurationInputModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const redirect = CreateIotaConfigurationInputModeEnum._(r'redirect');
  static const websocket = CreateIotaConfigurationInputModeEnum._(r'websocket');

  /// List of all possible values in this [enum][CreateIotaConfigurationInputModeEnum].
  static const values = <CreateIotaConfigurationInputModeEnum>[
    redirect,
    websocket,
  ];

  static CreateIotaConfigurationInputModeEnum? fromJson(dynamic value) => CreateIotaConfigurationInputModeEnumTypeTransformer().decode(value);

  static List<CreateIotaConfigurationInputModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIotaConfigurationInputModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIotaConfigurationInputModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateIotaConfigurationInputModeEnum] to String,
/// and [decode] dynamic data back to [CreateIotaConfigurationInputModeEnum].
class CreateIotaConfigurationInputModeEnumTypeTransformer {
  factory CreateIotaConfigurationInputModeEnumTypeTransformer() => _instance ??= const CreateIotaConfigurationInputModeEnumTypeTransformer._();

  const CreateIotaConfigurationInputModeEnumTypeTransformer._();

  String encode(CreateIotaConfigurationInputModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateIotaConfigurationInputModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateIotaConfigurationInputModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'redirect': return CreateIotaConfigurationInputModeEnum.redirect;
        case r'websocket': return CreateIotaConfigurationInputModeEnum.websocket;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateIotaConfigurationInputModeEnumTypeTransformer] instance.
  static CreateIotaConfigurationInputModeEnumTypeTransformer? _instance;
}


