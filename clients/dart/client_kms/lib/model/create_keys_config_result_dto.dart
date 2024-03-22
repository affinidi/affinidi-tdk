//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateKeysConfigResultDto {
  /// Returns a new [CreateKeysConfigResultDto] instance.
  CreateKeysConfigResultDto({
    this.id,
    this.ari,
    this.seedId,
    this.seedAri,
    this.publicKeyHex,
    this.didMethod,
  });

  /// id of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ARI of the key record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ari;

  /// id of the parent seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seedId;

  /// ARI of the parent seed record
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seedAri;

  /// public key of the key config in HEX format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicKeyHex;

  /// did method of the key record
  CreateKeysConfigResultDtoDidMethodEnum? didMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateKeysConfigResultDto &&
    other.id == id &&
    other.ari == ari &&
    other.seedId == seedId &&
    other.seedAri == seedAri &&
    other.publicKeyHex == publicKeyHex &&
    other.didMethod == didMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (ari == null ? 0 : ari!.hashCode) +
    (seedId == null ? 0 : seedId!.hashCode) +
    (seedAri == null ? 0 : seedAri!.hashCode) +
    (publicKeyHex == null ? 0 : publicKeyHex!.hashCode) +
    (didMethod == null ? 0 : didMethod!.hashCode);

  @override
  String toString() => 'CreateKeysConfigResultDto[id=$id, ari=$ari, seedId=$seedId, seedAri=$seedAri, publicKeyHex=$publicKeyHex, didMethod=$didMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.ari != null) {
      json[r'ari'] = this.ari;
    } else {
      json[r'ari'] = null;
    }
    if (this.seedId != null) {
      json[r'seedId'] = this.seedId;
    } else {
      json[r'seedId'] = null;
    }
    if (this.seedAri != null) {
      json[r'seedAri'] = this.seedAri;
    } else {
      json[r'seedAri'] = null;
    }
    if (this.publicKeyHex != null) {
      json[r'publicKeyHex'] = this.publicKeyHex;
    } else {
      json[r'publicKeyHex'] = null;
    }
    if (this.didMethod != null) {
      json[r'didMethod'] = this.didMethod;
    } else {
      json[r'didMethod'] = null;
    }
    return json;
  }

  /// Returns a new [CreateKeysConfigResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateKeysConfigResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateKeysConfigResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateKeysConfigResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateKeysConfigResultDto(
        id: mapValueOfType<String>(json, r'id'),
        ari: mapValueOfType<String>(json, r'ari'),
        seedId: mapValueOfType<String>(json, r'seedId'),
        seedAri: mapValueOfType<String>(json, r'seedAri'),
        publicKeyHex: mapValueOfType<String>(json, r'publicKeyHex'),
        didMethod: CreateKeysConfigResultDtoDidMethodEnum.fromJson(json[r'didMethod']),
      );
    }
    return null;
  }

  static List<CreateKeysConfigResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateKeysConfigResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateKeysConfigResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateKeysConfigResultDto> mapFromJson(dynamic json) {
    final map = <String, CreateKeysConfigResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateKeysConfigResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateKeysConfigResultDto-objects as value to a dart map
  static Map<String, List<CreateKeysConfigResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateKeysConfigResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateKeysConfigResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// did method of the key record
class CreateKeysConfigResultDtoDidMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateKeysConfigResultDtoDidMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const key = CreateKeysConfigResultDtoDidMethodEnum._(r'key');
  static const web = CreateKeysConfigResultDtoDidMethodEnum._(r'web');

  /// List of all possible values in this [enum][CreateKeysConfigResultDtoDidMethodEnum].
  static const values = <CreateKeysConfigResultDtoDidMethodEnum>[
    key,
    web,
  ];

  static CreateKeysConfigResultDtoDidMethodEnum? fromJson(dynamic value) => CreateKeysConfigResultDtoDidMethodEnumTypeTransformer().decode(value);

  static List<CreateKeysConfigResultDtoDidMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateKeysConfigResultDtoDidMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateKeysConfigResultDtoDidMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateKeysConfigResultDtoDidMethodEnum] to String,
/// and [decode] dynamic data back to [CreateKeysConfigResultDtoDidMethodEnum].
class CreateKeysConfigResultDtoDidMethodEnumTypeTransformer {
  factory CreateKeysConfigResultDtoDidMethodEnumTypeTransformer() => _instance ??= const CreateKeysConfigResultDtoDidMethodEnumTypeTransformer._();

  const CreateKeysConfigResultDtoDidMethodEnumTypeTransformer._();

  String encode(CreateKeysConfigResultDtoDidMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateKeysConfigResultDtoDidMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateKeysConfigResultDtoDidMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'key': return CreateKeysConfigResultDtoDidMethodEnum.key;
        case r'web': return CreateKeysConfigResultDtoDidMethodEnum.web;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateKeysConfigResultDtoDidMethodEnumTypeTransformer] instance.
  static CreateKeysConfigResultDtoDidMethodEnumTypeTransformer? _instance;
}


