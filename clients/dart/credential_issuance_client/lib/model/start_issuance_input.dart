//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartIssuanceInput {
  /// Returns a new [StartIssuanceInput] instance.
  StartIssuanceInput({
    this.claimMode,
    this.holderDid,
    this.issuanceId,
    this.data = const [],
  });

  /// In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
  StartIssuanceInputClaimModeEnum? claimMode;

  /// Holder DID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? holderDid;

  /// Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuanceId;

  List<StartIssuanceInputDataInner> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartIssuanceInput &&
    other.claimMode == claimMode &&
    other.holderDid == holderDid &&
    other.issuanceId == issuanceId &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claimMode == null ? 0 : claimMode!.hashCode) +
    (holderDid == null ? 0 : holderDid!.hashCode) +
    (issuanceId == null ? 0 : issuanceId!.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'StartIssuanceInput[claimMode=$claimMode, holderDid=$holderDid, issuanceId=$issuanceId, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.claimMode != null) {
      json[r'claimMode'] = this.claimMode;
    } else {
      json[r'claimMode'] = null;
    }
    if (this.holderDid != null) {
      json[r'holderDid'] = this.holderDid;
    } else {
      json[r'holderDid'] = null;
    }
    if (this.issuanceId != null) {
      json[r'issuanceId'] = this.issuanceId;
    } else {
      json[r'issuanceId'] = null;
    }
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [StartIssuanceInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartIssuanceInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartIssuanceInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartIssuanceInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartIssuanceInput(
        claimMode: StartIssuanceInputClaimModeEnum.fromJson(json[r'claimMode']),
        holderDid: mapValueOfType<String>(json, r'holderDid'),
        issuanceId: mapValueOfType<String>(json, r'issuanceId'),
        data: StartIssuanceInputDataInner.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<StartIssuanceInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuanceInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuanceInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartIssuanceInput> mapFromJson(dynamic json) {
    final map = <String, StartIssuanceInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartIssuanceInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartIssuanceInput-objects as value to a dart map
  static Map<String, List<StartIssuanceInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartIssuanceInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartIssuanceInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
  };
}

/// In TX_CODE claim mode, additional transaction code will be generated and the Authorization Server expects presentation of the transaction Code by the end-user. If FIXED_HOLDER claim mode is defined, holderDid must be present and service will not generate additional transaction code (NORMAL claimMode is deprecated).
class StartIssuanceInputClaimModeEnum {
  /// Instantiate a new enum with the provided [value].
  const StartIssuanceInputClaimModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NORMAL = StartIssuanceInputClaimModeEnum._(r'NORMAL');
  static const TX_CODE = StartIssuanceInputClaimModeEnum._(r'TX_CODE');
  static const FIXED_HOLDER = StartIssuanceInputClaimModeEnum._(r'FIXED_HOLDER');

  /// List of all possible values in this [enum][StartIssuanceInputClaimModeEnum].
  static const values = <StartIssuanceInputClaimModeEnum>[
    NORMAL,
    TX_CODE,
    FIXED_HOLDER,
  ];

  static StartIssuanceInputClaimModeEnum? fromJson(dynamic value) => StartIssuanceInputClaimModeEnumTypeTransformer().decode(value);

  static List<StartIssuanceInputClaimModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuanceInputClaimModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuanceInputClaimModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartIssuanceInputClaimModeEnum] to String,
/// and [decode] dynamic data back to [StartIssuanceInputClaimModeEnum].
class StartIssuanceInputClaimModeEnumTypeTransformer {
  factory StartIssuanceInputClaimModeEnumTypeTransformer() => _instance ??= const StartIssuanceInputClaimModeEnumTypeTransformer._();

  const StartIssuanceInputClaimModeEnumTypeTransformer._();

  String encode(StartIssuanceInputClaimModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartIssuanceInputClaimModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartIssuanceInputClaimModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NORMAL': return StartIssuanceInputClaimModeEnum.NORMAL;
        case r'TX_CODE': return StartIssuanceInputClaimModeEnum.TX_CODE;
        case r'FIXED_HOLDER': return StartIssuanceInputClaimModeEnum.FIXED_HOLDER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartIssuanceInputClaimModeEnumTypeTransformer] instance.
  static StartIssuanceInputClaimModeEnumTypeTransformer? _instance;
}


