//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidDidParameterError {
  /// Returns a new [InvalidDidParameterError] instance.
  InvalidDidParameterError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidDidParameterErrorNameEnum name;

  InvalidDidParameterErrorMessageEnum message;

  InvalidDidParameterErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidDidParameterError &&
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
  String toString() => 'InvalidDidParameterError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidDidParameterError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidDidParameterError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidDidParameterError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidDidParameterError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidDidParameterError(
        name: InvalidDidParameterErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidDidParameterErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidDidParameterErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidDidParameterError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidParameterError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidParameterError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidDidParameterError> mapFromJson(dynamic json) {
    final map = <String, InvalidDidParameterError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidDidParameterError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidDidParameterError-objects as value to a dart map
  static Map<String, List<InvalidDidParameterError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidDidParameterError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidDidParameterError.listFromJson(entry.value, growable: growable,);
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


class InvalidDidParameterErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDidParameterErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidDidParameterError = InvalidDidParameterErrorNameEnum._(r'InvalidDidParameterError');

  /// List of all possible values in this [enum][InvalidDidParameterErrorNameEnum].
  static const values = <InvalidDidParameterErrorNameEnum>[
    invalidDidParameterError,
  ];

  static InvalidDidParameterErrorNameEnum? fromJson(dynamic value) => InvalidDidParameterErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidDidParameterErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidParameterErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidParameterErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDidParameterErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidDidParameterErrorNameEnum].
class InvalidDidParameterErrorNameEnumTypeTransformer {
  factory InvalidDidParameterErrorNameEnumTypeTransformer() => _instance ??= const InvalidDidParameterErrorNameEnumTypeTransformer._();

  const InvalidDidParameterErrorNameEnumTypeTransformer._();

  String encode(InvalidDidParameterErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDidParameterErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDidParameterErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidDidParameterError': return InvalidDidParameterErrorNameEnum.invalidDidParameterError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDidParameterErrorNameEnumTypeTransformer] instance.
  static InvalidDidParameterErrorNameEnumTypeTransformer? _instance;
}



class InvalidDidParameterErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDidParameterErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod = InvalidDidParameterErrorMessageEnum._(r'Given did in field toDid is invalid. Use only resolvable form of did.');

  /// List of all possible values in this [enum][InvalidDidParameterErrorMessageEnum].
  static const values = <InvalidDidParameterErrorMessageEnum>[
    givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod,
  ];

  static InvalidDidParameterErrorMessageEnum? fromJson(dynamic value) => InvalidDidParameterErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidDidParameterErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidParameterErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidParameterErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDidParameterErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidDidParameterErrorMessageEnum].
class InvalidDidParameterErrorMessageEnumTypeTransformer {
  factory InvalidDidParameterErrorMessageEnumTypeTransformer() => _instance ??= const InvalidDidParameterErrorMessageEnumTypeTransformer._();

  const InvalidDidParameterErrorMessageEnumTypeTransformer._();

  String encode(InvalidDidParameterErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDidParameterErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDidParameterErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Given did in field toDid is invalid. Use only resolvable form of did.': return InvalidDidParameterErrorMessageEnum.givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDidParameterErrorMessageEnumTypeTransformer] instance.
  static InvalidDidParameterErrorMessageEnumTypeTransformer? _instance;
}



class InvalidDidParameterErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDidParameterErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidDidParameterErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidDidParameterErrorHttpStatusCodeEnum].
  static const values = <InvalidDidParameterErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidDidParameterErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidDidParameterErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidParameterErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidParameterErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDidParameterErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidDidParameterErrorHttpStatusCodeEnum].
class InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidDidParameterErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDidParameterErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDidParameterErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidDidParameterErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidDidParameterErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


