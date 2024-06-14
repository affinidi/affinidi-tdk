//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuanceConfigMiniDto {
  /// Returns a new [IssuanceConfigMiniDto] instance.
  IssuanceConfigMiniDto({
    required this.id,
    this.name,
    this.issuerDid,
    this.issuerWalletId,
    this.credentialOfferDuration,
    this.cNonceDuration,
    this.format,
    this.issuerUri,
    this.issuerMetadata = const {},
    this.version,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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
  IssuanceConfigMiniDtoFormatEnum? format;

  /// Issuer URI
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuerUri;

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
  bool operator ==(Object other) => identical(this, other) || other is IssuanceConfigMiniDto &&
    other.id == id &&
    other.name == name &&
    other.issuerDid == issuerDid &&
    other.issuerWalletId == issuerWalletId &&
    other.credentialOfferDuration == credentialOfferDuration &&
    other.cNonceDuration == cNonceDuration &&
    other.format == format &&
    other.issuerUri == issuerUri &&
    _deepEquality.equals(other.issuerMetadata, issuerMetadata) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (issuerDid == null ? 0 : issuerDid!.hashCode) +
    (issuerWalletId == null ? 0 : issuerWalletId!.hashCode) +
    (credentialOfferDuration == null ? 0 : credentialOfferDuration!.hashCode) +
    (cNonceDuration == null ? 0 : cNonceDuration!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (issuerUri == null ? 0 : issuerUri!.hashCode) +
    (issuerMetadata.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'IssuanceConfigMiniDto[id=$id, name=$name, issuerDid=$issuerDid, issuerWalletId=$issuerWalletId, credentialOfferDuration=$credentialOfferDuration, cNonceDuration=$cNonceDuration, format=$format, issuerUri=$issuerUri, issuerMetadata=$issuerMetadata, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
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
      json[r'issuerMetadata'] = this.issuerMetadata;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [IssuanceConfigMiniDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuanceConfigMiniDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssuanceConfigMiniDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssuanceConfigMiniDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssuanceConfigMiniDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        issuerDid: mapValueOfType<String>(json, r'issuerDid'),
        issuerWalletId: mapValueOfType<String>(json, r'issuerWalletId'),
        credentialOfferDuration: mapValueOfType<int>(json, r'credentialOfferDuration'),
        cNonceDuration: mapValueOfType<int>(json, r'cNonceDuration'),
        format: IssuanceConfigMiniDtoFormatEnum.fromJson(json[r'format']),
        issuerUri: mapValueOfType<String>(json, r'issuerUri'),
        issuerMetadata: mapCastOfType<String, Object>(json, r'issuerMetadata') ?? const {},
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<IssuanceConfigMiniDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceConfigMiniDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceConfigMiniDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuanceConfigMiniDto> mapFromJson(dynamic json) {
    final map = <String, IssuanceConfigMiniDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuanceConfigMiniDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuanceConfigMiniDto-objects as value to a dart map
  static Map<String, List<IssuanceConfigMiniDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuanceConfigMiniDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuanceConfigMiniDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
  };
}

/// String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type
class IssuanceConfigMiniDtoFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const IssuanceConfigMiniDtoFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ldpVc = IssuanceConfigMiniDtoFormatEnum._(r'ldp_vc');

  /// List of all possible values in this [enum][IssuanceConfigMiniDtoFormatEnum].
  static const values = <IssuanceConfigMiniDtoFormatEnum>[
    ldpVc,
  ];

  static IssuanceConfigMiniDtoFormatEnum? fromJson(dynamic value) => IssuanceConfigMiniDtoFormatEnumTypeTransformer().decode(value);

  static List<IssuanceConfigMiniDtoFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceConfigMiniDtoFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceConfigMiniDtoFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IssuanceConfigMiniDtoFormatEnum] to String,
/// and [decode] dynamic data back to [IssuanceConfigMiniDtoFormatEnum].
class IssuanceConfigMiniDtoFormatEnumTypeTransformer {
  factory IssuanceConfigMiniDtoFormatEnumTypeTransformer() => _instance ??= const IssuanceConfigMiniDtoFormatEnumTypeTransformer._();

  const IssuanceConfigMiniDtoFormatEnumTypeTransformer._();

  String encode(IssuanceConfigMiniDtoFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IssuanceConfigMiniDtoFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IssuanceConfigMiniDtoFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ldp_vc': return IssuanceConfigMiniDtoFormatEnum.ldpVc;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IssuanceConfigMiniDtoFormatEnumTypeTransformer] instance.
  static IssuanceConfigMiniDtoFormatEnumTypeTransformer? _instance;
}


