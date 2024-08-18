//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateIssuanceConfigInput {
  /// Returns a new [CreateIssuanceConfigInput] instance.
  CreateIssuanceConfigInput({
    this.name,
    this.description,
    required this.issuerWalletId,
    this.credentialOfferDuration,
    this.format,
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
  String issuerWalletId;

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
  CreateIssuanceConfigInputFormatEnum? format;

  List<CredentialSupportedObject> credentialSupported;

  /// Issuer public information wallet may want to show to user during consent confirmation
  Map<String, Object> issuerMetadata;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIssuanceConfigInput &&
    other.name == name &&
    other.description == description &&
    other.issuerWalletId == issuerWalletId &&
    other.credentialOfferDuration == credentialOfferDuration &&
    other.format == format &&
    _deepEquality.equals(other.credentialSupported, credentialSupported) &&
    _deepEquality.equals(other.issuerMetadata, issuerMetadata);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (issuerWalletId.hashCode) +
    (credentialOfferDuration == null ? 0 : credentialOfferDuration!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (credentialSupported.hashCode) +
    (issuerMetadata.hashCode);

  @override
  String toString() => 'CreateIssuanceConfigInput[name=$name, description=$description, issuerWalletId=$issuerWalletId, credentialOfferDuration=$credentialOfferDuration, format=$format, credentialSupported=$credentialSupported, issuerMetadata=$issuerMetadata]';

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
      json[r'issuerWalletId'] = this.issuerWalletId;
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
      json[r'credentialSupported'] = this.credentialSupported;
      json[r'issuerMetadata'] = this.issuerMetadata;
    return json;
  }

  /// Returns a new [CreateIssuanceConfigInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateIssuanceConfigInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateIssuanceConfigInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateIssuanceConfigInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateIssuanceConfigInput(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        issuerWalletId: mapValueOfType<String>(json, r'issuerWalletId')!,
        credentialOfferDuration: mapValueOfType<int>(json, r'credentialOfferDuration'),
        format: CreateIssuanceConfigInputFormatEnum.fromJson(json[r'format']),
        credentialSupported: CredentialSupportedObject.listFromJson(json[r'credentialSupported']),
        issuerMetadata: mapCastOfType<String, Object>(json, r'issuerMetadata') ?? const {},
      );
    }
    return null;
  }

  static List<CreateIssuanceConfigInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIssuanceConfigInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIssuanceConfigInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateIssuanceConfigInput> mapFromJson(dynamic json) {
    final map = <String, CreateIssuanceConfigInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateIssuanceConfigInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateIssuanceConfigInput-objects as value to a dart map
  static Map<String, List<CreateIssuanceConfigInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateIssuanceConfigInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateIssuanceConfigInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'issuerWalletId',
    'credentialSupported',
  };
}

/// String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type
class CreateIssuanceConfigInputFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateIssuanceConfigInputFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ldpVc = CreateIssuanceConfigInputFormatEnum._(r'ldp_vc');
  static const jwtVcJsonLd = CreateIssuanceConfigInputFormatEnum._(r'jwt_vc_json-ld');

  /// List of all possible values in this [enum][CreateIssuanceConfigInputFormatEnum].
  static const values = <CreateIssuanceConfigInputFormatEnum>[
    ldpVc,
    jwtVcJsonLd,
  ];

  static CreateIssuanceConfigInputFormatEnum? fromJson(dynamic value) => CreateIssuanceConfigInputFormatEnumTypeTransformer().decode(value);

  static List<CreateIssuanceConfigInputFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIssuanceConfigInputFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIssuanceConfigInputFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateIssuanceConfigInputFormatEnum] to String,
/// and [decode] dynamic data back to [CreateIssuanceConfigInputFormatEnum].
class CreateIssuanceConfigInputFormatEnumTypeTransformer {
  factory CreateIssuanceConfigInputFormatEnumTypeTransformer() => _instance ??= const CreateIssuanceConfigInputFormatEnumTypeTransformer._();

  const CreateIssuanceConfigInputFormatEnumTypeTransformer._();

  String encode(CreateIssuanceConfigInputFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateIssuanceConfigInputFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateIssuanceConfigInputFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ldp_vc': return CreateIssuanceConfigInputFormatEnum.ldpVc;
        case r'jwt_vc_json-ld': return CreateIssuanceConfigInputFormatEnum.jwtVcJsonLd;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateIssuanceConfigInputFormatEnumTypeTransformer] instance.
  static CreateIssuanceConfigInputFormatEnumTypeTransformer? _instance;
}


