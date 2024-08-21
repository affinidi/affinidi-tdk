//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateIssuanceConfigInput {
  /// Returns a new [UpdateIssuanceConfigInput] instance.
  UpdateIssuanceConfigInput({
    this.name,
    this.description,
    this.issuerWalletId,
    this.credentialOfferDuration,
    this.format,
    this.issuerUri,
    this.credentialSupported = const [],
    this.issuerMetadata = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Issuer Wallet id
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerWalletId;

  /// credential offer duration in second
  ///
  /// Minimum value: 1
  /// Maximum value: 604801
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? credentialOfferDuration;

  /// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
  UpdateIssuanceConfigInputFormatEnum? format;

  /// Issuer URI
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerUri;

  List<CredentialSupportedObject> credentialSupported;

  /// Issuer public information wallet may want to show to user during consent confirmation
  Map<String, Object> issuerMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateIssuanceConfigInput &&
    other.name == name &&
    other.description == description &&
    other.issuerWalletId == issuerWalletId &&
    other.credentialOfferDuration == credentialOfferDuration &&
    other.format == format &&
    other.issuerUri == issuerUri &&
    _deepEquality.equals(other.credentialSupported, credentialSupported) &&
    _deepEquality.equals(other.issuerMetadata, issuerMetadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (issuerWalletId == null ? 0 : issuerWalletId!.hashCode) +
    (credentialOfferDuration == null ? 0 : credentialOfferDuration!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (issuerUri == null ? 0 : issuerUri!.hashCode) +
    (credentialSupported.hashCode) +
    (issuerMetadata.hashCode);

  @override
  String toString() => 'UpdateIssuanceConfigInput[name=$name, description=$description, issuerWalletId=$issuerWalletId, credentialOfferDuration=$credentialOfferDuration, format=$format, issuerUri=$issuerUri, credentialSupported=$credentialSupported, issuerMetadata=$issuerMetadata]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.issuerWalletId != null) {
      json[r'issuerWalletId'] = this.issuerWalletId;
    } else {
      json[r'issuerWalletId'] = null;
    }
    if (this.credentialOfferDuration != null) {
      json[r'credentialOfferDuration'] = this.credentialOfferDuration;
    } else {
      json[r'credentialOfferDuration'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.issuerUri != null) {
      json[r'issuerUri'] = this.issuerUri;
    } else {
      json[r'issuerUri'] = null;
    }
      json[r'credentialSupported'] = this.credentialSupported;
      json[r'issuerMetadata'] = this.issuerMetadata;
    return json;
  }

  /// Returns a new [UpdateIssuanceConfigInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateIssuanceConfigInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateIssuanceConfigInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateIssuanceConfigInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateIssuanceConfigInput(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        issuerWalletId: mapValueOfType<String>(json, r'issuerWalletId'),
        credentialOfferDuration: mapValueOfType<int>(json, r'credentialOfferDuration'),
        format: UpdateIssuanceConfigInputFormatEnum.fromJson(json[r'format']),
        issuerUri: mapValueOfType<String>(json, r'issuerUri'),
        credentialSupported: CredentialSupportedObject.listFromJson(json[r'credentialSupported']),
        issuerMetadata: mapCastOfType<String, Object>(json, r'issuerMetadata') ?? const {},
      );
    }
    return null;
  }

  static List<UpdateIssuanceConfigInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateIssuanceConfigInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateIssuanceConfigInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateIssuanceConfigInput> mapFromJson(dynamic json) {
    final map = <String, UpdateIssuanceConfigInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateIssuanceConfigInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateIssuanceConfigInput-objects as value to a dart map
  static Map<String, List<UpdateIssuanceConfigInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateIssuanceConfigInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateIssuanceConfigInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
class UpdateIssuanceConfigInputFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateIssuanceConfigInputFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ldpVc = UpdateIssuanceConfigInputFormatEnum._(r'ldp_vc');
  static const jwtVcJsonLd = UpdateIssuanceConfigInputFormatEnum._(r'jwt_vc_json-ld');

  /// List of all possible values in this [enum][UpdateIssuanceConfigInputFormatEnum].
  static const values = <UpdateIssuanceConfigInputFormatEnum>[
    ldpVc,
    jwtVcJsonLd,
  ];

  static UpdateIssuanceConfigInputFormatEnum? fromJson(dynamic value) => UpdateIssuanceConfigInputFormatEnumTypeTransformer().decode(value);

  static List<UpdateIssuanceConfigInputFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateIssuanceConfigInputFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateIssuanceConfigInputFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateIssuanceConfigInputFormatEnum] to String,
/// and [decode] dynamic data back to [UpdateIssuanceConfigInputFormatEnum].
class UpdateIssuanceConfigInputFormatEnumTypeTransformer {
  factory UpdateIssuanceConfigInputFormatEnumTypeTransformer() => _instance ??= const UpdateIssuanceConfigInputFormatEnumTypeTransformer._();

  const UpdateIssuanceConfigInputFormatEnumTypeTransformer._();

  String encode(UpdateIssuanceConfigInputFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateIssuanceConfigInputFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateIssuanceConfigInputFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ldp_vc': return UpdateIssuanceConfigInputFormatEnum.ldpVc;
        case r'jwt_vc_json-ld': return UpdateIssuanceConfigInputFormatEnum.jwtVcJsonLd;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateIssuanceConfigInputFormatEnumTypeTransformer] instance.
  static UpdateIssuanceConfigInputFormatEnumTypeTransformer? _instance;
}


