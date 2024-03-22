//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateKeysConfigInputDto {
  /// Returns a new [CreateKeysConfigInputDto] instance.
  CreateKeysConfigInputDto({
    required this.derivationPath,
    this.didMethod,
    this.didWebUrl,
  });

  String derivationPath;

  /// method of the DID, default is key
  CreateKeysConfigInputDtoDidMethodEnum? didMethod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? didWebUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateKeysConfigInputDto &&
    other.derivationPath == derivationPath &&
    other.didMethod == didMethod &&
    other.didWebUrl == didWebUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (derivationPath.hashCode) +
    (didMethod == null ? 0 : didMethod!.hashCode) +
    (didWebUrl == null ? 0 : didWebUrl!.hashCode);

  @override
  String toString() => 'CreateKeysConfigInputDto[derivationPath=$derivationPath, didMethod=$didMethod, didWebUrl=$didWebUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'derivationPath'] = this.derivationPath;
    if (this.didMethod != null) {
      json[r'didMethod'] = this.didMethod;
    } else {
      json[r'didMethod'] = null;
    }
    if (this.didWebUrl != null) {
      json[r'didWebUrl'] = this.didWebUrl;
    } else {
      json[r'didWebUrl'] = null;
    }
    return json;
  }

  /// Returns a new [CreateKeysConfigInputDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateKeysConfigInputDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateKeysConfigInputDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateKeysConfigInputDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateKeysConfigInputDto(
        derivationPath: mapValueOfType<String>(json, r'derivationPath')!,
        didMethod: CreateKeysConfigInputDtoDidMethodEnum.fromJson(json[r'didMethod']),
        didWebUrl: mapValueOfType<String>(json, r'didWebUrl'),
      );
    }
    return null;
  }

  static List<CreateKeysConfigInputDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateKeysConfigInputDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateKeysConfigInputDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateKeysConfigInputDto> mapFromJson(dynamic json) {
    final map = <String, CreateKeysConfigInputDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateKeysConfigInputDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateKeysConfigInputDto-objects as value to a dart map
  static Map<String, List<CreateKeysConfigInputDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateKeysConfigInputDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateKeysConfigInputDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'derivationPath',
  };
}

/// method of the DID, default is key
class CreateKeysConfigInputDtoDidMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateKeysConfigInputDtoDidMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const key = CreateKeysConfigInputDtoDidMethodEnum._(r'key');
  static const web = CreateKeysConfigInputDtoDidMethodEnum._(r'web');

  /// List of all possible values in this [enum][CreateKeysConfigInputDtoDidMethodEnum].
  static const values = <CreateKeysConfigInputDtoDidMethodEnum>[
    key,
    web,
  ];

  static CreateKeysConfigInputDtoDidMethodEnum? fromJson(dynamic value) => CreateKeysConfigInputDtoDidMethodEnumTypeTransformer().decode(value);

  static List<CreateKeysConfigInputDtoDidMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateKeysConfigInputDtoDidMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateKeysConfigInputDtoDidMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateKeysConfigInputDtoDidMethodEnum] to String,
/// and [decode] dynamic data back to [CreateKeysConfigInputDtoDidMethodEnum].
class CreateKeysConfigInputDtoDidMethodEnumTypeTransformer {
  factory CreateKeysConfigInputDtoDidMethodEnumTypeTransformer() => _instance ??= const CreateKeysConfigInputDtoDidMethodEnumTypeTransformer._();

  const CreateKeysConfigInputDtoDidMethodEnumTypeTransformer._();

  String encode(CreateKeysConfigInputDtoDidMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateKeysConfigInputDtoDidMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateKeysConfigInputDtoDidMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'key': return CreateKeysConfigInputDtoDidMethodEnum.key;
        case r'web': return CreateKeysConfigInputDtoDidMethodEnum.web;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateKeysConfigInputDtoDidMethodEnumTypeTransformer] instance.
  static CreateKeysConfigInputDtoDidMethodEnumTypeTransformer? _instance;
}


