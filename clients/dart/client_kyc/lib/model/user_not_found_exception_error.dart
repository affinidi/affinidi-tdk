//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserNotFoundExceptionError {
  /// Returns a new [UserNotFoundExceptionError] instance.
  UserNotFoundExceptionError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  UserNotFoundExceptionErrorNameEnum name;

  UserNotFoundExceptionErrorMessageEnum message;

  UserNotFoundExceptionErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserNotFoundExceptionError &&
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
  String toString() => 'UserNotFoundExceptionError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [UserNotFoundExceptionError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserNotFoundExceptionError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserNotFoundExceptionError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserNotFoundExceptionError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserNotFoundExceptionError(
        name: UserNotFoundExceptionErrorNameEnum.fromJson(json[r'name'])!,
        message: UserNotFoundExceptionErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: UserNotFoundExceptionErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<UserNotFoundExceptionError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserNotFoundExceptionError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserNotFoundExceptionError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserNotFoundExceptionError> mapFromJson(dynamic json) {
    final map = <String, UserNotFoundExceptionError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserNotFoundExceptionError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserNotFoundExceptionError-objects as value to a dart map
  static Map<String, List<UserNotFoundExceptionError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserNotFoundExceptionError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserNotFoundExceptionError.listFromJson(entry.value, growable: growable,);
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


class UserNotFoundExceptionErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const UserNotFoundExceptionErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const userNotFoundExceptionError = UserNotFoundExceptionErrorNameEnum._(r'UserNotFoundExceptionError');

  /// List of all possible values in this [enum][UserNotFoundExceptionErrorNameEnum].
  static const values = <UserNotFoundExceptionErrorNameEnum>[
    userNotFoundExceptionError,
  ];

  static UserNotFoundExceptionErrorNameEnum? fromJson(dynamic value) => UserNotFoundExceptionErrorNameEnumTypeTransformer().decode(value);

  static List<UserNotFoundExceptionErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserNotFoundExceptionErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserNotFoundExceptionErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserNotFoundExceptionErrorNameEnum] to String,
/// and [decode] dynamic data back to [UserNotFoundExceptionErrorNameEnum].
class UserNotFoundExceptionErrorNameEnumTypeTransformer {
  factory UserNotFoundExceptionErrorNameEnumTypeTransformer() => _instance ??= const UserNotFoundExceptionErrorNameEnumTypeTransformer._();

  const UserNotFoundExceptionErrorNameEnumTypeTransformer._();

  String encode(UserNotFoundExceptionErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserNotFoundExceptionErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserNotFoundExceptionErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UserNotFoundExceptionError': return UserNotFoundExceptionErrorNameEnum.userNotFoundExceptionError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserNotFoundExceptionErrorNameEnumTypeTransformer] instance.
  static UserNotFoundExceptionErrorNameEnumTypeTransformer? _instance;
}



class UserNotFoundExceptionErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const UserNotFoundExceptionErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const userCannotBeFoundPeriodPleaseEnterEmailAddressAgainPeriod = UserNotFoundExceptionErrorMessageEnum._(r'User cannot be found. Please enter email address again.');

  /// List of all possible values in this [enum][UserNotFoundExceptionErrorMessageEnum].
  static const values = <UserNotFoundExceptionErrorMessageEnum>[
    userCannotBeFoundPeriodPleaseEnterEmailAddressAgainPeriod,
  ];

  static UserNotFoundExceptionErrorMessageEnum? fromJson(dynamic value) => UserNotFoundExceptionErrorMessageEnumTypeTransformer().decode(value);

  static List<UserNotFoundExceptionErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserNotFoundExceptionErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserNotFoundExceptionErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserNotFoundExceptionErrorMessageEnum] to String,
/// and [decode] dynamic data back to [UserNotFoundExceptionErrorMessageEnum].
class UserNotFoundExceptionErrorMessageEnumTypeTransformer {
  factory UserNotFoundExceptionErrorMessageEnumTypeTransformer() => _instance ??= const UserNotFoundExceptionErrorMessageEnumTypeTransformer._();

  const UserNotFoundExceptionErrorMessageEnumTypeTransformer._();

  String encode(UserNotFoundExceptionErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserNotFoundExceptionErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserNotFoundExceptionErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'User cannot be found. Please enter email address again.': return UserNotFoundExceptionErrorMessageEnum.userCannotBeFoundPeriodPleaseEnterEmailAddressAgainPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserNotFoundExceptionErrorMessageEnumTypeTransformer] instance.
  static UserNotFoundExceptionErrorMessageEnumTypeTransformer? _instance;
}



class UserNotFoundExceptionErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserNotFoundExceptionErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number404 = UserNotFoundExceptionErrorHttpStatusCodeEnum._(404);

  /// List of all possible values in this [enum][UserNotFoundExceptionErrorHttpStatusCodeEnum].
  static const values = <UserNotFoundExceptionErrorHttpStatusCodeEnum>[
    number404,
  ];

  static UserNotFoundExceptionErrorHttpStatusCodeEnum? fromJson(dynamic value) => UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<UserNotFoundExceptionErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserNotFoundExceptionErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserNotFoundExceptionErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserNotFoundExceptionErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [UserNotFoundExceptionErrorHttpStatusCodeEnum].
class UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer {
  factory UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  const UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(UserNotFoundExceptionErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserNotFoundExceptionErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserNotFoundExceptionErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 404: return UserNotFoundExceptionErrorHttpStatusCodeEnum.number404;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer] instance.
  static UserNotFoundExceptionErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


