//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SigningFailedError {
  /// Returns a new [SigningFailedError] instance.
  SigningFailedError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  SigningFailedErrorNameEnum name;

  SigningFailedErrorMessageEnum message;

  SigningFailedErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SigningFailedError &&
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
  String toString() => 'SigningFailedError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [SigningFailedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SigningFailedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SigningFailedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SigningFailedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SigningFailedError(
        name: SigningFailedErrorNameEnum.fromJson(json[r'name'])!,
        message: SigningFailedErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: SigningFailedErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<SigningFailedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigningFailedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigningFailedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SigningFailedError> mapFromJson(dynamic json) {
    final map = <String, SigningFailedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SigningFailedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SigningFailedError-objects as value to a dart map
  static Map<String, List<SigningFailedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SigningFailedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SigningFailedError.listFromJson(entry.value, growable: growable,);
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


class SigningFailedErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const SigningFailedErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const signingFailedError = SigningFailedErrorNameEnum._(r'SigningFailedError');

  /// List of all possible values in this [enum][SigningFailedErrorNameEnum].
  static const values = <SigningFailedErrorNameEnum>[
    signingFailedError,
  ];

  static SigningFailedErrorNameEnum? fromJson(dynamic value) => SigningFailedErrorNameEnumTypeTransformer().decode(value);

  static List<SigningFailedErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigningFailedErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigningFailedErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SigningFailedErrorNameEnum] to String,
/// and [decode] dynamic data back to [SigningFailedErrorNameEnum].
class SigningFailedErrorNameEnumTypeTransformer {
  factory SigningFailedErrorNameEnumTypeTransformer() => _instance ??= const SigningFailedErrorNameEnumTypeTransformer._();

  const SigningFailedErrorNameEnumTypeTransformer._();

  String encode(SigningFailedErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SigningFailedErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SigningFailedErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SigningFailedError': return SigningFailedErrorNameEnum.signingFailedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SigningFailedErrorNameEnumTypeTransformer] instance.
  static SigningFailedErrorNameEnumTypeTransformer? _instance;
}



class SigningFailedErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const SigningFailedErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const signingFailedPeriod = SigningFailedErrorMessageEnum._(r'Signing failed.');

  /// List of all possible values in this [enum][SigningFailedErrorMessageEnum].
  static const values = <SigningFailedErrorMessageEnum>[
    signingFailedPeriod,
  ];

  static SigningFailedErrorMessageEnum? fromJson(dynamic value) => SigningFailedErrorMessageEnumTypeTransformer().decode(value);

  static List<SigningFailedErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigningFailedErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigningFailedErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SigningFailedErrorMessageEnum] to String,
/// and [decode] dynamic data back to [SigningFailedErrorMessageEnum].
class SigningFailedErrorMessageEnumTypeTransformer {
  factory SigningFailedErrorMessageEnumTypeTransformer() => _instance ??= const SigningFailedErrorMessageEnumTypeTransformer._();

  const SigningFailedErrorMessageEnumTypeTransformer._();

  String encode(SigningFailedErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SigningFailedErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SigningFailedErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Signing failed.': return SigningFailedErrorMessageEnum.signingFailedPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SigningFailedErrorMessageEnumTypeTransformer] instance.
  static SigningFailedErrorMessageEnumTypeTransformer? _instance;
}



class SigningFailedErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const SigningFailedErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = SigningFailedErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][SigningFailedErrorHttpStatusCodeEnum].
  static const values = <SigningFailedErrorHttpStatusCodeEnum>[
    number400,
  ];

  static SigningFailedErrorHttpStatusCodeEnum? fromJson(dynamic value) => SigningFailedErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<SigningFailedErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SigningFailedErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SigningFailedErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SigningFailedErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [SigningFailedErrorHttpStatusCodeEnum].
class SigningFailedErrorHttpStatusCodeEnumTypeTransformer {
  factory SigningFailedErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const SigningFailedErrorHttpStatusCodeEnumTypeTransformer._();

  const SigningFailedErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(SigningFailedErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SigningFailedErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SigningFailedErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return SigningFailedErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SigningFailedErrorHttpStatusCodeEnumTypeTransformer] instance.
  static SigningFailedErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


