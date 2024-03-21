//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignInputDto {
  /// Returns a new [SignInputDto] instance.
  SignInputDto({
    required this.buffer,
    this.signatureType,
  });

  /// data in hex format to be signed
  String buffer;

  /// type of returned signature, default is hex
  SignInputDtoSignatureTypeEnum? signatureType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignInputDto &&
    other.buffer == buffer &&
    other.signatureType == signatureType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (buffer.hashCode) +
    (signatureType == null ? 0 : signatureType!.hashCode);

  @override
  String toString() => 'SignInputDto[buffer=$buffer, signatureType=$signatureType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'buffer'] = this.buffer;
    if (this.signatureType != null) {
      json[r'signatureType'] = this.signatureType;
    } else {
      json[r'signatureType'] = null;
    }
    return json;
  }

  /// Returns a new [SignInputDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignInputDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignInputDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignInputDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignInputDto(
        buffer: mapValueOfType<String>(json, r'buffer')!,
        signatureType: SignInputDtoSignatureTypeEnum.fromJson(json[r'signatureType']),
      );
    }
    return null;
  }

  static List<SignInputDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignInputDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignInputDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignInputDto> mapFromJson(dynamic json) {
    final map = <String, SignInputDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignInputDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignInputDto-objects as value to a dart map
  static Map<String, List<SignInputDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignInputDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignInputDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'buffer',
  };
}

/// type of returned signature, default is hex
class SignInputDtoSignatureTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SignInputDtoSignatureTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEX = SignInputDtoSignatureTypeEnum._(r'HEX');
  static const RSV = SignInputDtoSignatureTypeEnum._(r'RSV');

  /// List of all possible values in this [enum][SignInputDtoSignatureTypeEnum].
  static const values = <SignInputDtoSignatureTypeEnum>[
    HEX,
    RSV,
  ];

  static SignInputDtoSignatureTypeEnum? fromJson(dynamic value) => SignInputDtoSignatureTypeEnumTypeTransformer().decode(value);

  static List<SignInputDtoSignatureTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignInputDtoSignatureTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignInputDtoSignatureTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SignInputDtoSignatureTypeEnum] to String,
/// and [decode] dynamic data back to [SignInputDtoSignatureTypeEnum].
class SignInputDtoSignatureTypeEnumTypeTransformer {
  factory SignInputDtoSignatureTypeEnumTypeTransformer() => _instance ??= const SignInputDtoSignatureTypeEnumTypeTransformer._();

  const SignInputDtoSignatureTypeEnumTypeTransformer._();

  String encode(SignInputDtoSignatureTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SignInputDtoSignatureTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SignInputDtoSignatureTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEX': return SignInputDtoSignatureTypeEnum.HEX;
        case r'RSV': return SignInputDtoSignatureTypeEnum.RSV;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SignInputDtoSignatureTypeEnumTypeTransformer] instance.
  static SignInputDtoSignatureTypeEnumTypeTransformer? _instance;
}


