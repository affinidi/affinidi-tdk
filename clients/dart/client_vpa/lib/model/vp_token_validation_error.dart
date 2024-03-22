//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VPTokenValidationError {
  /// Returns a new [VPTokenValidationError] instance.
  VPTokenValidationError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  VPTokenValidationErrorNameEnum name;

  VPTokenValidationErrorMessageEnum message;

  VPTokenValidationErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VPTokenValidationError &&
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
  String toString() => 'VPTokenValidationError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [VPTokenValidationError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VPTokenValidationError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VPTokenValidationError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VPTokenValidationError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VPTokenValidationError(
        name: VPTokenValidationErrorNameEnum.fromJson(json[r'name'])!,
        message: VPTokenValidationErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: VPTokenValidationErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<VPTokenValidationError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VPTokenValidationError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VPTokenValidationError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VPTokenValidationError> mapFromJson(dynamic json) {
    final map = <String, VPTokenValidationError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VPTokenValidationError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VPTokenValidationError-objects as value to a dart map
  static Map<String, List<VPTokenValidationError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VPTokenValidationError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VPTokenValidationError.listFromJson(entry.value, growable: growable,);
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


class VPTokenValidationErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const VPTokenValidationErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vPTokenValidationError = VPTokenValidationErrorNameEnum._(r'VPTokenValidationError');

  /// List of all possible values in this [enum][VPTokenValidationErrorNameEnum].
  static const values = <VPTokenValidationErrorNameEnum>[
    vPTokenValidationError,
  ];

  static VPTokenValidationErrorNameEnum? fromJson(dynamic value) => VPTokenValidationErrorNameEnumTypeTransformer().decode(value);

  static List<VPTokenValidationErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VPTokenValidationErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VPTokenValidationErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VPTokenValidationErrorNameEnum] to String,
/// and [decode] dynamic data back to [VPTokenValidationErrorNameEnum].
class VPTokenValidationErrorNameEnumTypeTransformer {
  factory VPTokenValidationErrorNameEnumTypeTransformer() => _instance ??= const VPTokenValidationErrorNameEnumTypeTransformer._();

  const VPTokenValidationErrorNameEnumTypeTransformer._();

  String encode(VPTokenValidationErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VPTokenValidationErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VPTokenValidationErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VPTokenValidationError': return VPTokenValidationErrorNameEnum.vPTokenValidationError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VPTokenValidationErrorNameEnumTypeTransformer] instance.
  static VPTokenValidationErrorNameEnumTypeTransformer? _instance;
}



class VPTokenValidationErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const VPTokenValidationErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vPTokenValidationEndedWithAnError = VPTokenValidationErrorMessageEnum._(r'VP token validation ended with an error');

  /// List of all possible values in this [enum][VPTokenValidationErrorMessageEnum].
  static const values = <VPTokenValidationErrorMessageEnum>[
    vPTokenValidationEndedWithAnError,
  ];

  static VPTokenValidationErrorMessageEnum? fromJson(dynamic value) => VPTokenValidationErrorMessageEnumTypeTransformer().decode(value);

  static List<VPTokenValidationErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VPTokenValidationErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VPTokenValidationErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VPTokenValidationErrorMessageEnum] to String,
/// and [decode] dynamic data back to [VPTokenValidationErrorMessageEnum].
class VPTokenValidationErrorMessageEnumTypeTransformer {
  factory VPTokenValidationErrorMessageEnumTypeTransformer() => _instance ??= const VPTokenValidationErrorMessageEnumTypeTransformer._();

  const VPTokenValidationErrorMessageEnumTypeTransformer._();

  String encode(VPTokenValidationErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VPTokenValidationErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VPTokenValidationErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VP token validation ended with an error': return VPTokenValidationErrorMessageEnum.vPTokenValidationEndedWithAnError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VPTokenValidationErrorMessageEnumTypeTransformer] instance.
  static VPTokenValidationErrorMessageEnumTypeTransformer? _instance;
}



class VPTokenValidationErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const VPTokenValidationErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = VPTokenValidationErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][VPTokenValidationErrorHttpStatusCodeEnum].
  static const values = <VPTokenValidationErrorHttpStatusCodeEnum>[
    number400,
  ];

  static VPTokenValidationErrorHttpStatusCodeEnum? fromJson(dynamic value) => VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<VPTokenValidationErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VPTokenValidationErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VPTokenValidationErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VPTokenValidationErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [VPTokenValidationErrorHttpStatusCodeEnum].
class VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer {
  factory VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer._();

  const VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(VPTokenValidationErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a VPTokenValidationErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VPTokenValidationErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return VPTokenValidationErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer] instance.
  static VPTokenValidationErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


