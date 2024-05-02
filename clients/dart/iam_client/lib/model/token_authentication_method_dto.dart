//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TokenAuthenticationMethodDto {
  /// Returns a new [TokenAuthenticationMethodDto] instance.
  TokenAuthenticationMethodDto({
    required this.type,
    required this.signingAlgorithm,
    required this.publicKeyInfo,
  });

  TokenAuthenticationMethodDtoTypeEnum type;

  TokenAuthenticationMethodDtoSigningAlgorithmEnum signingAlgorithm;

  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo publicKeyInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TokenAuthenticationMethodDto &&
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
  String toString() => 'TokenAuthenticationMethodDto[type=$type, signingAlgorithm=$signingAlgorithm, publicKeyInfo=$publicKeyInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'signingAlgorithm'] = this.signingAlgorithm;
      json[r'publicKeyInfo'] = this.publicKeyInfo;
    return json;
  }

  /// Returns a new [TokenAuthenticationMethodDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TokenAuthenticationMethodDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TokenAuthenticationMethodDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TokenAuthenticationMethodDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TokenAuthenticationMethodDto(
        type: TokenAuthenticationMethodDtoTypeEnum.fromJson(json[r'type'])!,
        signingAlgorithm: TokenAuthenticationMethodDtoSigningAlgorithmEnum.fromJson(json[r'signingAlgorithm'])!,
        publicKeyInfo: TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.fromJson(json[r'publicKeyInfo'])!,
      );
    }
    return null;
  }

  static List<TokenAuthenticationMethodDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenAuthenticationMethodDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenAuthenticationMethodDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TokenAuthenticationMethodDto> mapFromJson(dynamic json) {
    final map = <String, TokenAuthenticationMethodDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TokenAuthenticationMethodDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TokenAuthenticationMethodDto-objects as value to a dart map
  static Map<String, List<TokenAuthenticationMethodDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TokenAuthenticationMethodDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TokenAuthenticationMethodDto.listFromJson(entry.value, growable: growable,);
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


class TokenAuthenticationMethodDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenAuthenticationMethodDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE_KEY = TokenAuthenticationMethodDtoTypeEnum._(r'PRIVATE_KEY');

  /// List of all possible values in this [enum][TokenAuthenticationMethodDtoTypeEnum].
  static const values = <TokenAuthenticationMethodDtoTypeEnum>[
    PRIVATE_KEY,
  ];

  static TokenAuthenticationMethodDtoTypeEnum? fromJson(dynamic value) => TokenAuthenticationMethodDtoTypeEnumTypeTransformer().decode(value);

  static List<TokenAuthenticationMethodDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenAuthenticationMethodDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenAuthenticationMethodDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenAuthenticationMethodDtoTypeEnum] to String,
/// and [decode] dynamic data back to [TokenAuthenticationMethodDtoTypeEnum].
class TokenAuthenticationMethodDtoTypeEnumTypeTransformer {
  factory TokenAuthenticationMethodDtoTypeEnumTypeTransformer() => _instance ??= const TokenAuthenticationMethodDtoTypeEnumTypeTransformer._();

  const TokenAuthenticationMethodDtoTypeEnumTypeTransformer._();

  String encode(TokenAuthenticationMethodDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenAuthenticationMethodDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenAuthenticationMethodDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRIVATE_KEY': return TokenAuthenticationMethodDtoTypeEnum.PRIVATE_KEY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenAuthenticationMethodDtoTypeEnumTypeTransformer] instance.
  static TokenAuthenticationMethodDtoTypeEnumTypeTransformer? _instance;
}



class TokenAuthenticationMethodDtoSigningAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const TokenAuthenticationMethodDtoSigningAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rS256 = TokenAuthenticationMethodDtoSigningAlgorithmEnum._(r'RS256');
  static const rS512 = TokenAuthenticationMethodDtoSigningAlgorithmEnum._(r'RS512');
  static const eS256 = TokenAuthenticationMethodDtoSigningAlgorithmEnum._(r'ES256');
  static const eS512 = TokenAuthenticationMethodDtoSigningAlgorithmEnum._(r'ES512');

  /// List of all possible values in this [enum][TokenAuthenticationMethodDtoSigningAlgorithmEnum].
  static const values = <TokenAuthenticationMethodDtoSigningAlgorithmEnum>[
    rS256,
    rS512,
    eS256,
    eS512,
  ];

  static TokenAuthenticationMethodDtoSigningAlgorithmEnum? fromJson(dynamic value) => TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer().decode(value);

  static List<TokenAuthenticationMethodDtoSigningAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TokenAuthenticationMethodDtoSigningAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TokenAuthenticationMethodDtoSigningAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TokenAuthenticationMethodDtoSigningAlgorithmEnum] to String,
/// and [decode] dynamic data back to [TokenAuthenticationMethodDtoSigningAlgorithmEnum].
class TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer {
  factory TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer() => _instance ??= const TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer._();

  const TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer._();

  String encode(TokenAuthenticationMethodDtoSigningAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TokenAuthenticationMethodDtoSigningAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TokenAuthenticationMethodDtoSigningAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RS256': return TokenAuthenticationMethodDtoSigningAlgorithmEnum.rS256;
        case r'RS512': return TokenAuthenticationMethodDtoSigningAlgorithmEnum.rS512;
        case r'ES256': return TokenAuthenticationMethodDtoSigningAlgorithmEnum.eS256;
        case r'ES512': return TokenAuthenticationMethodDtoSigningAlgorithmEnum.eS512;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer] instance.
  static TokenAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer? _instance;
}


