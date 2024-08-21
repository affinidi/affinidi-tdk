//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginConfigurationReadInvalidClientIdError {
  /// Returns a new [LoginConfigurationReadInvalidClientIdError] instance.
  LoginConfigurationReadInvalidClientIdError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  LoginConfigurationReadInvalidClientIdErrorNameEnum name;

  LoginConfigurationReadInvalidClientIdErrorMessageEnum message;

  LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginConfigurationReadInvalidClientIdError &&
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
  String toString() => 'LoginConfigurationReadInvalidClientIdError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [LoginConfigurationReadInvalidClientIdError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginConfigurationReadInvalidClientIdError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginConfigurationReadInvalidClientIdError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginConfigurationReadInvalidClientIdError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginConfigurationReadInvalidClientIdError(
        name: LoginConfigurationReadInvalidClientIdErrorNameEnum.fromJson(json[r'name'])!,
        message: LoginConfigurationReadInvalidClientIdErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<LoginConfigurationReadInvalidClientIdError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginConfigurationReadInvalidClientIdError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginConfigurationReadInvalidClientIdError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginConfigurationReadInvalidClientIdError> mapFromJson(dynamic json) {
    final map = <String, LoginConfigurationReadInvalidClientIdError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginConfigurationReadInvalidClientIdError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginConfigurationReadInvalidClientIdError-objects as value to a dart map
  static Map<String, List<LoginConfigurationReadInvalidClientIdError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginConfigurationReadInvalidClientIdError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginConfigurationReadInvalidClientIdError.listFromJson(entry.value, growable: growable,);
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


class LoginConfigurationReadInvalidClientIdErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginConfigurationReadInvalidClientIdErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const loginConfigurationReadInvalidClientIdError = LoginConfigurationReadInvalidClientIdErrorNameEnum._(r'LoginConfigurationReadInvalidClientIdError');

  /// List of all possible values in this [enum][LoginConfigurationReadInvalidClientIdErrorNameEnum].
  static const values = <LoginConfigurationReadInvalidClientIdErrorNameEnum>[
    loginConfigurationReadInvalidClientIdError,
  ];

  static LoginConfigurationReadInvalidClientIdErrorNameEnum? fromJson(dynamic value) => LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer().decode(value);

  static List<LoginConfigurationReadInvalidClientIdErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginConfigurationReadInvalidClientIdErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginConfigurationReadInvalidClientIdErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginConfigurationReadInvalidClientIdErrorNameEnum] to String,
/// and [decode] dynamic data back to [LoginConfigurationReadInvalidClientIdErrorNameEnum].
class LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer {
  factory LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer() => _instance ??= const LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer._();

  const LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer._();

  String encode(LoginConfigurationReadInvalidClientIdErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginConfigurationReadInvalidClientIdErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginConfigurationReadInvalidClientIdErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LoginConfigurationReadInvalidClientIdError': return LoginConfigurationReadInvalidClientIdErrorNameEnum.loginConfigurationReadInvalidClientIdError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer] instance.
  static LoginConfigurationReadInvalidClientIdErrorNameEnumTypeTransformer? _instance;
}



class LoginConfigurationReadInvalidClientIdErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginConfigurationReadInvalidClientIdErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const loginConfigurationReadInvalidClientIdError = LoginConfigurationReadInvalidClientIdErrorMessageEnum._(r'LoginConfigurationReadInvalidClientIdError');

  /// List of all possible values in this [enum][LoginConfigurationReadInvalidClientIdErrorMessageEnum].
  static const values = <LoginConfigurationReadInvalidClientIdErrorMessageEnum>[
    loginConfigurationReadInvalidClientIdError,
  ];

  static LoginConfigurationReadInvalidClientIdErrorMessageEnum? fromJson(dynamic value) => LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer().decode(value);

  static List<LoginConfigurationReadInvalidClientIdErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginConfigurationReadInvalidClientIdErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginConfigurationReadInvalidClientIdErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginConfigurationReadInvalidClientIdErrorMessageEnum] to String,
/// and [decode] dynamic data back to [LoginConfigurationReadInvalidClientIdErrorMessageEnum].
class LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer {
  factory LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer() => _instance ??= const LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer._();

  const LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer._();

  String encode(LoginConfigurationReadInvalidClientIdErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginConfigurationReadInvalidClientIdErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginConfigurationReadInvalidClientIdErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LoginConfigurationReadInvalidClientIdError': return LoginConfigurationReadInvalidClientIdErrorMessageEnum.loginConfigurationReadInvalidClientIdError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer] instance.
  static LoginConfigurationReadInvalidClientIdErrorMessageEnumTypeTransformer? _instance;
}



class LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum].
  static const values = <LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum>[
    number400,
  ];

  static LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum? fromJson(dynamic value) => LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum].
class LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer {
  factory LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer._();

  const LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer] instance.
  static LoginConfigurationReadInvalidClientIdErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


