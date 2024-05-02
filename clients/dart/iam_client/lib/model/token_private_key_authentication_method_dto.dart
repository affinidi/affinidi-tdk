//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenPrivateKeyAuthenticationMethodDto {
  /// Returns a new [TokenPrivateKeyAuthenticationMethodDto] instance.
  TokenPrivateKeyAuthenticationMethodDto({
    required this.type,
    required this.signingAlgorithm,
    required this.publicKeyInfo,
  });

  TokenPrivateKeyAuthenticationMethodDtoTypeEnum type;

  TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum signingAlgorithm;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo publicKeyInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenPrivateKeyAuthenticationMethodDto &&
    other.type == type &&
    other.signingAlgorithm == signingAlgorithm &&
    other.publicKeyInfo == publicKeyInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (signingAlgorithm.hashCode) +
    (publicKeyInfo.hashCode);

  @override
  String toString() => 'TokenPrivateKeyAuthenticationMethodDto[type=$type, signingAlgorithm=$signingAlgorithm, publicKeyInfo=$publicKeyInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'signingAlgorithm'] = this.signingAlgorithm;
      json[r'publicKeyInfo'] = this.publicKeyInfo;
    return json;
  }

  /// Returns a new [TokenPrivateKeyAuthenticationMethodDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenPrivateKeyAuthenticationMethodDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenPrivateKeyAuthenticationMethodDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenPrivateKeyAuthenticationMethodDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenPrivateKeyAuthenticationMethodDto(
        type: TokenPrivateKeyAuthenticationMethodDtoTypeEnum.fromJson(json[r'type'])!,
        signingAlgorithm: TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.fromJson(json[r'signingAlgorithm'])!,
        publicKeyInfo: TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.fromJson(json[r'publicKeyInfo'])!,
      );
    }
    return null;
  }

  static List<TokenPrivateKeyAuthenticationMethodDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenPrivateKeyAuthenticationMethodDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenPrivateKeyAuthenticationMethodDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenPrivateKeyAuthenticationMethodDto> mapFromJson(dynamic json) {
    final map = <String, TokenPrivateKeyAuthenticationMethodDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenPrivateKeyAuthenticationMethodDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenPrivateKeyAuthenticationMethodDto-objects as value to a dart map
  static Map<String, List<TokenPrivateKeyAuthenticationMethodDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenPrivateKeyAuthenticationMethodDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenPrivateKeyAuthenticationMethodDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'signingAlgorithm',
    'publicKeyInfo',
  };
}


class TokenPrivateKeyAuthenticationMethodDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenPrivateKeyAuthenticationMethodDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE_KEY = TokenPrivateKeyAuthenticationMethodDtoTypeEnum._(r'PRIVATE_KEY');

  /// List of all possible values in this [enum][TokenPrivateKeyAuthenticationMethodDtoTypeEnum].
  static const values = <TokenPrivateKeyAuthenticationMethodDtoTypeEnum>[
    PRIVATE_KEY,
  ];

  static TokenPrivateKeyAuthenticationMethodDtoTypeEnum? fromJson(dynamic value) => TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer().decode(value);

  static List<TokenPrivateKeyAuthenticationMethodDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenPrivateKeyAuthenticationMethodDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenPrivateKeyAuthenticationMethodDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenPrivateKeyAuthenticationMethodDtoTypeEnum] to String,
/// and [decode] dynamic data back to [TokenPrivateKeyAuthenticationMethodDtoTypeEnum].
class TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer {
  factory TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer() => _instance ??= const TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer._();

  const TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer._();

  String encode(TokenPrivateKeyAuthenticationMethodDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenPrivateKeyAuthenticationMethodDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenPrivateKeyAuthenticationMethodDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRIVATE_KEY': return TokenPrivateKeyAuthenticationMethodDtoTypeEnum.PRIVATE_KEY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer] instance.
  static TokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer? _instance;
}



class TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rS256 = TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'RS256');
  static const rS512 = TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'RS512');
  static const eS256 = TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'ES256');
  static const eS512 = TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'ES512');

  /// List of all possible values in this [enum][TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum].
  static const values = <TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>[
    rS256,
    rS512,
    eS256,
    eS512,
  ];

  static TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? fromJson(dynamic value) => TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer().decode(value);

  static List<TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum] to String,
/// and [decode] dynamic data back to [TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum].
class TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer {
  factory TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer() => _instance ??= const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer._();

  const TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer._();

  String encode(TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RS256': return TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.rS256;
        case r'RS512': return TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.rS512;
        case r'ES256': return TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.eS256;
        case r'ES512': return TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.eS512;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer] instance.
  static TokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer? _instance;
}


