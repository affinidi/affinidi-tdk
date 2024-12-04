//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FlowDataStatusListsDetailsInner {
  /// Returns a new [FlowDataStatusListsDetailsInner] instance.
  FlowDataStatusListsDetailsInner({
    required this.statusListPurpose,
    required this.statusListId,
    required this.statusListIndex,
    required this.standard,
    required this.isActive,
    this.statusActivationReason,
    this.statusActivatedAt,
  });

  /// Purpose of status list to which credential is added
  FlowDataStatusListsDetailsInnerStatusListPurposeEnum statusListPurpose;

  /// id of status list
  String statusListId;

  /// as usual it is a number, but all standards use a string
  String statusListIndex;

  FlowDataStatusListsDetailsInnerStandardEnum standard;

  /// indicates status is true or not. Default false.
  bool isActive;

  /// text reasoning why the status is true (if true). Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusActivationReason;

  /// ISO 8601 string of the modification date/time the status. Optional.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statusActivatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FlowDataStatusListsDetailsInner &&
    other.statusListPurpose == statusListPurpose &&
    other.statusListId == statusListId &&
    other.statusListIndex == statusListIndex &&
    other.standard == standard &&
    other.isActive == isActive &&
    other.statusActivationReason == statusActivationReason &&
    other.statusActivatedAt == statusActivatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (statusListPurpose.hashCode) +
    (statusListId.hashCode) +
    (statusListIndex.hashCode) +
    (standard.hashCode) +
    (isActive.hashCode) +
    (statusActivationReason == null ? 0 : statusActivationReason!.hashCode) +
    (statusActivatedAt == null ? 0 : statusActivatedAt!.hashCode);

  @override
  String toString() => 'FlowDataStatusListsDetailsInner[statusListPurpose=$statusListPurpose, statusListId=$statusListId, statusListIndex=$statusListIndex, standard=$standard, isActive=$isActive, statusActivationReason=$statusActivationReason, statusActivatedAt=$statusActivatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'statusListPurpose'] = this.statusListPurpose;
      json[r'statusListId'] = this.statusListId;
      json[r'statusListIndex'] = this.statusListIndex;
      json[r'standard'] = this.standard;
      json[r'isActive'] = this.isActive;
    if (this.statusActivationReason != null) {
      json[r'statusActivationReason'] = this.statusActivationReason;
    } else {
      json[r'statusActivationReason'] = null;
    }
    if (this.statusActivatedAt != null) {
      json[r'statusActivatedAt'] = this.statusActivatedAt;
    } else {
      json[r'statusActivatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [FlowDataStatusListsDetailsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FlowDataStatusListsDetailsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FlowDataStatusListsDetailsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FlowDataStatusListsDetailsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FlowDataStatusListsDetailsInner(
        statusListPurpose: FlowDataStatusListsDetailsInnerStatusListPurposeEnum.fromJson(json[r'statusListPurpose'])!,
        statusListId: mapValueOfType<String>(json, r'statusListId')!,
        statusListIndex: mapValueOfType<String>(json, r'statusListIndex')!,
        standard: FlowDataStatusListsDetailsInnerStandardEnum.fromJson(json[r'standard'])!,
        isActive: mapValueOfType<bool>(json, r'isActive')!,
        statusActivationReason: mapValueOfType<String>(json, r'statusActivationReason'),
        statusActivatedAt: mapValueOfType<String>(json, r'statusActivatedAt'),
      );
    }
    return null;
  }

  static List<FlowDataStatusListsDetailsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowDataStatusListsDetailsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowDataStatusListsDetailsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FlowDataStatusListsDetailsInner> mapFromJson(dynamic json) {
    final map = <String, FlowDataStatusListsDetailsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FlowDataStatusListsDetailsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FlowDataStatusListsDetailsInner-objects as value to a dart map
  static Map<String, List<FlowDataStatusListsDetailsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FlowDataStatusListsDetailsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FlowDataStatusListsDetailsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'statusListPurpose',
    'statusListId',
    'statusListIndex',
    'standard',
    'isActive',
  };
}

/// Purpose of status list to which credential is added
class FlowDataStatusListsDetailsInnerStatusListPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const FlowDataStatusListsDetailsInnerStatusListPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REVOKED = FlowDataStatusListsDetailsInnerStatusListPurposeEnum._(r'REVOKED');

  /// List of all possible values in this [enum][FlowDataStatusListsDetailsInnerStatusListPurposeEnum].
  static const values = <FlowDataStatusListsDetailsInnerStatusListPurposeEnum>[
    REVOKED,
  ];

  static FlowDataStatusListsDetailsInnerStatusListPurposeEnum? fromJson(dynamic value) => FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer().decode(value);

  static List<FlowDataStatusListsDetailsInnerStatusListPurposeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowDataStatusListsDetailsInnerStatusListPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowDataStatusListsDetailsInnerStatusListPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlowDataStatusListsDetailsInnerStatusListPurposeEnum] to String,
/// and [decode] dynamic data back to [FlowDataStatusListsDetailsInnerStatusListPurposeEnum].
class FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer {
  factory FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer() => _instance ??= const FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer._();

  const FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer._();

  String encode(FlowDataStatusListsDetailsInnerStatusListPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlowDataStatusListsDetailsInnerStatusListPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlowDataStatusListsDetailsInnerStatusListPurposeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REVOKED': return FlowDataStatusListsDetailsInnerStatusListPurposeEnum.REVOKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer] instance.
  static FlowDataStatusListsDetailsInnerStatusListPurposeEnumTypeTransformer? _instance;
}



class FlowDataStatusListsDetailsInnerStandardEnum {
  /// Instantiate a new enum with the provided [value].
  const FlowDataStatusListsDetailsInnerStandardEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const revocationList2020 = FlowDataStatusListsDetailsInnerStandardEnum._(r'RevocationList2020');
  static const bitstringStatusListV1 = FlowDataStatusListsDetailsInnerStandardEnum._(r'BitstringStatusListV1');

  /// List of all possible values in this [enum][FlowDataStatusListsDetailsInnerStandardEnum].
  static const values = <FlowDataStatusListsDetailsInnerStandardEnum>[
    revocationList2020,
    bitstringStatusListV1,
  ];

  static FlowDataStatusListsDetailsInnerStandardEnum? fromJson(dynamic value) => FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer().decode(value);

  static List<FlowDataStatusListsDetailsInnerStandardEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FlowDataStatusListsDetailsInnerStandardEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FlowDataStatusListsDetailsInnerStandardEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FlowDataStatusListsDetailsInnerStandardEnum] to String,
/// and [decode] dynamic data back to [FlowDataStatusListsDetailsInnerStandardEnum].
class FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer {
  factory FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer() => _instance ??= const FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer._();

  const FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer._();

  String encode(FlowDataStatusListsDetailsInnerStandardEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FlowDataStatusListsDetailsInnerStandardEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FlowDataStatusListsDetailsInnerStandardEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RevocationList2020': return FlowDataStatusListsDetailsInnerStandardEnum.revocationList2020;
        case r'BitstringStatusListV1': return FlowDataStatusListsDetailsInnerStandardEnum.bitstringStatusListV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer] instance.
  static FlowDataStatusListsDetailsInnerStandardEnumTypeTransformer? _instance;
}


