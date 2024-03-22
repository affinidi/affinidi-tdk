//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LoginSessionAcceptResponse400Response {
  /// Returns a new [LoginSessionAcceptResponse400Response] instance.
  LoginSessionAcceptResponse400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  LoginSessionAcceptResponse400ResponseNameEnum name;

  LoginSessionAcceptResponse400ResponseMessageEnum message;

  LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSessionAcceptResponse400Response &&
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
  String toString() => 'LoginSessionAcceptResponse400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [LoginSessionAcceptResponse400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSessionAcceptResponse400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LoginSessionAcceptResponse400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LoginSessionAcceptResponse400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LoginSessionAcceptResponse400Response(
        name: LoginSessionAcceptResponse400ResponseNameEnum.fromJson(json[r'name'])!,
        message: LoginSessionAcceptResponse400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<LoginSessionAcceptResponse400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionAcceptResponse400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionAcceptResponse400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSessionAcceptResponse400Response> mapFromJson(dynamic json) {
    final map = <String, LoginSessionAcceptResponse400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSessionAcceptResponse400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSessionAcceptResponse400Response-objects as value to a dart map
  static Map<String, List<LoginSessionAcceptResponse400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSessionAcceptResponse400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSessionAcceptResponse400Response.listFromJson(entry.value, growable: growable,);
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


class LoginSessionAcceptResponse400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginSessionAcceptResponse400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vPTokenValidationError = LoginSessionAcceptResponse400ResponseNameEnum._(r'VPTokenValidationError');

  /// List of all possible values in this [enum][LoginSessionAcceptResponse400ResponseNameEnum].
  static const values = <LoginSessionAcceptResponse400ResponseNameEnum>[
    vPTokenValidationError,
  ];

  static LoginSessionAcceptResponse400ResponseNameEnum? fromJson(dynamic value) => LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer().decode(value);

  static List<LoginSessionAcceptResponse400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionAcceptResponse400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionAcceptResponse400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginSessionAcceptResponse400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [LoginSessionAcceptResponse400ResponseNameEnum].
class LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer {
  factory LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer() => _instance ??= const LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer._();

  const LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer._();

  String encode(LoginSessionAcceptResponse400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginSessionAcceptResponse400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginSessionAcceptResponse400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VPTokenValidationError': return LoginSessionAcceptResponse400ResponseNameEnum.vPTokenValidationError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer] instance.
  static LoginSessionAcceptResponse400ResponseNameEnumTypeTransformer? _instance;
}



class LoginSessionAcceptResponse400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginSessionAcceptResponse400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vPTokenValidationEndedWithAnError = LoginSessionAcceptResponse400ResponseMessageEnum._(r'VP token validation ended with an error');

  /// List of all possible values in this [enum][LoginSessionAcceptResponse400ResponseMessageEnum].
  static const values = <LoginSessionAcceptResponse400ResponseMessageEnum>[
    vPTokenValidationEndedWithAnError,
  ];

  static LoginSessionAcceptResponse400ResponseMessageEnum? fromJson(dynamic value) => LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer().decode(value);

  static List<LoginSessionAcceptResponse400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionAcceptResponse400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionAcceptResponse400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginSessionAcceptResponse400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [LoginSessionAcceptResponse400ResponseMessageEnum].
class LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer {
  factory LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer() => _instance ??= const LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer._();

  const LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer._();

  String encode(LoginSessionAcceptResponse400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginSessionAcceptResponse400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginSessionAcceptResponse400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VP token validation ended with an error': return LoginSessionAcceptResponse400ResponseMessageEnum.vPTokenValidationEndedWithAnError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer] instance.
  static LoginSessionAcceptResponse400ResponseMessageEnumTypeTransformer? _instance;
}



class LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum].
  static const values = <LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum].
class LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer {
  factory LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer._();

  const LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return LoginSessionAcceptResponse400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static LoginSessionAcceptResponse400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


