//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExpiredCodeExceptionError {
  /// Returns a new [ExpiredCodeExceptionError] instance.
  ExpiredCodeExceptionError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ExpiredCodeExceptionErrorNameEnum name;

  ExpiredCodeExceptionErrorMessageEnum message;

  ExpiredCodeExceptionErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpiredCodeExceptionError &&
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
  String toString() => 'ExpiredCodeExceptionError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ExpiredCodeExceptionError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExpiredCodeExceptionError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExpiredCodeExceptionError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExpiredCodeExceptionError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExpiredCodeExceptionError(
        name: ExpiredCodeExceptionErrorNameEnum.fromJson(json[r'name'])!,
        message: ExpiredCodeExceptionErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ExpiredCodeExceptionErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ExpiredCodeExceptionError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpiredCodeExceptionError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpiredCodeExceptionError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExpiredCodeExceptionError> mapFromJson(dynamic json) {
    final map = <String, ExpiredCodeExceptionError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpiredCodeExceptionError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExpiredCodeExceptionError-objects as value to a dart map
  static Map<String, List<ExpiredCodeExceptionError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExpiredCodeExceptionError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExpiredCodeExceptionError.listFromJson(entry.value, growable: growable,);
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


class ExpiredCodeExceptionErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ExpiredCodeExceptionErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const expiredCodeExceptionError = ExpiredCodeExceptionErrorNameEnum._(r'ExpiredCodeExceptionError');

  /// List of all possible values in this [enum][ExpiredCodeExceptionErrorNameEnum].
  static const values = <ExpiredCodeExceptionErrorNameEnum>[
    expiredCodeExceptionError,
  ];

  static ExpiredCodeExceptionErrorNameEnum? fromJson(dynamic value) => ExpiredCodeExceptionErrorNameEnumTypeTransformer().decode(value);

  static List<ExpiredCodeExceptionErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpiredCodeExceptionErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpiredCodeExceptionErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExpiredCodeExceptionErrorNameEnum] to String,
/// and [decode] dynamic data back to [ExpiredCodeExceptionErrorNameEnum].
class ExpiredCodeExceptionErrorNameEnumTypeTransformer {
  factory ExpiredCodeExceptionErrorNameEnumTypeTransformer() => _instance ??= const ExpiredCodeExceptionErrorNameEnumTypeTransformer._();

  const ExpiredCodeExceptionErrorNameEnumTypeTransformer._();

  String encode(ExpiredCodeExceptionErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExpiredCodeExceptionErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExpiredCodeExceptionErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ExpiredCodeExceptionError': return ExpiredCodeExceptionErrorNameEnum.expiredCodeExceptionError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExpiredCodeExceptionErrorNameEnumTypeTransformer] instance.
  static ExpiredCodeExceptionErrorNameEnumTypeTransformer? _instance;
}



class ExpiredCodeExceptionErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ExpiredCodeExceptionErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const codeHasExpired = ExpiredCodeExceptionErrorMessageEnum._(r'Code has expired');

  /// List of all possible values in this [enum][ExpiredCodeExceptionErrorMessageEnum].
  static const values = <ExpiredCodeExceptionErrorMessageEnum>[
    codeHasExpired,
  ];

  static ExpiredCodeExceptionErrorMessageEnum? fromJson(dynamic value) => ExpiredCodeExceptionErrorMessageEnumTypeTransformer().decode(value);

  static List<ExpiredCodeExceptionErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpiredCodeExceptionErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpiredCodeExceptionErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExpiredCodeExceptionErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ExpiredCodeExceptionErrorMessageEnum].
class ExpiredCodeExceptionErrorMessageEnumTypeTransformer {
  factory ExpiredCodeExceptionErrorMessageEnumTypeTransformer() => _instance ??= const ExpiredCodeExceptionErrorMessageEnumTypeTransformer._();

  const ExpiredCodeExceptionErrorMessageEnumTypeTransformer._();

  String encode(ExpiredCodeExceptionErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExpiredCodeExceptionErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExpiredCodeExceptionErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Code has expired': return ExpiredCodeExceptionErrorMessageEnum.codeHasExpired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExpiredCodeExceptionErrorMessageEnumTypeTransformer] instance.
  static ExpiredCodeExceptionErrorMessageEnumTypeTransformer? _instance;
}



class ExpiredCodeExceptionErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ExpiredCodeExceptionErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = ExpiredCodeExceptionErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][ExpiredCodeExceptionErrorHttpStatusCodeEnum].
  static const values = <ExpiredCodeExceptionErrorHttpStatusCodeEnum>[
    number400,
  ];

  static ExpiredCodeExceptionErrorHttpStatusCodeEnum? fromJson(dynamic value) => ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ExpiredCodeExceptionErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpiredCodeExceptionErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpiredCodeExceptionErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExpiredCodeExceptionErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ExpiredCodeExceptionErrorHttpStatusCodeEnum].
class ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer {
  factory ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  const ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ExpiredCodeExceptionErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExpiredCodeExceptionErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExpiredCodeExceptionErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return ExpiredCodeExceptionErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ExpiredCodeExceptionErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


