//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialProof {
  /// Returns a new [CredentialProof] instance.
  CredentialProof({
    required this.proofType,
    required this.jwt,
  });

  /// String denoting the key proof type.
  CredentialProofProofTypeEnum proofType;

  String jwt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialProof &&
    other.proofType == proofType &&
    other.jwt == jwt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (proofType.hashCode) +
    (jwt.hashCode);

  @override
  String toString() => 'CredentialProof[proofType=$proofType, jwt=$jwt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'proof_type'] = this.proofType;
      json[r'jwt'] = this.jwt;
    return json;
  }

  /// Returns a new [CredentialProof] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialProof? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialProof[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialProof[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialProof(
        proofType: CredentialProofProofTypeEnum.fromJson(json[r'proof_type'])!,
        jwt: mapValueOfType<String>(json, r'jwt')!,
      );
    }
    return null;
  }

  static List<CredentialProof> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialProof>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialProof.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialProof> mapFromJson(dynamic json) {
    final map = <String, CredentialProof>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialProof.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialProof-objects as value to a dart map
  static Map<String, List<CredentialProof>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialProof>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialProof.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'proof_type',
    'jwt',
  };
}

/// String denoting the key proof type.
class CredentialProofProofTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialProofProofTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const jwt = CredentialProofProofTypeEnum._(r'jwt');

  /// List of all possible values in this [enum][CredentialProofProofTypeEnum].
  static const values = <CredentialProofProofTypeEnum>[
    jwt,
  ];

  static CredentialProofProofTypeEnum? fromJson(dynamic value) => CredentialProofProofTypeEnumTypeTransformer().decode(value);

  static List<CredentialProofProofTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialProofProofTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialProofProofTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialProofProofTypeEnum] to String,
/// and [decode] dynamic data back to [CredentialProofProofTypeEnum].
class CredentialProofProofTypeEnumTypeTransformer {
  factory CredentialProofProofTypeEnumTypeTransformer() => _instance ??= const CredentialProofProofTypeEnumTypeTransformer._();

  const CredentialProofProofTypeEnumTypeTransformer._();

  String encode(CredentialProofProofTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialProofProofTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialProofProofTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'jwt': return CredentialProofProofTypeEnum.jwt;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialProofProofTypeEnumTypeTransformer] instance.
  static CredentialProofProofTypeEnumTypeTransformer? _instance;
}


