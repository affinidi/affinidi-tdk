//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidCredentialTypeError {
  /// Returns a new [InvalidCredentialTypeError] instance.
  InvalidCredentialTypeError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidCredentialTypeErrorNameEnum name;

  InvalidCredentialTypeErrorMessageEnum message;

  InvalidCredentialTypeErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidCredentialTypeError &&
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
  String toString() => 'InvalidCredentialTypeError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidCredentialTypeError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidCredentialTypeError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidCredentialTypeError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidCredentialTypeError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidCredentialTypeError(
        name: InvalidCredentialTypeErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidCredentialTypeErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidCredentialTypeErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidCredentialTypeError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialTypeError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialTypeError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidCredentialTypeError> mapFromJson(dynamic json) {
    final map = <String, InvalidCredentialTypeError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidCredentialTypeError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidCredentialTypeError-objects as value to a dart map
  static Map<String, List<InvalidCredentialTypeError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidCredentialTypeError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidCredentialTypeError.listFromJson(entry.value, growable: growable,);
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


class InvalidCredentialTypeErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidCredentialTypeErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidCredentialTypeError = InvalidCredentialTypeErrorNameEnum._(r'InvalidCredentialTypeError');

  /// List of all possible values in this [enum][InvalidCredentialTypeErrorNameEnum].
  static const values = <InvalidCredentialTypeErrorNameEnum>[
    invalidCredentialTypeError,
  ];

  static InvalidCredentialTypeErrorNameEnum? fromJson(dynamic value) => InvalidCredentialTypeErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidCredentialTypeErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialTypeErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialTypeErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidCredentialTypeErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidCredentialTypeErrorNameEnum].
class InvalidCredentialTypeErrorNameEnumTypeTransformer {
  factory InvalidCredentialTypeErrorNameEnumTypeTransformer() => _instance ??= const InvalidCredentialTypeErrorNameEnumTypeTransformer._();

  const InvalidCredentialTypeErrorNameEnumTypeTransformer._();

  String encode(InvalidCredentialTypeErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidCredentialTypeErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidCredentialTypeErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidCredentialTypeError': return InvalidCredentialTypeErrorNameEnum.invalidCredentialTypeError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidCredentialTypeErrorNameEnumTypeTransformer] instance.
  static InvalidCredentialTypeErrorNameEnumTypeTransformer? _instance;
}



class InvalidCredentialTypeErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidCredentialTypeErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const theRequestedCredentialTypeIsNotSupported = InvalidCredentialTypeErrorMessageEnum._(r'The requested credential type is not supported');

  /// List of all possible values in this [enum][InvalidCredentialTypeErrorMessageEnum].
  static const values = <InvalidCredentialTypeErrorMessageEnum>[
    theRequestedCredentialTypeIsNotSupported,
  ];

  static InvalidCredentialTypeErrorMessageEnum? fromJson(dynamic value) => InvalidCredentialTypeErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidCredentialTypeErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialTypeErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialTypeErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidCredentialTypeErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidCredentialTypeErrorMessageEnum].
class InvalidCredentialTypeErrorMessageEnumTypeTransformer {
  factory InvalidCredentialTypeErrorMessageEnumTypeTransformer() => _instance ??= const InvalidCredentialTypeErrorMessageEnumTypeTransformer._();

  const InvalidCredentialTypeErrorMessageEnumTypeTransformer._();

  String encode(InvalidCredentialTypeErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidCredentialTypeErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidCredentialTypeErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'The requested credential type is not supported': return InvalidCredentialTypeErrorMessageEnum.theRequestedCredentialTypeIsNotSupported;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidCredentialTypeErrorMessageEnumTypeTransformer] instance.
  static InvalidCredentialTypeErrorMessageEnumTypeTransformer? _instance;
}



class InvalidCredentialTypeErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidCredentialTypeErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidCredentialTypeErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidCredentialTypeErrorHttpStatusCodeEnum].
  static const values = <InvalidCredentialTypeErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidCredentialTypeErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidCredentialTypeErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialTypeErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialTypeErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidCredentialTypeErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidCredentialTypeErrorHttpStatusCodeEnum].
class InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidCredentialTypeErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidCredentialTypeErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidCredentialTypeErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidCredentialTypeErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidCredentialTypeErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


