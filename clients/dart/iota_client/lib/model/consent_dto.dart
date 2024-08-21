//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConsentDto {
  /// Returns a new [ConsentDto] instance.
  ConsentDto({
    required this.projectId,
    required this.id,
    required this.userId,
    required this.vcType,
    required this.status,
    required this.modifiedAt,
    required this.modifiedBy,
    required this.createdAt,
    required this.createdBy,
  });

  String projectId;

  /// id of the record
  String id;

  /// unique identifier of the user
  String userId;

  /// VC type of shared vc. If the actual VC has several VC types (excluding base types as VerifiableCredential) then for each of the a separate record will be added
  String vcType;

  ConsentDtoStatusEnum status;

  String modifiedAt;

  String modifiedBy;

  String createdAt;

  String createdBy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConsentDto &&
    other.projectId == projectId &&
    other.id == id &&
    other.userId == userId &&
    other.vcType == vcType &&
    other.status == status &&
    other.modifiedAt == modifiedAt &&
    other.modifiedBy == modifiedBy &&
    other.createdAt == createdAt &&
    other.createdBy == createdBy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (vcType.hashCode) +
    (status.hashCode) +
    (modifiedAt.hashCode) +
    (modifiedBy.hashCode) +
    (createdAt.hashCode) +
    (createdBy.hashCode);

  @override
  String toString() => 'ConsentDto[projectId=$projectId, id=$id, userId=$userId, vcType=$vcType, status=$status, modifiedAt=$modifiedAt, modifiedBy=$modifiedBy, createdAt=$createdAt, createdBy=$createdBy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projectId'] = this.projectId;
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'vcType'] = this.vcType;
      json[r'status'] = this.status;
      json[r'modifiedAt'] = this.modifiedAt;
      json[r'modifiedBy'] = this.modifiedBy;
      json[r'createdAt'] = this.createdAt;
      json[r'createdBy'] = this.createdBy;
    return json;
  }

  /// Returns a new [ConsentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConsentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConsentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConsentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConsentDto(
        projectId: mapValueOfType<String>(json, r'projectId')!,
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        vcType: mapValueOfType<String>(json, r'vcType')!,
        status: ConsentDtoStatusEnum.fromJson(json[r'status'])!,
        modifiedAt: mapValueOfType<String>(json, r'modifiedAt')!,
        modifiedBy: mapValueOfType<String>(json, r'modifiedBy')!,
        createdAt: mapValueOfType<String>(json, r'createdAt')!,
        createdBy: mapValueOfType<String>(json, r'createdBy')!,
      );
    }
    return null;
  }

  static List<ConsentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConsentDto> mapFromJson(dynamic json) {
    final map = <String, ConsentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConsentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConsentDto-objects as value to a dart map
  static Map<String, List<ConsentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConsentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConsentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectId',
    'id',
    'userId',
    'vcType',
    'status',
    'modifiedAt',
    'modifiedBy',
    'createdAt',
    'createdBy',
  };
}


class ConsentDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ConsentDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GIVEN = ConsentDtoStatusEnum._(r'GIVEN');

  /// List of all possible values in this [enum][ConsentDtoStatusEnum].
  static const values = <ConsentDtoStatusEnum>[
    GIVEN,
  ];

  static ConsentDtoStatusEnum? fromJson(dynamic value) => ConsentDtoStatusEnumTypeTransformer().decode(value);

  static List<ConsentDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConsentDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConsentDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConsentDtoStatusEnum] to String,
/// and [decode] dynamic data back to [ConsentDtoStatusEnum].
class ConsentDtoStatusEnumTypeTransformer {
  factory ConsentDtoStatusEnumTypeTransformer() => _instance ??= const ConsentDtoStatusEnumTypeTransformer._();

  const ConsentDtoStatusEnumTypeTransformer._();

  String encode(ConsentDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConsentDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConsentDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GIVEN': return ConsentDtoStatusEnum.GIVEN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConsentDtoStatusEnumTypeTransformer] instance.
  static ConsentDtoStatusEnumTypeTransformer? _instance;
}


