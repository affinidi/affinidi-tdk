//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidJwtTokenError {
  /// Returns a new [InvalidJwtTokenError] instance.
  InvalidJwtTokenError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidJwtTokenErrorNameEnum name;

  InvalidJwtTokenErrorMessageEnum message;

  InvalidJwtTokenErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidJwtTokenError &&
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
  String toString() => 'InvalidJwtTokenError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidJwtTokenError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidJwtTokenError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidJwtTokenError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidJwtTokenError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidJwtTokenError(
        name: InvalidJwtTokenErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidJwtTokenErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidJwtTokenErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidJwtTokenError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidJwtTokenError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidJwtTokenError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidJwtTokenError> mapFromJson(dynamic json) {
    final map = <String, InvalidJwtTokenError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidJwtTokenError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidJwtTokenError-objects as value to a dart map
  static Map<String, List<InvalidJwtTokenError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidJwtTokenError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidJwtTokenError.listFromJson(entry.value, growable: growable,);
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


class InvalidJwtTokenErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidJwtTokenErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidJwtTokenError = InvalidJwtTokenErrorNameEnum._(r'InvalidJwtTokenError');

  /// List of all possible values in this [enum][InvalidJwtTokenErrorNameEnum].
  static const values = <InvalidJwtTokenErrorNameEnum>[
    invalidJwtTokenError,
  ];

  static InvalidJwtTokenErrorNameEnum? fromJson(dynamic value) => InvalidJwtTokenErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidJwtTokenErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidJwtTokenErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidJwtTokenErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidJwtTokenErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidJwtTokenErrorNameEnum].
class InvalidJwtTokenErrorNameEnumTypeTransformer {
  factory InvalidJwtTokenErrorNameEnumTypeTransformer() => _instance ??= const InvalidJwtTokenErrorNameEnumTypeTransformer._();

  const InvalidJwtTokenErrorNameEnumTypeTransformer._();

  String encode(InvalidJwtTokenErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidJwtTokenErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidJwtTokenErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidJwtTokenError': return InvalidJwtTokenErrorNameEnum.invalidJwtTokenError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidJwtTokenErrorNameEnumTypeTransformer] instance.
  static InvalidJwtTokenErrorNameEnumTypeTransformer? _instance;
}



class InvalidJwtTokenErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidJwtTokenErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const jWTTokenIsInvalid = InvalidJwtTokenErrorMessageEnum._(r'JWT token is invalid');

  /// List of all possible values in this [enum][InvalidJwtTokenErrorMessageEnum].
  static const values = <InvalidJwtTokenErrorMessageEnum>[
    jWTTokenIsInvalid,
  ];

  static InvalidJwtTokenErrorMessageEnum? fromJson(dynamic value) => InvalidJwtTokenErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidJwtTokenErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidJwtTokenErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidJwtTokenErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidJwtTokenErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidJwtTokenErrorMessageEnum].
class InvalidJwtTokenErrorMessageEnumTypeTransformer {
  factory InvalidJwtTokenErrorMessageEnumTypeTransformer() => _instance ??= const InvalidJwtTokenErrorMessageEnumTypeTransformer._();

  const InvalidJwtTokenErrorMessageEnumTypeTransformer._();

  String encode(InvalidJwtTokenErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidJwtTokenErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidJwtTokenErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'JWT token is invalid': return InvalidJwtTokenErrorMessageEnum.jWTTokenIsInvalid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidJwtTokenErrorMessageEnumTypeTransformer] instance.
  static InvalidJwtTokenErrorMessageEnumTypeTransformer? _instance;
}



class InvalidJwtTokenErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidJwtTokenErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number401 = InvalidJwtTokenErrorHttpStatusCodeEnum._(401);

  /// List of all possible values in this [enum][InvalidJwtTokenErrorHttpStatusCodeEnum].
  static const values = <InvalidJwtTokenErrorHttpStatusCodeEnum>[
    number401,
  ];

  static InvalidJwtTokenErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidJwtTokenErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidJwtTokenErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidJwtTokenErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidJwtTokenErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidJwtTokenErrorHttpStatusCodeEnum].
class InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidJwtTokenErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidJwtTokenErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidJwtTokenErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 401: return InvalidJwtTokenErrorHttpStatusCodeEnum.number401;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidJwtTokenErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


