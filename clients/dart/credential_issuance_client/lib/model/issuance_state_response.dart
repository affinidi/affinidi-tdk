//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class IssuanceStateResponse {
  /// Returns a new [IssuanceStateResponse] instance.
  IssuanceStateResponse({
    required this.issuanceId,
    required this.status,
  });

  /// Website's internal identifier. Website may use to get info about the status of issuance flow. If it is not provided, CIS will generate one.
  String issuanceId;

  /// String describing the status of the issuance
  IssuanceStateResponseStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IssuanceStateResponse &&
    other.issuanceId == issuanceId &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (issuanceId.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'IssuanceStateResponse[issuanceId=$issuanceId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'issuanceId'] = this.issuanceId;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [IssuanceStateResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IssuanceStateResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IssuanceStateResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IssuanceStateResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IssuanceStateResponse(
        issuanceId: mapValueOfType<String>(json, r'issuanceId')!,
        status: IssuanceStateResponseStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<IssuanceStateResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceStateResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceStateResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IssuanceStateResponse> mapFromJson(dynamic json) {
    final map = <String, IssuanceStateResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IssuanceStateResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IssuanceStateResponse-objects as value to a dart map
  static Map<String, List<IssuanceStateResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IssuanceStateResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IssuanceStateResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'issuanceId',
    'status',
  };
}

/// String describing the status of the issuance
class IssuanceStateResponseStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const IssuanceStateResponseStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INIT = IssuanceStateResponseStatusEnum._(r'INIT');
  static const OFFER_DELIVERED = IssuanceStateResponseStatusEnum._(r'OFFER_DELIVERED');
  static const VC_CLAIMED = IssuanceStateResponseStatusEnum._(r'VC_CLAIMED');
  static const TIMEOUT = IssuanceStateResponseStatusEnum._(r'TIMEOUT');

  /// List of all possible values in this [enum][IssuanceStateResponseStatusEnum].
  static const values = <IssuanceStateResponseStatusEnum>[
    INIT,
    OFFER_DELIVERED,
    VC_CLAIMED,
    TIMEOUT,
  ];

  static IssuanceStateResponseStatusEnum? fromJson(dynamic value) => IssuanceStateResponseStatusEnumTypeTransformer().decode(value);

  static List<IssuanceStateResponseStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IssuanceStateResponseStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IssuanceStateResponseStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [IssuanceStateResponseStatusEnum] to String,
/// and [decode] dynamic data back to [IssuanceStateResponseStatusEnum].
class IssuanceStateResponseStatusEnumTypeTransformer {
  factory IssuanceStateResponseStatusEnumTypeTransformer() => _instance ??= const IssuanceStateResponseStatusEnumTypeTransformer._();

  const IssuanceStateResponseStatusEnumTypeTransformer._();

  String encode(IssuanceStateResponseStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a IssuanceStateResponseStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  IssuanceStateResponseStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INIT': return IssuanceStateResponseStatusEnum.INIT;
        case r'OFFER_DELIVERED': return IssuanceStateResponseStatusEnum.OFFER_DELIVERED;
        case r'VC_CLAIMED': return IssuanceStateResponseStatusEnum.VC_CLAIMED;
        case r'TIMEOUT': return IssuanceStateResponseStatusEnum.TIMEOUT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [IssuanceStateResponseStatusEnumTypeTransformer] instance.
  static IssuanceStateResponseStatusEnumTypeTransformer? _instance;
}


