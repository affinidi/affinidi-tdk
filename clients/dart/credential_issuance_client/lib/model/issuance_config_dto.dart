//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuanceConfigDto {
  /// Returns a new [IssuanceConfigDto] instance.
  IssuanceConfigDto({
    this.id,
    this.name,
    this.description,
    this.issuerDid,
    this.issuerWalletId,
    this.credentialOfferDuration,
    this.cNonceDuration,
    this.format,
    this.issuerUri,
    this.credentialSupported = const [],
    this.issuerMetadata = const {},
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

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

  /// Issuer DID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerDid;

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
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? credentialOfferDuration;

  /// c_nonce duration in second
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cNonceDuration;

  /// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
  IssuanceConfigDtoFormatEnum? format;

  /// Issuer URI
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerUri;

  List<IssuanceConfigDtoCredentialSupportedInner> credentialSupported;

  /// Issuer public information wallet may want to show to user during consent confirmation
  Map<String, Object> issuerMetadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuanceConfigDto &&
    other.id == id &&
    other.name == name &&
    other.description == description &&
    other.issuerDid == issuerDid &&
    other.issuerWalletId == issuerWalletId &&
    other.credentialOfferDuration == credentialOfferDuration &&
    other.cNonceDuration == cNonceDuration &&
    other.format == format &&
    other.issuerUri == issuerUri &&
    _deepEquality.equals(other.credentialSupported, credentialSupported) &&
    _deepEquality.equals(other.issuerMetadata, issuerMetadata) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (issuerDid == null ? 0 : issuerDid!.hashCode) +
    (issuerWalletId == null ? 0 : issuerWalletId!.hashCode) +
    (credentialOfferDuration == null ? 0 : credentialOfferDuration!.hashCode) +
    (cNonceDuration == null ? 0 : cNonceDuration!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (issuerUri == null ? 0 : issuerUri!.hashCode) +
    (credentialSupported.hashCode) +
    (issuerMetadata.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'IssuanceConfigDto[id=$id, name=$name, description=$description, issuerDid=$issuerDid, issuerWalletId=$issuerWalletId, credentialOfferDuration=$credentialOfferDuration, cNonceDuration=$cNonceDuration, format=$format, issuerUri=$issuerUri, credentialSupported=$credentialSupported, issuerMetadata=$issuerMetadata, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
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
    if (this.issuerDid != null) {
      json[r'issuerDid'] = this.issuerDid;
    } else {
      json[r'issuerDid'] = null;
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
    if (this.cNonceDuration != null) {
      json[r'cNonceDuration'] = this.cNonceDuration;
    } else {
      json[r'cNonceDuration'] = null;
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
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [IssuanceConfigDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuanceConfigDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssuanceConfigDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssuanceConfigDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssuanceConfigDto(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        issuerDid: mapValueOfType<String>(json, r'issuerDid'),
        issuerWalletId: mapValueOfType<String>(json, r'issuerWalletId'),
        credentialOfferDuration: mapValueOfType<int>(json, r'credentialOfferDuration'),
        cNonceDuration: mapValueOfType<int>(json, r'cNonceDuration'),
        format: IssuanceConfigDtoFormatEnum.fromJson(json[r'format']),
        issuerUri: mapValueOfType<String>(json, r'issuerUri'),
        credentialSupported: IssuanceConfigDtoCredentialSupportedInner.listFromJson(json[r'credentialSupported']),
        issuerMetadata: mapCastOfType<String, Object>(json, r'issuerMetadata') ?? const {},
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<IssuanceConfigDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceConfigDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceConfigDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuanceConfigDto> mapFromJson(dynamic json) {
    final map = <String, IssuanceConfigDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuanceConfigDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuanceConfigDto-objects as value to a dart map
  static Map<String, List<IssuanceConfigDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuanceConfigDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuanceConfigDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
class IssuanceConfigDtoFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const IssuanceConfigDtoFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ldpVc = IssuanceConfigDtoFormatEnum._(r'ldp_vc');

  /// List of all possible values in this [enum][IssuanceConfigDtoFormatEnum].
  static const values = <IssuanceConfigDtoFormatEnum>[
    ldpVc,
  ];

  static IssuanceConfigDtoFormatEnum? fromJson(dynamic value) => IssuanceConfigDtoFormatEnumTypeTransformer().decode(value);

  static List<IssuanceConfigDtoFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceConfigDtoFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceConfigDtoFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IssuanceConfigDtoFormatEnum] to String,
/// and [decode] dynamic data back to [IssuanceConfigDtoFormatEnum].
class IssuanceConfigDtoFormatEnumTypeTransformer {
  factory IssuanceConfigDtoFormatEnumTypeTransformer() => _instance ??= const IssuanceConfigDtoFormatEnumTypeTransformer._();

  const IssuanceConfigDtoFormatEnumTypeTransformer._();

  String encode(IssuanceConfigDtoFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IssuanceConfigDtoFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IssuanceConfigDtoFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ldp_vc': return IssuanceConfigDtoFormatEnum.ldpVc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IssuanceConfigDtoFormatEnumTypeTransformer] instance.
  static IssuanceConfigDtoFormatEnumTypeTransformer? _instance;
}


