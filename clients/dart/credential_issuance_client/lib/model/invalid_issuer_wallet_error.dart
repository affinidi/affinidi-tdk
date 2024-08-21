//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidIssuerWalletError {
  /// Returns a new [InvalidIssuerWalletError] instance.
  InvalidIssuerWalletError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidIssuerWalletErrorNameEnum name;

  InvalidIssuerWalletErrorMessageEnum message;

  InvalidIssuerWalletErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidIssuerWalletError &&
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
  String toString() => 'InvalidIssuerWalletError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidIssuerWalletError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidIssuerWalletError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidIssuerWalletError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidIssuerWalletError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidIssuerWalletError(
        name: InvalidIssuerWalletErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidIssuerWalletErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidIssuerWalletErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidIssuerWalletError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidIssuerWalletError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidIssuerWalletError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidIssuerWalletError> mapFromJson(dynamic json) {
    final map = <String, InvalidIssuerWalletError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidIssuerWalletError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidIssuerWalletError-objects as value to a dart map
  static Map<String, List<InvalidIssuerWalletError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidIssuerWalletError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidIssuerWalletError.listFromJson(entry.value, growable: growable,);
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


class InvalidIssuerWalletErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidIssuerWalletErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidIssuerWalletError = InvalidIssuerWalletErrorNameEnum._(r'InvalidIssuerWalletError');

  /// List of all possible values in this [enum][InvalidIssuerWalletErrorNameEnum].
  static const values = <InvalidIssuerWalletErrorNameEnum>[
    invalidIssuerWalletError,
  ];

  static InvalidIssuerWalletErrorNameEnum? fromJson(dynamic value) => InvalidIssuerWalletErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidIssuerWalletErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidIssuerWalletErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidIssuerWalletErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidIssuerWalletErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidIssuerWalletErrorNameEnum].
class InvalidIssuerWalletErrorNameEnumTypeTransformer {
  factory InvalidIssuerWalletErrorNameEnumTypeTransformer() => _instance ??= const InvalidIssuerWalletErrorNameEnumTypeTransformer._();

  const InvalidIssuerWalletErrorNameEnumTypeTransformer._();

  String encode(InvalidIssuerWalletErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidIssuerWalletErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidIssuerWalletErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidIssuerWalletError': return InvalidIssuerWalletErrorNameEnum.invalidIssuerWalletError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidIssuerWalletErrorNameEnumTypeTransformer] instance.
  static InvalidIssuerWalletErrorNameEnumTypeTransformer? _instance;
}



class InvalidIssuerWalletErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidIssuerWalletErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const issuerWalletIdIsInvalid = InvalidIssuerWalletErrorMessageEnum._(r'issuer wallet id is invalid');

  /// List of all possible values in this [enum][InvalidIssuerWalletErrorMessageEnum].
  static const values = <InvalidIssuerWalletErrorMessageEnum>[
    issuerWalletIdIsInvalid,
  ];

  static InvalidIssuerWalletErrorMessageEnum? fromJson(dynamic value) => InvalidIssuerWalletErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidIssuerWalletErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidIssuerWalletErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidIssuerWalletErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidIssuerWalletErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidIssuerWalletErrorMessageEnum].
class InvalidIssuerWalletErrorMessageEnumTypeTransformer {
  factory InvalidIssuerWalletErrorMessageEnumTypeTransformer() => _instance ??= const InvalidIssuerWalletErrorMessageEnumTypeTransformer._();

  const InvalidIssuerWalletErrorMessageEnumTypeTransformer._();

  String encode(InvalidIssuerWalletErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidIssuerWalletErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidIssuerWalletErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'issuer wallet id is invalid': return InvalidIssuerWalletErrorMessageEnum.issuerWalletIdIsInvalid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidIssuerWalletErrorMessageEnumTypeTransformer] instance.
  static InvalidIssuerWalletErrorMessageEnumTypeTransformer? _instance;
}



class InvalidIssuerWalletErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidIssuerWalletErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidIssuerWalletErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidIssuerWalletErrorHttpStatusCodeEnum].
  static const values = <InvalidIssuerWalletErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidIssuerWalletErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidIssuerWalletErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidIssuerWalletErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidIssuerWalletErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidIssuerWalletErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidIssuerWalletErrorHttpStatusCodeEnum].
class InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidIssuerWalletErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidIssuerWalletErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidIssuerWalletErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidIssuerWalletErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidIssuerWalletErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


