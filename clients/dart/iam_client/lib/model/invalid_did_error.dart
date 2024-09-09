//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidDidError {
  /// Returns a new [InvalidDidError] instance.
  InvalidDidError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidDidErrorNameEnum name;

  InvalidDidErrorMessageEnum message;

  InvalidDidErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidDidError &&
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
  String toString() => 'InvalidDidError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidDidError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidDidError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidDidError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidDidError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidDidError(
        name: InvalidDidErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidDidErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidDidErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidDidError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidDidError> mapFromJson(dynamic json) {
    final map = <String, InvalidDidError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidDidError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidDidError-objects as value to a dart map
  static Map<String, List<InvalidDidError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidDidError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidDidError.listFromJson(entry.value, growable: growable,);
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


class InvalidDidErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDidErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidDidError = InvalidDidErrorNameEnum._(r'InvalidDidError');

  /// List of all possible values in this [enum][InvalidDidErrorNameEnum].
  static const values = <InvalidDidErrorNameEnum>[
    invalidDidError,
  ];

  static InvalidDidErrorNameEnum? fromJson(dynamic value) => InvalidDidErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidDidErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDidErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidDidErrorNameEnum].
class InvalidDidErrorNameEnumTypeTransformer {
  factory InvalidDidErrorNameEnumTypeTransformer() => _instance ??= const InvalidDidErrorNameEnumTypeTransformer._();

  const InvalidDidErrorNameEnumTypeTransformer._();

  String encode(InvalidDidErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDidErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDidErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidDidError': return InvalidDidErrorNameEnum.invalidDidError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDidErrorNameEnumTypeTransformer] instance.
  static InvalidDidErrorNameEnumTypeTransformer? _instance;
}



class InvalidDidErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDidErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unableToResolveDIDMethodPeriodInvalidPublicKey = InvalidDidErrorMessageEnum._(r'Unable to resolve DID method. Invalid public key');

  /// List of all possible values in this [enum][InvalidDidErrorMessageEnum].
  static const values = <InvalidDidErrorMessageEnum>[
    unableToResolveDIDMethodPeriodInvalidPublicKey,
  ];

  static InvalidDidErrorMessageEnum? fromJson(dynamic value) => InvalidDidErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidDidErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDidErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidDidErrorMessageEnum].
class InvalidDidErrorMessageEnumTypeTransformer {
  factory InvalidDidErrorMessageEnumTypeTransformer() => _instance ??= const InvalidDidErrorMessageEnumTypeTransformer._();

  const InvalidDidErrorMessageEnumTypeTransformer._();

  String encode(InvalidDidErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDidErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDidErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unable to resolve DID method. Invalid public key': return InvalidDidErrorMessageEnum.unableToResolveDIDMethodPeriodInvalidPublicKey;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDidErrorMessageEnumTypeTransformer] instance.
  static InvalidDidErrorMessageEnumTypeTransformer? _instance;
}



class InvalidDidErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDidErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidDidErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidDidErrorHttpStatusCodeEnum].
  static const values = <InvalidDidErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidDidErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidDidErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidDidErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDidErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDidErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDidErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidDidErrorHttpStatusCodeEnum].
class InvalidDidErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidDidErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidDidErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidDidErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidDidErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDidErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDidErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidDidErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDidErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidDidErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


