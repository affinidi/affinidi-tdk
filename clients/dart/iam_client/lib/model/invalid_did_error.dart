//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidDIDError {
  /// Returns a new [InvalidDIDError] instance.
  InvalidDIDError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidDIDErrorNameEnum name;

  InvalidDIDErrorMessageEnum message;

  InvalidDIDErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidDIDError &&
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
  String toString() => 'InvalidDIDError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidDIDError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidDIDError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidDIDError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidDIDError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidDIDError(
        name: InvalidDIDErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidDIDErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidDIDErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidDIDError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDIDError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDIDError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidDIDError> mapFromJson(dynamic json) {
    final map = <String, InvalidDIDError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidDIDError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidDIDError-objects as value to a dart map
  static Map<String, List<InvalidDIDError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidDIDError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidDIDError.listFromJson(entry.value, growable: growable,);
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


class InvalidDIDErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDIDErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidDIDError = InvalidDIDErrorNameEnum._(r'InvalidDIDError');

  /// List of all possible values in this [enum][InvalidDIDErrorNameEnum].
  static const values = <InvalidDIDErrorNameEnum>[
    invalidDIDError,
  ];

  static InvalidDIDErrorNameEnum? fromJson(dynamic value) => InvalidDIDErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidDIDErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDIDErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDIDErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDIDErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidDIDErrorNameEnum].
class InvalidDIDErrorNameEnumTypeTransformer {
  factory InvalidDIDErrorNameEnumTypeTransformer() => _instance ??= const InvalidDIDErrorNameEnumTypeTransformer._();

  const InvalidDIDErrorNameEnumTypeTransformer._();

  String encode(InvalidDIDErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDIDErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDIDErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidDIDError': return InvalidDIDErrorNameEnum.invalidDIDError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDIDErrorNameEnumTypeTransformer] instance.
  static InvalidDIDErrorNameEnumTypeTransformer? _instance;
}



class InvalidDIDErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDIDErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unableToResolveDIDMethodPeriodInvalidPublicKey = InvalidDIDErrorMessageEnum._(r'Unable to resolve DID method. Invalid public key');

  /// List of all possible values in this [enum][InvalidDIDErrorMessageEnum].
  static const values = <InvalidDIDErrorMessageEnum>[
    unableToResolveDIDMethodPeriodInvalidPublicKey,
  ];

  static InvalidDIDErrorMessageEnum? fromJson(dynamic value) => InvalidDIDErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidDIDErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDIDErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDIDErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDIDErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidDIDErrorMessageEnum].
class InvalidDIDErrorMessageEnumTypeTransformer {
  factory InvalidDIDErrorMessageEnumTypeTransformer() => _instance ??= const InvalidDIDErrorMessageEnumTypeTransformer._();

  const InvalidDIDErrorMessageEnumTypeTransformer._();

  String encode(InvalidDIDErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDIDErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDIDErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unable to resolve DID method. Invalid public key': return InvalidDIDErrorMessageEnum.unableToResolveDIDMethodPeriodInvalidPublicKey;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDIDErrorMessageEnumTypeTransformer] instance.
  static InvalidDIDErrorMessageEnumTypeTransformer? _instance;
}



class InvalidDIDErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidDIDErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidDIDErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidDIDErrorHttpStatusCodeEnum].
  static const values = <InvalidDIDErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidDIDErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidDIDErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidDIDErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidDIDErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidDIDErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidDIDErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidDIDErrorHttpStatusCodeEnum].
class InvalidDIDErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidDIDErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidDIDErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidDIDErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidDIDErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidDIDErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidDIDErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidDIDErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidDIDErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidDIDErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


