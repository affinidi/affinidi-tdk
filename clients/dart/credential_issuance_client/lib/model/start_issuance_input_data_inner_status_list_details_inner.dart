//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartIssuanceInputDataInnerStatusListDetailsInner {
  /// Returns a new [StartIssuanceInputDataInnerStatusListDetailsInner] instance.
  StartIssuanceInputDataInnerStatusListDetailsInner({
    this.purpose,
    this.standard,
  });

  StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum? purpose;

  StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum? standard;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartIssuanceInputDataInnerStatusListDetailsInner &&
    other.purpose == purpose &&
    other.standard == standard;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (purpose == null ? 0 : purpose!.hashCode) +
    (standard == null ? 0 : standard!.hashCode);

  @override
  String toString() => 'StartIssuanceInputDataInnerStatusListDetailsInner[purpose=$purpose, standard=$standard]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
    if (this.standard != null) {
      json[r'standard'] = this.standard;
    } else {
      json[r'standard'] = null;
    }
    return json;
  }

  /// Returns a new [StartIssuanceInputDataInnerStatusListDetailsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartIssuanceInputDataInnerStatusListDetailsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartIssuanceInputDataInnerStatusListDetailsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartIssuanceInputDataInnerStatusListDetailsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartIssuanceInputDataInnerStatusListDetailsInner(
        purpose: StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum.fromJson(json[r'purpose']),
        standard: StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum.fromJson(json[r'standard']),
      );
    }
    return null;
  }

  static List<StartIssuanceInputDataInnerStatusListDetailsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuanceInputDataInnerStatusListDetailsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuanceInputDataInnerStatusListDetailsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartIssuanceInputDataInnerStatusListDetailsInner> mapFromJson(dynamic json) {
    final map = <String, StartIssuanceInputDataInnerStatusListDetailsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartIssuanceInputDataInnerStatusListDetailsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartIssuanceInputDataInnerStatusListDetailsInner-objects as value to a dart map
  static Map<String, List<StartIssuanceInputDataInnerStatusListDetailsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartIssuanceInputDataInnerStatusListDetailsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartIssuanceInputDataInnerStatusListDetailsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum {
  /// Instantiate a new enum with the provided [value].
  const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REVOCABLE = StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum._(r'REVOCABLE');

  /// List of all possible values in this [enum][StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum].
  static const values = <StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum>[
    REVOCABLE,
  ];

  static StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum? fromJson(dynamic value) => StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer().decode(value);

  static List<StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum] to String,
/// and [decode] dynamic data back to [StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum].
class StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer {
  factory StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer() => _instance ??= const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer._();

  const StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer._();

  String encode(StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REVOCABLE': return StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnum.REVOCABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer] instance.
  static StartIssuanceInputDataInnerStatusListDetailsInnerPurposeEnumTypeTransformer? _instance;
}



class StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum {
  /// Instantiate a new enum with the provided [value].
  const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const revocationList2020 = StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum._(r'RevocationList2020');
  static const bitstringStatusListV1 = StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum._(r'BitstringStatusListV1');

  /// List of all possible values in this [enum][StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum].
  static const values = <StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum>[
    revocationList2020,
    bitstringStatusListV1,
  ];

  static StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum? fromJson(dynamic value) => StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer().decode(value);

  static List<StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum] to String,
/// and [decode] dynamic data back to [StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum].
class StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer {
  factory StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer() => _instance ??= const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer._();

  const StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer._();

  String encode(StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RevocationList2020': return StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum.revocationList2020;
        case r'BitstringStatusListV1': return StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnum.bitstringStatusListV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer] instance.
  static StartIssuanceInputDataInnerStatusListDetailsInnerStandardEnumTypeTransformer? _instance;
}


