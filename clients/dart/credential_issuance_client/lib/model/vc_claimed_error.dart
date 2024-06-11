//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VcClaimedError {
  /// Returns a new [VcClaimedError] instance.
  VcClaimedError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  VcClaimedErrorNameEnum name;

  VcClaimedErrorMessageEnum message;

  VcClaimedErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VcClaimedError &&
    other.name == name &&
    other.message == message &&
    other.httpStatusCode == httpStatusCode &&
    other.traceId == traceId &&
    _deepEquality.equals(other.details, details);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (message.hashCode) +
    (httpStatusCode.hashCode) +
    (traceId.hashCode) +
    (details.hashCode);

  @override
  String toString() => 'VcClaimedError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [VcClaimedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VcClaimedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VcClaimedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VcClaimedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VcClaimedError(
        name: VcClaimedErrorNameEnum.fromJson(json[r'name'])!,
        message: VcClaimedErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: VcClaimedErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<VcClaimedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VcClaimedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VcClaimedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VcClaimedError> mapFromJson(dynamic json) {
    final map = <String, VcClaimedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VcClaimedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VcClaimedError-objects as value to a dart map
  static Map<String, List<VcClaimedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VcClaimedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VcClaimedError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'message',
    'httpStatusCode',
    'traceId',
  };
}


class VcClaimedErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const VcClaimedErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vcClaimedError = VcClaimedErrorNameEnum._(r'VcClaimedError');

  /// List of all possible values in this [enum][VcClaimedErrorNameEnum].
  static const values = <VcClaimedErrorNameEnum>[
    vcClaimedError,
  ];

  static VcClaimedErrorNameEnum? fromJson(dynamic value) => VcClaimedErrorNameEnumTypeTransformer().decode(value);

  static List<VcClaimedErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VcClaimedErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VcClaimedErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VcClaimedErrorNameEnum] to String,
/// and [decode] dynamic data back to [VcClaimedErrorNameEnum].
class VcClaimedErrorNameEnumTypeTransformer {
  factory VcClaimedErrorNameEnumTypeTransformer() => _instance ??= const VcClaimedErrorNameEnumTypeTransformer._();

  const VcClaimedErrorNameEnumTypeTransformer._();

  String encode(VcClaimedErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VcClaimedErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VcClaimedErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VcClaimedError': return VcClaimedErrorNameEnum.vcClaimedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VcClaimedErrorNameEnumTypeTransformer] instance.
  static VcClaimedErrorNameEnumTypeTransformer? _instance;
}



class VcClaimedErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const VcClaimedErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const theRequestedVCHasAlreadyBeenClaimedByTheUser = VcClaimedErrorMessageEnum._(r'The requested VC has already been claimed by the user');

  /// List of all possible values in this [enum][VcClaimedErrorMessageEnum].
  static const values = <VcClaimedErrorMessageEnum>[
    theRequestedVCHasAlreadyBeenClaimedByTheUser,
  ];

  static VcClaimedErrorMessageEnum? fromJson(dynamic value) => VcClaimedErrorMessageEnumTypeTransformer().decode(value);

  static List<VcClaimedErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VcClaimedErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VcClaimedErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VcClaimedErrorMessageEnum] to String,
/// and [decode] dynamic data back to [VcClaimedErrorMessageEnum].
class VcClaimedErrorMessageEnumTypeTransformer {
  factory VcClaimedErrorMessageEnumTypeTransformer() => _instance ??= const VcClaimedErrorMessageEnumTypeTransformer._();

  const VcClaimedErrorMessageEnumTypeTransformer._();

  String encode(VcClaimedErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VcClaimedErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VcClaimedErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'The requested VC has already been claimed by the user': return VcClaimedErrorMessageEnum.theRequestedVCHasAlreadyBeenClaimedByTheUser;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VcClaimedErrorMessageEnumTypeTransformer] instance.
  static VcClaimedErrorMessageEnumTypeTransformer? _instance;
}



class VcClaimedErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const VcClaimedErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = VcClaimedErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][VcClaimedErrorHttpStatusCodeEnum].
  static const values = <VcClaimedErrorHttpStatusCodeEnum>[
    number400,
  ];

  static VcClaimedErrorHttpStatusCodeEnum? fromJson(dynamic value) => VcClaimedErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<VcClaimedErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VcClaimedErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VcClaimedErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VcClaimedErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [VcClaimedErrorHttpStatusCodeEnum].
class VcClaimedErrorHttpStatusCodeEnumTypeTransformer {
  factory VcClaimedErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const VcClaimedErrorHttpStatusCodeEnumTypeTransformer._();

  const VcClaimedErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(VcClaimedErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VcClaimedErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VcClaimedErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return VcClaimedErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VcClaimedErrorHttpStatusCodeEnumTypeTransformer] instance.
  static VcClaimedErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


