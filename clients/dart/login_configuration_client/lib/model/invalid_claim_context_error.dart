//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidClaimContextError {
  /// Returns a new [InvalidClaimContextError] instance.
  InvalidClaimContextError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidClaimContextErrorNameEnum name;

  InvalidClaimContextErrorMessageEnum message;

  InvalidClaimContextErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidClaimContextError &&
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
  String toString() => 'InvalidClaimContextError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidClaimContextError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidClaimContextError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidClaimContextError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidClaimContextError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidClaimContextError(
        name: InvalidClaimContextErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidClaimContextErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidClaimContextErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidClaimContextError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidClaimContextError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidClaimContextError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidClaimContextError> mapFromJson(dynamic json) {
    final map = <String, InvalidClaimContextError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidClaimContextError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidClaimContextError-objects as value to a dart map
  static Map<String, List<InvalidClaimContextError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidClaimContextError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidClaimContextError.listFromJson(entry.value, growable: growable,);
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


class InvalidClaimContextErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidClaimContextErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidClaimContextError = InvalidClaimContextErrorNameEnum._(r'InvalidClaimContextError');

  /// List of all possible values in this [enum][InvalidClaimContextErrorNameEnum].
  static const values = <InvalidClaimContextErrorNameEnum>[
    invalidClaimContextError,
  ];

  static InvalidClaimContextErrorNameEnum? fromJson(dynamic value) => InvalidClaimContextErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidClaimContextErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidClaimContextErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidClaimContextErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidClaimContextErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidClaimContextErrorNameEnum].
class InvalidClaimContextErrorNameEnumTypeTransformer {
  factory InvalidClaimContextErrorNameEnumTypeTransformer() => _instance ??= const InvalidClaimContextErrorNameEnumTypeTransformer._();

  const InvalidClaimContextErrorNameEnumTypeTransformer._();

  String encode(InvalidClaimContextErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidClaimContextErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidClaimContextErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidClaimContextError': return InvalidClaimContextErrorNameEnum.invalidClaimContextError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidClaimContextErrorNameEnumTypeTransformer] instance.
  static InvalidClaimContextErrorNameEnumTypeTransformer? _instance;
}



class InvalidClaimContextErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidClaimContextErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidClaimContext = InvalidClaimContextErrorMessageEnum._(r'Invalid Claim Context');

  /// List of all possible values in this [enum][InvalidClaimContextErrorMessageEnum].
  static const values = <InvalidClaimContextErrorMessageEnum>[
    invalidClaimContext,
  ];

  static InvalidClaimContextErrorMessageEnum? fromJson(dynamic value) => InvalidClaimContextErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidClaimContextErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidClaimContextErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidClaimContextErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidClaimContextErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidClaimContextErrorMessageEnum].
class InvalidClaimContextErrorMessageEnumTypeTransformer {
  factory InvalidClaimContextErrorMessageEnumTypeTransformer() => _instance ??= const InvalidClaimContextErrorMessageEnumTypeTransformer._();

  const InvalidClaimContextErrorMessageEnumTypeTransformer._();

  String encode(InvalidClaimContextErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidClaimContextErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidClaimContextErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Invalid Claim Context': return InvalidClaimContextErrorMessageEnum.invalidClaimContext;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidClaimContextErrorMessageEnumTypeTransformer] instance.
  static InvalidClaimContextErrorMessageEnumTypeTransformer? _instance;
}



class InvalidClaimContextErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidClaimContextErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidClaimContextErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidClaimContextErrorHttpStatusCodeEnum].
  static const values = <InvalidClaimContextErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidClaimContextErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidClaimContextErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidClaimContextErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidClaimContextErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidClaimContextErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidClaimContextErrorHttpStatusCodeEnum].
class InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidClaimContextErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidClaimContextErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidClaimContextErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidClaimContextErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidClaimContextErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


