//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateTokenPrivateKeyAuthenticationMethodDto {
  /// Returns a new [UpdateTokenPrivateKeyAuthenticationMethodDto] instance.
  UpdateTokenPrivateKeyAuthenticationMethodDto({
    this.type,
    this.signingAlgorithm,
    this.publicKeyInfo,
  });

  UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? type;

  UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? signingAlgorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo? publicKeyInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateTokenPrivateKeyAuthenticationMethodDto &&
    other.type == type &&
    other.signingAlgorithm == signingAlgorithm &&
    other.publicKeyInfo == publicKeyInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (signingAlgorithm == null ? 0 : signingAlgorithm!.hashCode) +
    (publicKeyInfo == null ? 0 : publicKeyInfo!.hashCode);

  @override
  String toString() => 'UpdateTokenPrivateKeyAuthenticationMethodDto[type=$type, signingAlgorithm=$signingAlgorithm, publicKeyInfo=$publicKeyInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.signingAlgorithm != null) {
      json[r'signingAlgorithm'] = this.signingAlgorithm;
    } else {
      json[r'signingAlgorithm'] = null;
    }
    if (this.publicKeyInfo != null) {
      json[r'publicKeyInfo'] = this.publicKeyInfo;
    } else {
      json[r'publicKeyInfo'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateTokenPrivateKeyAuthenticationMethodDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateTokenPrivateKeyAuthenticationMethodDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateTokenPrivateKeyAuthenticationMethodDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateTokenPrivateKeyAuthenticationMethodDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateTokenPrivateKeyAuthenticationMethodDto(
        type: UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum.fromJson(json[r'type']),
        signingAlgorithm: UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.fromJson(json[r'signingAlgorithm']),
        publicKeyInfo: TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.fromJson(json[r'publicKeyInfo']),
      );
    }
    return null;
  }

  static List<UpdateTokenPrivateKeyAuthenticationMethodDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTokenPrivateKeyAuthenticationMethodDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTokenPrivateKeyAuthenticationMethodDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateTokenPrivateKeyAuthenticationMethodDto> mapFromJson(dynamic json) {
    final map = <String, UpdateTokenPrivateKeyAuthenticationMethodDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateTokenPrivateKeyAuthenticationMethodDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateTokenPrivateKeyAuthenticationMethodDto-objects as value to a dart map
  static Map<String, List<UpdateTokenPrivateKeyAuthenticationMethodDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateTokenPrivateKeyAuthenticationMethodDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateTokenPrivateKeyAuthenticationMethodDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRIVATE_KEY = UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum._(r'PRIVATE_KEY');

  /// List of all possible values in this [enum][UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum].
  static const values = <UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum>[
    PRIVATE_KEY,
  ];

  static UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? fromJson(dynamic value) => UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer().decode(value);

  static List<UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum] to String,
/// and [decode] dynamic data back to [UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum].
class UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer {
  factory UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer() => _instance ??= const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer._();

  const UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer._();

  String encode(UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRIVATE_KEY': return UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnum.PRIVATE_KEY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer] instance.
  static UpdateTokenPrivateKeyAuthenticationMethodDtoTypeEnumTypeTransformer? _instance;
}



class UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rS256 = UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'RS256');
  static const rS512 = UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'RS512');
  static const eS256 = UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'ES256');
  static const eS512 = UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum._(r'ES512');

  /// List of all possible values in this [enum][UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum].
  static const values = <UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>[
    rS256,
    rS512,
    eS256,
    eS512,
  ];

  static UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? fromJson(dynamic value) => UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer().decode(value);

  static List<UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum] to String,
/// and [decode] dynamic data back to [UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum].
class UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer {
  factory UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer() => _instance ??= const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer._();

  const UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer._();

  String encode(UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RS256': return UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.rS256;
        case r'RS512': return UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.rS512;
        case r'ES256': return UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.eS256;
        case r'ES512': return UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnum.eS512;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer] instance.
  static UpdateTokenPrivateKeyAuthenticationMethodDtoSigningAlgorithmEnumTypeTransformer? _instance;
}


