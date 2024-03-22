//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UsernameExistsExceptionError {
  /// Returns a new [UsernameExistsExceptionError] instance.
  UsernameExistsExceptionError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  UsernameExistsExceptionErrorNameEnum name;

  UsernameExistsExceptionErrorMessageEnum message;

  UsernameExistsExceptionErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsernameExistsExceptionError &&
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
  String toString() => 'UsernameExistsExceptionError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [UsernameExistsExceptionError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UsernameExistsExceptionError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UsernameExistsExceptionError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UsernameExistsExceptionError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UsernameExistsExceptionError(
        name: UsernameExistsExceptionErrorNameEnum.fromJson(json[r'name'])!,
        message: UsernameExistsExceptionErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: UsernameExistsExceptionErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<UsernameExistsExceptionError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsernameExistsExceptionError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsernameExistsExceptionError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UsernameExistsExceptionError> mapFromJson(dynamic json) {
    final map = <String, UsernameExistsExceptionError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UsernameExistsExceptionError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UsernameExistsExceptionError-objects as value to a dart map
  static Map<String, List<UsernameExistsExceptionError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UsernameExistsExceptionError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UsernameExistsExceptionError.listFromJson(entry.value, growable: growable,);
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


class UsernameExistsExceptionErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const UsernameExistsExceptionErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const usernameExistsExceptionError = UsernameExistsExceptionErrorNameEnum._(r'UsernameExistsExceptionError');

  /// List of all possible values in this [enum][UsernameExistsExceptionErrorNameEnum].
  static const values = <UsernameExistsExceptionErrorNameEnum>[
    usernameExistsExceptionError,
  ];

  static UsernameExistsExceptionErrorNameEnum? fromJson(dynamic value) => UsernameExistsExceptionErrorNameEnumTypeTransformer().decode(value);

  static List<UsernameExistsExceptionErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsernameExistsExceptionErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsernameExistsExceptionErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UsernameExistsExceptionErrorNameEnum] to String,
/// and [decode] dynamic data back to [UsernameExistsExceptionErrorNameEnum].
class UsernameExistsExceptionErrorNameEnumTypeTransformer {
  factory UsernameExistsExceptionErrorNameEnumTypeTransformer() => _instance ??= const UsernameExistsExceptionErrorNameEnumTypeTransformer._();

  const UsernameExistsExceptionErrorNameEnumTypeTransformer._();

  String encode(UsernameExistsExceptionErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UsernameExistsExceptionErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UsernameExistsExceptionErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UsernameExistsExceptionError': return UsernameExistsExceptionErrorNameEnum.usernameExistsExceptionError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UsernameExistsExceptionErrorNameEnumTypeTransformer] instance.
  static UsernameExistsExceptionErrorNameEnumTypeTransformer? _instance;
}



class UsernameExistsExceptionErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const UsernameExistsExceptionErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const usernameAlreadyExists = UsernameExistsExceptionErrorMessageEnum._(r'Username already exists');

  /// List of all possible values in this [enum][UsernameExistsExceptionErrorMessageEnum].
  static const values = <UsernameExistsExceptionErrorMessageEnum>[
    usernameAlreadyExists,
  ];

  static UsernameExistsExceptionErrorMessageEnum? fromJson(dynamic value) => UsernameExistsExceptionErrorMessageEnumTypeTransformer().decode(value);

  static List<UsernameExistsExceptionErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsernameExistsExceptionErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsernameExistsExceptionErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UsernameExistsExceptionErrorMessageEnum] to String,
/// and [decode] dynamic data back to [UsernameExistsExceptionErrorMessageEnum].
class UsernameExistsExceptionErrorMessageEnumTypeTransformer {
  factory UsernameExistsExceptionErrorMessageEnumTypeTransformer() => _instance ??= const UsernameExistsExceptionErrorMessageEnumTypeTransformer._();

  const UsernameExistsExceptionErrorMessageEnumTypeTransformer._();

  String encode(UsernameExistsExceptionErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UsernameExistsExceptionErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UsernameExistsExceptionErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Username already exists': return UsernameExistsExceptionErrorMessageEnum.usernameAlreadyExists;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UsernameExistsExceptionErrorMessageEnumTypeTransformer] instance.
  static UsernameExistsExceptionErrorMessageEnumTypeTransformer? _instance;
}



class UsernameExistsExceptionErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const UsernameExistsExceptionErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number409 = UsernameExistsExceptionErrorHttpStatusCodeEnum._(409);

  /// List of all possible values in this [enum][UsernameExistsExceptionErrorHttpStatusCodeEnum].
  static const values = <UsernameExistsExceptionErrorHttpStatusCodeEnum>[
    number409,
  ];

  static UsernameExistsExceptionErrorHttpStatusCodeEnum? fromJson(dynamic value) => UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<UsernameExistsExceptionErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UsernameExistsExceptionErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UsernameExistsExceptionErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UsernameExistsExceptionErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [UsernameExistsExceptionErrorHttpStatusCodeEnum].
class UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer {
  factory UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  const UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(UsernameExistsExceptionErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UsernameExistsExceptionErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UsernameExistsExceptionErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 409: return UsernameExistsExceptionErrorHttpStatusCodeEnum.number409;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer] instance.
  static UsernameExistsExceptionErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


