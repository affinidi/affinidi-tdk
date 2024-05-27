//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateConfigurationByIdInput {
  /// Returns a new [UpdateConfigurationByIdInput] instance.
  UpdateConfigurationByIdInput({
    this.name,
    this.walletAri,
    this.iotaResponseWebhookURL,
    this.enableVerification,
    this.enableConsentAuditLog,
    this.tokenMaxAge,
    this.clientMetadata,
  });

  /// The name of the config
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The wallet Ari that will be used to sign
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletAri;

  /// webhook to call when data is ready
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? iotaResponseWebhookURL;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableVerification;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enableConsentAuditLog;

  /// token time to live in seconds
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
  IotaConfigurationDtoClientMetadata? clientMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateConfigurationByIdInput &&
    other.name == name &&
    other.walletAri == walletAri &&
    other.iotaResponseWebhookURL == iotaResponseWebhookURL &&
    other.enableVerification == enableVerification &&
    other.enableConsentAuditLog == enableConsentAuditLog &&
    other.tokenMaxAge == tokenMaxAge &&
    other.clientMetadata == clientMetadata;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (walletAri == null ? 0 : walletAri!.hashCode) +
    (iotaResponseWebhookURL == null ? 0 : iotaResponseWebhookURL!.hashCode) +
    (enableVerification == null ? 0 : enableVerification!.hashCode) +
    (enableConsentAuditLog == null ? 0 : enableConsentAuditLog!.hashCode) +
    (tokenMaxAge == null ? 0 : tokenMaxAge!.hashCode) +
    (clientMetadata == null ? 0 : clientMetadata!.hashCode);

  @override
  String toString() => 'UpdateConfigurationByIdInput[name=$name, walletAri=$walletAri, iotaResponseWebhookURL=$iotaResponseWebhookURL, enableVerification=$enableVerification, enableConsentAuditLog=$enableConsentAuditLog, tokenMaxAge=$tokenMaxAge, clientMetadata=$clientMetadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.walletAri != null) {
      json[r'walletAri'] = this.walletAri;
    } else {
      json[r'walletAri'] = null;
    }
    if (this.iotaResponseWebhookURL != null) {
      json[r'iotaResponseWebhookURL'] = this.iotaResponseWebhookURL;
    } else {
      json[r'iotaResponseWebhookURL'] = null;
    }
    if (this.enableVerification != null) {
      json[r'enableVerification'] = this.enableVerification;
    } else {
      json[r'enableVerification'] = null;
    }
    if (this.enableConsentAuditLog != null) {
      json[r'enableConsentAuditLog'] = this.enableConsentAuditLog;
    } else {
      json[r'enableConsentAuditLog'] = null;
    }
    if (this.tokenMaxAge != null) {
      json[r'tokenMaxAge'] = this.tokenMaxAge;
    } else {
      json[r'tokenMaxAge'] = null;
    }
    if (this.clientMetadata != null) {
      json[r'clientMetadata'] = this.clientMetadata;
    } else {
      json[r'clientMetadata'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateConfigurationByIdInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateConfigurationByIdInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateConfigurationByIdInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateConfigurationByIdInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateConfigurationByIdInput(
        name: mapValueOfType<String>(json, r'name'),
        walletAri: mapValueOfType<String>(json, r'walletAri'),
        iotaResponseWebhookURL: mapValueOfType<String>(json, r'iotaResponseWebhookURL'),
        enableVerification: mapValueOfType<bool>(json, r'enableVerification'),
        enableConsentAuditLog: mapValueOfType<bool>(json, r'enableConsentAuditLog'),
        tokenMaxAge: mapValueOfType<int>(json, r'tokenMaxAge'),
        clientMetadata: IotaConfigurationDtoClientMetadata.fromJson(json[r'clientMetadata']),
      );
    }
    return null;
  }

  static List<UpdateConfigurationByIdInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateConfigurationByIdInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateConfigurationByIdInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateConfigurationByIdInput> mapFromJson(dynamic json) {
    final map = <String, UpdateConfigurationByIdInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateConfigurationByIdInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateConfigurationByIdInput-objects as value to a dart map
  static Map<String, List<UpdateConfigurationByIdInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateConfigurationByIdInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateConfigurationByIdInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

