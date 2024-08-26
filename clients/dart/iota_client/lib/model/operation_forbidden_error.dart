//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OperationForbiddenError {
  /// Returns a new [OperationForbiddenError] instance.
  OperationForbiddenError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  OperationForbiddenErrorNameEnum name;

  OperationForbiddenErrorMessageEnum message;

  OperationForbiddenErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OperationForbiddenError &&
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
  String toString() => 'OperationForbiddenError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [OperationForbiddenError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OperationForbiddenError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OperationForbiddenError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OperationForbiddenError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OperationForbiddenError(
        name: OperationForbiddenErrorNameEnum.fromJson(json[r'name'])!,
        message: OperationForbiddenErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: OperationForbiddenErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<OperationForbiddenError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperationForbiddenError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperationForbiddenError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OperationForbiddenError> mapFromJson(dynamic json) {
    final map = <String, OperationForbiddenError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OperationForbiddenError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OperationForbiddenError-objects as value to a dart map
  static Map<String, List<OperationForbiddenError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OperationForbiddenError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OperationForbiddenError.listFromJson(entry.value, growable: growable,);
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


class OperationForbiddenErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const OperationForbiddenErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const operationForbiddenError = OperationForbiddenErrorNameEnum._(r'OperationForbiddenError');

  /// List of all possible values in this [enum][OperationForbiddenErrorNameEnum].
  static const values = <OperationForbiddenErrorNameEnum>[
    operationForbiddenError,
  ];

  static OperationForbiddenErrorNameEnum? fromJson(dynamic value) => OperationForbiddenErrorNameEnumTypeTransformer().decode(value);

  static List<OperationForbiddenErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperationForbiddenErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperationForbiddenErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OperationForbiddenErrorNameEnum] to String,
/// and [decode] dynamic data back to [OperationForbiddenErrorNameEnum].
class OperationForbiddenErrorNameEnumTypeTransformer {
  factory OperationForbiddenErrorNameEnumTypeTransformer() => _instance ??= const OperationForbiddenErrorNameEnumTypeTransformer._();

  const OperationForbiddenErrorNameEnumTypeTransformer._();

  String encode(OperationForbiddenErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OperationForbiddenErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OperationForbiddenErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OperationForbiddenError': return OperationForbiddenErrorNameEnum.operationForbiddenError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OperationForbiddenErrorNameEnumTypeTransformer] instance.
  static OperationForbiddenErrorNameEnumTypeTransformer? _instance;
}



class OperationForbiddenErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const OperationForbiddenErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = OperationForbiddenErrorMessageEnum._(r'Operation forbidden: ${param}.');

  /// List of all possible values in this [enum][OperationForbiddenErrorMessageEnum].
  static const values = <OperationForbiddenErrorMessageEnum>[
    operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
  ];

  static OperationForbiddenErrorMessageEnum? fromJson(dynamic value) => OperationForbiddenErrorMessageEnumTypeTransformer().decode(value);

  static List<OperationForbiddenErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperationForbiddenErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperationForbiddenErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OperationForbiddenErrorMessageEnum] to String,
/// and [decode] dynamic data back to [OperationForbiddenErrorMessageEnum].
class OperationForbiddenErrorMessageEnumTypeTransformer {
  factory OperationForbiddenErrorMessageEnumTypeTransformer() => _instance ??= const OperationForbiddenErrorMessageEnumTypeTransformer._();

  const OperationForbiddenErrorMessageEnumTypeTransformer._();

  String encode(OperationForbiddenErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OperationForbiddenErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OperationForbiddenErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Operation forbidden: ${param}.': return OperationForbiddenErrorMessageEnum.operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OperationForbiddenErrorMessageEnumTypeTransformer] instance.
  static OperationForbiddenErrorMessageEnumTypeTransformer? _instance;
}



class OperationForbiddenErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const OperationForbiddenErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number403 = OperationForbiddenErrorHttpStatusCodeEnum._(403);

  /// List of all possible values in this [enum][OperationForbiddenErrorHttpStatusCodeEnum].
  static const values = <OperationForbiddenErrorHttpStatusCodeEnum>[
    number403,
  ];

  static OperationForbiddenErrorHttpStatusCodeEnum? fromJson(dynamic value) => OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<OperationForbiddenErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OperationForbiddenErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OperationForbiddenErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OperationForbiddenErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [OperationForbiddenErrorHttpStatusCodeEnum].
class OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer {
  factory OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  const OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(OperationForbiddenErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OperationForbiddenErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OperationForbiddenErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 403: return OperationForbiddenErrorHttpStatusCodeEnum.number403;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer] instance.
  static OperationForbiddenErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


