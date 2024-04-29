//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidCredentialRequestError {
  /// Returns a new [InvalidCredentialRequestError] instance.
  InvalidCredentialRequestError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidCredentialRequestErrorNameEnum name;

  InvalidCredentialRequestErrorMessageEnum message;

  InvalidCredentialRequestErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidCredentialRequestError &&
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
  String toString() => 'InvalidCredentialRequestError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidCredentialRequestError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidCredentialRequestError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidCredentialRequestError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidCredentialRequestError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidCredentialRequestError(
        name: InvalidCredentialRequestErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidCredentialRequestErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidCredentialRequestErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidCredentialRequestError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialRequestError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialRequestError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidCredentialRequestError> mapFromJson(dynamic json) {
    final map = <String, InvalidCredentialRequestError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidCredentialRequestError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidCredentialRequestError-objects as value to a dart map
  static Map<String, List<InvalidCredentialRequestError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidCredentialRequestError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidCredentialRequestError.listFromJson(entry.value, growable: growable,);
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


class InvalidCredentialRequestErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidCredentialRequestErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidCredentialRequestError = InvalidCredentialRequestErrorNameEnum._(r'InvalidCredentialRequestError');

  /// List of all possible values in this [enum][InvalidCredentialRequestErrorNameEnum].
  static const values = <InvalidCredentialRequestErrorNameEnum>[
    invalidCredentialRequestError,
  ];

  static InvalidCredentialRequestErrorNameEnum? fromJson(dynamic value) => InvalidCredentialRequestErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidCredentialRequestErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialRequestErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialRequestErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidCredentialRequestErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidCredentialRequestErrorNameEnum].
class InvalidCredentialRequestErrorNameEnumTypeTransformer {
  factory InvalidCredentialRequestErrorNameEnumTypeTransformer() => _instance ??= const InvalidCredentialRequestErrorNameEnumTypeTransformer._();

  const InvalidCredentialRequestErrorNameEnumTypeTransformer._();

  String encode(InvalidCredentialRequestErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidCredentialRequestErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidCredentialRequestErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidCredentialRequestError': return InvalidCredentialRequestErrorNameEnum.invalidCredentialRequestError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidCredentialRequestErrorNameEnumTypeTransformer] instance.
  static InvalidCredentialRequestErrorNameEnumTypeTransformer? _instance;
}



class InvalidCredentialRequestErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidCredentialRequestErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialRequestIsInvalid = InvalidCredentialRequestErrorMessageEnum._(r'Credential Request is invalid');

  /// List of all possible values in this [enum][InvalidCredentialRequestErrorMessageEnum].
  static const values = <InvalidCredentialRequestErrorMessageEnum>[
    credentialRequestIsInvalid,
  ];

  static InvalidCredentialRequestErrorMessageEnum? fromJson(dynamic value) => InvalidCredentialRequestErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidCredentialRequestErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialRequestErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialRequestErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidCredentialRequestErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidCredentialRequestErrorMessageEnum].
class InvalidCredentialRequestErrorMessageEnumTypeTransformer {
  factory InvalidCredentialRequestErrorMessageEnumTypeTransformer() => _instance ??= const InvalidCredentialRequestErrorMessageEnumTypeTransformer._();

  const InvalidCredentialRequestErrorMessageEnumTypeTransformer._();

  String encode(InvalidCredentialRequestErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidCredentialRequestErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidCredentialRequestErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Credential Request is invalid': return InvalidCredentialRequestErrorMessageEnum.credentialRequestIsInvalid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidCredentialRequestErrorMessageEnumTypeTransformer] instance.
  static InvalidCredentialRequestErrorMessageEnumTypeTransformer? _instance;
}



class InvalidCredentialRequestErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidCredentialRequestErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidCredentialRequestErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidCredentialRequestErrorHttpStatusCodeEnum].
  static const values = <InvalidCredentialRequestErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidCredentialRequestErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidCredentialRequestErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidCredentialRequestErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidCredentialRequestErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidCredentialRequestErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidCredentialRequestErrorHttpStatusCodeEnum].
class InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidCredentialRequestErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidCredentialRequestErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidCredentialRequestErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidCredentialRequestErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidCredentialRequestErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


