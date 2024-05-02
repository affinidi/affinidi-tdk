//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidParameterError {
  /// Returns a new [InvalidParameterError] instance.
  InvalidParameterError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidParameterErrorNameEnum name;

  InvalidParameterErrorMessageEnum message;

  InvalidParameterErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidParameterError &&
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
  String toString() => 'InvalidParameterError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidParameterError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidParameterError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidParameterError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidParameterError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidParameterError(
        name: InvalidParameterErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidParameterErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidParameterErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidParameterError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidParameterError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidParameterError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidParameterError> mapFromJson(dynamic json) {
    final map = <String, InvalidParameterError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidParameterError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidParameterError-objects as value to a dart map
  static Map<String, List<InvalidParameterError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidParameterError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidParameterError.listFromJson(entry.value, growable: growable,);
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


class InvalidParameterErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidParameterErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidParameterError = InvalidParameterErrorNameEnum._(r'InvalidParameterError');

  /// List of all possible values in this [enum][InvalidParameterErrorNameEnum].
  static const values = <InvalidParameterErrorNameEnum>[
    invalidParameterError,
  ];

  static InvalidParameterErrorNameEnum? fromJson(dynamic value) => InvalidParameterErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidParameterErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidParameterErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidParameterErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidParameterErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidParameterErrorNameEnum].
class InvalidParameterErrorNameEnumTypeTransformer {
  factory InvalidParameterErrorNameEnumTypeTransformer() => _instance ??= const InvalidParameterErrorNameEnumTypeTransformer._();

  const InvalidParameterErrorNameEnumTypeTransformer._();

  String encode(InvalidParameterErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidParameterErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidParameterErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidParameterError': return InvalidParameterErrorNameEnum.invalidParameterError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidParameterErrorNameEnumTypeTransformer] instance.
  static InvalidParameterErrorNameEnumTypeTransformer? _instance;
}



class InvalidParameterErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidParameterErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = InvalidParameterErrorMessageEnum._(r'Invalid parameter: ${param}.');

  /// List of all possible values in this [enum][InvalidParameterErrorMessageEnum].
  static const values = <InvalidParameterErrorMessageEnum>[
    invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
  ];

  static InvalidParameterErrorMessageEnum? fromJson(dynamic value) => InvalidParameterErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidParameterErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidParameterErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidParameterErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidParameterErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidParameterErrorMessageEnum].
class InvalidParameterErrorMessageEnumTypeTransformer {
  factory InvalidParameterErrorMessageEnumTypeTransformer() => _instance ??= const InvalidParameterErrorMessageEnumTypeTransformer._();

  const InvalidParameterErrorMessageEnumTypeTransformer._();

  String encode(InvalidParameterErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidParameterErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidParameterErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Invalid parameter: ${param}.': return InvalidParameterErrorMessageEnum.invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidParameterErrorMessageEnumTypeTransformer] instance.
  static InvalidParameterErrorMessageEnumTypeTransformer? _instance;
}



class InvalidParameterErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidParameterErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidParameterErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidParameterErrorHttpStatusCodeEnum].
  static const values = <InvalidParameterErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidParameterErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidParameterErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidParameterErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidParameterErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidParameterErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidParameterErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidParameterErrorHttpStatusCodeEnum].
class InvalidParameterErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidParameterErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidParameterErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidParameterErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidParameterErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidParameterErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidParameterErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidParameterErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidParameterErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidParameterErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


