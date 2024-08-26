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
  });

  /// The name of the configuration
  String name;

  /// Description of the configuration
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The wallet Ari that will be used to sign
  String walletAri;

  /// webhook to call when data is ready
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iotaResponseWebhookURL;

  bool enableVerification;

  bool enableConsentAuditLog;

  /// token time to live in seconds
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

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIotaConfigurationInput &&
    other.name == name &&
    other.description == description &&
    other.walletAri == walletAri &&
    other.iotaResponseWebhookURL == iotaResponseWebhookURL &&
    other.enableVerification == enableVerification &&
    other.enableConsentAuditLog == enableConsentAuditLog &&
    other.tokenMaxAge == tokenMaxAge &&
    other.clientMetadata == clientMetadata;

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
    (clientMetadata.hashCode);

  @override
  String toString() => 'CreateIotaConfigurationInput[name=$name, description=$description, walletAri=$walletAri, iotaResponseWebhookURL=$iotaResponseWebhookURL, enableVerification=$enableVerification, enableConsentAuditLog=$enableConsentAuditLog, tokenMaxAge=$tokenMaxAge, clientMetadata=$clientMetadata]';

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

