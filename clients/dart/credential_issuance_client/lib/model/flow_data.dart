//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlowData {
  /// Returns a new [FlowData] instance.
  FlowData({
    required this.createdAt,
    required this.modifiedAt,
    required this.id,
    this.projectId,
    required this.flowId,
    required this.credentialTypeId,
    required this.jsonLdContextUrl,
    required this.jsonSchemaUrl,
    this.configurationId,
    this.issuedAt,
    this.walletId,
    this.projectIdConfigurationId,
    this.projectIdConfigurationIdWalletId,
    this.projectIdConfigurationIdCredentialType,
    this.statusListsDetails = const [],
  });

  /// [GEN] ISO 8601 string of the creation date/time the entity
  String createdAt;

  /// [GEN] ISO 8601 string of the modification date/time the entity
  String modifiedAt;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectId;

  String flowId;

  String credentialTypeId;

  String jsonLdContextUrl;

  String jsonSchemaUrl;

  /// Id of configuration, used to issue VC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? configurationId;

  /// when credential was issued to the holder (holder invoked generateCredentials endpoint)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuedAt;

  /// Id of wallet, used to issue VC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? walletId;

  /// Id of configuration with which VC was issued. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{configurationId}\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectIdConfigurationId;

  /// Id of wallet which issued VC. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{walletId}\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectIdConfigurationIdWalletId;

  /// VC.type value. To use as an index, it is grouped together with projectId, as \"{projectIdConfigurationId}#{credentialType}\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? projectIdConfigurationIdCredentialType;

  List<FlowDataStatusListsDetailsInner> statusListsDetails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowData &&
    other.createdAt == createdAt &&
    other.modifiedAt == modifiedAt &&
    other.id == id &&
    other.projectId == projectId &&
    other.flowId == flowId &&
    other.credentialTypeId == credentialTypeId &&
    other.jsonLdContextUrl == jsonLdContextUrl &&
    other.jsonSchemaUrl == jsonSchemaUrl &&
    other.configurationId == configurationId &&
    other.issuedAt == issuedAt &&
    other.walletId == walletId &&
    other.projectIdConfigurationId == projectIdConfigurationId &&
    other.projectIdConfigurationIdWalletId == projectIdConfigurationIdWalletId &&
    other.projectIdConfigurationIdCredentialType == projectIdConfigurationIdCredentialType &&
    _deepEquality.equals(other.statusListsDetails, statusListsDetails);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (modifiedAt.hashCode) +
    (id.hashCode) +
    (projectId == null ? 0 : projectId!.hashCode) +
    (flowId.hashCode) +
    (credentialTypeId.hashCode) +
    (jsonLdContextUrl.hashCode) +
    (jsonSchemaUrl.hashCode) +
    (configurationId == null ? 0 : configurationId!.hashCode) +
    (issuedAt == null ? 0 : issuedAt!.hashCode) +
    (walletId == null ? 0 : walletId!.hashCode) +
    (projectIdConfigurationId == null ? 0 : projectIdConfigurationId!.hashCode) +
    (projectIdConfigurationIdWalletId == null ? 0 : projectIdConfigurationIdWalletId!.hashCode) +
    (projectIdConfigurationIdCredentialType == null ? 0 : projectIdConfigurationIdCredentialType!.hashCode) +
    (statusListsDetails.hashCode);

  @override
  String toString() => 'FlowData[createdAt=$createdAt, modifiedAt=$modifiedAt, id=$id, projectId=$projectId, flowId=$flowId, credentialTypeId=$credentialTypeId, jsonLdContextUrl=$jsonLdContextUrl, jsonSchemaUrl=$jsonSchemaUrl, configurationId=$configurationId, issuedAt=$issuedAt, walletId=$walletId, projectIdConfigurationId=$projectIdConfigurationId, projectIdConfigurationIdWalletId=$projectIdConfigurationIdWalletId, projectIdConfigurationIdCredentialType=$projectIdConfigurationIdCredentialType, statusListsDetails=$statusListsDetails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt;
      json[r'modifiedAt'] = this.modifiedAt;
      json[r'id'] = this.id;
    if (this.projectId != null) {
      json[r'projectId'] = this.projectId;
    } else {
      json[r'projectId'] = null;
    }
      json[r'flowId'] = this.flowId;
      json[r'credentialTypeId'] = this.credentialTypeId;
      json[r'jsonLdContextUrl'] = this.jsonLdContextUrl;
      json[r'jsonSchemaUrl'] = this.jsonSchemaUrl;
    if (this.configurationId != null) {
      json[r'configurationId'] = this.configurationId;
    } else {
      json[r'configurationId'] = null;
    }
    if (this.issuedAt != null) {
      json[r'issuedAt'] = this.issuedAt;
    } else {
      json[r'issuedAt'] = null;
    }
    if (this.walletId != null) {
      json[r'walletId'] = this.walletId;
    } else {
      json[r'walletId'] = null;
    }
    if (this.projectIdConfigurationId != null) {
      json[r'projectIdConfigurationId'] = this.projectIdConfigurationId;
    } else {
      json[r'projectIdConfigurationId'] = null;
    }
    if (this.projectIdConfigurationIdWalletId != null) {
      json[r'projectIdConfigurationIdWalletId'] = this.projectIdConfigurationIdWalletId;
    } else {
      json[r'projectIdConfigurationIdWalletId'] = null;
    }
    if (this.projectIdConfigurationIdCredentialType != null) {
      json[r'projectIdConfigurationIdCredentialType'] = this.projectIdConfigurationIdCredentialType;
    } else {
      json[r'projectIdConfigurationIdCredentialType'] = null;
    }
      json[r'statusListsDetails'] = this.statusListsDetails;
    return json;
  }

  /// Returns a new [FlowData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlowData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlowData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlowData(
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        modifiedAt: mapValueOfType<String>(json, r'modifiedAt')!,
        id: mapValueOfType<String>(json, r'id')!,
        projectId: mapValueOfType<String>(json, r'projectId'),
        flowId: mapValueOfType<String>(json, r'flowId')!,
        credentialTypeId: mapValueOfType<String>(json, r'credentialTypeId')!,
        jsonLdContextUrl: mapValueOfType<String>(json, r'jsonLdContextUrl')!,
        jsonSchemaUrl: mapValueOfType<String>(json, r'jsonSchemaUrl')!,
        configurationId: mapValueOfType<String>(json, r'configurationId'),
        issuedAt: mapValueOfType<String>(json, r'issuedAt'),
        walletId: mapValueOfType<String>(json, r'walletId'),
        projectIdConfigurationId: mapValueOfType<String>(json, r'projectIdConfigurationId'),
        projectIdConfigurationIdWalletId: mapValueOfType<String>(json, r'projectIdConfigurationIdWalletId'),
        projectIdConfigurationIdCredentialType: mapValueOfType<String>(json, r'projectIdConfigurationIdCredentialType'),
        statusListsDetails: FlowDataStatusListsDetailsInner.listFromJson(json[r'statusListsDetails']),
      );
    }
    return null;
  }

  static List<FlowData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlowData> mapFromJson(dynamic json) {
    final map = <String, FlowData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlowData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlowData-objects as value to a dart map
  static Map<String, List<FlowData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlowData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlowData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'modifiedAt',
    'id',
    'flowId',
    'credentialTypeId',
    'jsonLdContextUrl',
    'jsonSchemaUrl',
  };
}

