//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IotaConfigurationDto {
  /// Returns a new [IotaConfigurationDto] instance.
  IotaConfigurationDto({
    required this.ari,
    required this.configurationId,
    required this.name,
    required this.projectId,
    required this.walletAri,
    required this.tokenMaxAge,
    this.iotaResponseWebhookURL,
    required this.enableVerification,
    required this.enableConsentAuditLog,
    required this.clientMetadata,
    this.mode = const IotaConfigurationDtoModeEnum._('websocket'),
    this.redirectUris = const [],
    this.enableIdvProviders,
  });

  /// This is a unique resource identifier of the Affinidi Iota Framework configuration.
  String ari;

  /// ID of the Affinidi Iota Framework configuration.
  String configurationId;

  /// The name of the configuration to quickly identify the resource.
  String name;

  /// The ID of the project.
  String projectId;

  /// The unique resource identifier of the Wallet used to sign the request token.
  String walletAri;

  /// This is the lifetime of the signed request token during the data-sharing flow.
  int tokenMaxAge;

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

  /// Records the consent the user gave when they shared their data, including the type of data shared.
  bool enableConsentAuditLog;

  IotaConfigurationDtoClientMetadata clientMetadata;

  /// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
  IotaConfigurationDtoModeEnum mode;

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
  bool operator ==(Object other) => identical(this, other) || other is IotaConfigurationDto &&
    other.ari == ari &&
    other.configurationId == configurationId &&
    other.name == name &&
    other.projectId == projectId &&
    other.walletAri == walletAri &&
    other.tokenMaxAge == tokenMaxAge &&
    other.iotaResponseWebhookURL == iotaResponseWebhookURL &&
    other.enableVerification == enableVerification &&
    other.enableConsentAuditLog == enableConsentAuditLog &&
    other.clientMetadata == clientMetadata &&
    other.mode == mode &&
    _deepEquality.equals(other.redirectUris, redirectUris) &&
    other.enableIdvProviders == enableIdvProviders;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ari.hashCode) +
    (configurationId.hashCode) +
    (name.hashCode) +
    (projectId.hashCode) +
    (walletAri.hashCode) +
    (tokenMaxAge.hashCode) +
    (iotaResponseWebhookURL == null ? 0 : iotaResponseWebhookURL!.hashCode) +
    (enableVerification.hashCode) +
    (enableConsentAuditLog.hashCode) +
    (clientMetadata.hashCode) +
    (mode.hashCode) +
    (redirectUris.hashCode) +
    (enableIdvProviders == null ? 0 : enableIdvProviders!.hashCode);

  @override
  String toString() => 'IotaConfigurationDto[ari=$ari, configurationId=$configurationId, name=$name, projectId=$projectId, walletAri=$walletAri, tokenMaxAge=$tokenMaxAge, iotaResponseWebhookURL=$iotaResponseWebhookURL, enableVerification=$enableVerification, enableConsentAuditLog=$enableConsentAuditLog, clientMetadata=$clientMetadata, mode=$mode, redirectUris=$redirectUris, enableIdvProviders=$enableIdvProviders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ari'] = this.ari;
      json[r'configurationId'] = this.configurationId;
      json[r'name'] = this.name;
      json[r'projectId'] = this.projectId;
      json[r'walletAri'] = this.walletAri;
      json[r'tokenMaxAge'] = this.tokenMaxAge;
    if (this.iotaResponseWebhookURL != null) {
      json[r'iotaResponseWebhookURL'] = this.iotaResponseWebhookURL;
    } else {
      json[r'iotaResponseWebhookURL'] = null;
    }
      json[r'enableVerification'] = this.enableVerification;
      json[r'enableConsentAuditLog'] = this.enableConsentAuditLog;
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

  /// Returns a new [IotaConfigurationDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IotaConfigurationDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IotaConfigurationDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IotaConfigurationDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IotaConfigurationDto(
        ari: mapValueOfType<String>(json, r'ari')!,
        configurationId: mapValueOfType<String>(json, r'configurationId')!,
        name: mapValueOfType<String>(json, r'name')!,
        projectId: mapValueOfType<String>(json, r'projectId')!,
        walletAri: mapValueOfType<String>(json, r'walletAri')!,
        tokenMaxAge: mapValueOfType<int>(json, r'tokenMaxAge')!,
        iotaResponseWebhookURL: mapValueOfType<String>(json, r'iotaResponseWebhookURL'),
        enableVerification: mapValueOfType<bool>(json, r'enableVerification')!,
        enableConsentAuditLog: mapValueOfType<bool>(json, r'enableConsentAuditLog')!,
        clientMetadata: IotaConfigurationDtoClientMetadata.fromJson(json[r'clientMetadata'])!,
        mode: IotaConfigurationDtoModeEnum.fromJson(json[r'mode']) ?? 'websocket',
        redirectUris: json[r'redirectUris'] is Iterable
            ? (json[r'redirectUris'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        enableIdvProviders: mapValueOfType<bool>(json, r'enableIdvProviders'),
      );
    }
    return null;
  }

  static List<IotaConfigurationDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IotaConfigurationDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IotaConfigurationDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IotaConfigurationDto> mapFromJson(dynamic json) {
    final map = <String, IotaConfigurationDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IotaConfigurationDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IotaConfigurationDto-objects as value to a dart map
  static Map<String, List<IotaConfigurationDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IotaConfigurationDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IotaConfigurationDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ari',
    'configurationId',
    'name',
    'projectId',
    'walletAri',
    'tokenMaxAge',
    'enableVerification',
    'enableConsentAuditLog',
    'clientMetadata',
  };
}

/// Determines whether to handle the data-sharing request using the WebSocket or Redirect flow.
class IotaConfigurationDtoModeEnum {
  /// Instantiate a new enum with the provided [value].
  const IotaConfigurationDtoModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const redirect = IotaConfigurationDtoModeEnum._(r'redirect');
  static const websocket = IotaConfigurationDtoModeEnum._(r'websocket');

  /// List of all possible values in this [enum][IotaConfigurationDtoModeEnum].
  static const values = <IotaConfigurationDtoModeEnum>[
    redirect,
    websocket,
  ];

  static IotaConfigurationDtoModeEnum? fromJson(dynamic value) => IotaConfigurationDtoModeEnumTypeTransformer().decode(value);

  static List<IotaConfigurationDtoModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IotaConfigurationDtoModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IotaConfigurationDtoModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IotaConfigurationDtoModeEnum] to String,
/// and [decode] dynamic data back to [IotaConfigurationDtoModeEnum].
class IotaConfigurationDtoModeEnumTypeTransformer {
  factory IotaConfigurationDtoModeEnumTypeTransformer() => _instance ??= const IotaConfigurationDtoModeEnumTypeTransformer._();

  const IotaConfigurationDtoModeEnumTypeTransformer._();

  String encode(IotaConfigurationDtoModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IotaConfigurationDtoModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IotaConfigurationDtoModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'redirect': return IotaConfigurationDtoModeEnum.redirect;
        case r'websocket': return IotaConfigurationDtoModeEnum.websocket;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IotaConfigurationDtoModeEnumTypeTransformer] instance.
  static IotaConfigurationDtoModeEnumTypeTransformer? _instance;
}


