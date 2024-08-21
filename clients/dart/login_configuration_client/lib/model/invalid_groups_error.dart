//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidGroupsError {
  /// Returns a new [InvalidGroupsError] instance.
  InvalidGroupsError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidGroupsErrorNameEnum name;

  InvalidGroupsErrorMessageEnum message;

  InvalidGroupsErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidGroupsError &&
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
  String toString() => 'InvalidGroupsError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidGroupsError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidGroupsError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidGroupsError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidGroupsError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidGroupsError(
        name: InvalidGroupsErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidGroupsErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidGroupsErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidGroupsError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidGroupsError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidGroupsError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidGroupsError> mapFromJson(dynamic json) {
    final map = <String, InvalidGroupsError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidGroupsError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidGroupsError-objects as value to a dart map
  static Map<String, List<InvalidGroupsError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidGroupsError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidGroupsError.listFromJson(entry.value, growable: growable,);
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


class InvalidGroupsErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidGroupsErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidGroupsError = InvalidGroupsErrorNameEnum._(r'InvalidGroupsError');

  /// List of all possible values in this [enum][InvalidGroupsErrorNameEnum].
  static const values = <InvalidGroupsErrorNameEnum>[
    invalidGroupsError,
  ];

  static InvalidGroupsErrorNameEnum? fromJson(dynamic value) => InvalidGroupsErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidGroupsErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidGroupsErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidGroupsErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidGroupsErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidGroupsErrorNameEnum].
class InvalidGroupsErrorNameEnumTypeTransformer {
  factory InvalidGroupsErrorNameEnumTypeTransformer() => _instance ??= const InvalidGroupsErrorNameEnumTypeTransformer._();

  const InvalidGroupsErrorNameEnumTypeTransformer._();

  String encode(InvalidGroupsErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidGroupsErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidGroupsErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidGroupsError': return InvalidGroupsErrorNameEnum.invalidGroupsError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidGroupsErrorNameEnumTypeTransformer] instance.
  static InvalidGroupsErrorNameEnumTypeTransformer? _instance;
}



class InvalidGroupsErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidGroupsErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidGroupsNames = InvalidGroupsErrorMessageEnum._(r'Invalid groups names');

  /// List of all possible values in this [enum][InvalidGroupsErrorMessageEnum].
  static const values = <InvalidGroupsErrorMessageEnum>[
    invalidGroupsNames,
  ];

  static InvalidGroupsErrorMessageEnum? fromJson(dynamic value) => InvalidGroupsErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidGroupsErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidGroupsErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidGroupsErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidGroupsErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidGroupsErrorMessageEnum].
class InvalidGroupsErrorMessageEnumTypeTransformer {
  factory InvalidGroupsErrorMessageEnumTypeTransformer() => _instance ??= const InvalidGroupsErrorMessageEnumTypeTransformer._();

  const InvalidGroupsErrorMessageEnumTypeTransformer._();

  String encode(InvalidGroupsErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidGroupsErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidGroupsErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Invalid groups names': return InvalidGroupsErrorMessageEnum.invalidGroupsNames;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidGroupsErrorMessageEnumTypeTransformer] instance.
  static InvalidGroupsErrorMessageEnumTypeTransformer? _instance;
}



class InvalidGroupsErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidGroupsErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidGroupsErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidGroupsErrorHttpStatusCodeEnum].
  static const values = <InvalidGroupsErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidGroupsErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidGroupsErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidGroupsErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidGroupsErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidGroupsErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidGroupsErrorHttpStatusCodeEnum].
class InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidGroupsErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidGroupsErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidGroupsErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidGroupsErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidGroupsErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


