//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnexpectedServiceError {
  /// Returns a new [UnexpectedServiceError] instance.
  UnexpectedServiceError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  UnexpectedServiceErrorNameEnum name;

  UnexpectedServiceErrorMessageEnum message;

  UnexpectedServiceErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnexpectedServiceError &&
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
  String toString() => 'UnexpectedServiceError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [UnexpectedServiceError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnexpectedServiceError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnexpectedServiceError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnexpectedServiceError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnexpectedServiceError(
        name: UnexpectedServiceErrorNameEnum.fromJson(json[r'name'])!,
        message: UnexpectedServiceErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: UnexpectedServiceErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<UnexpectedServiceError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedServiceError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedServiceError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnexpectedServiceError> mapFromJson(dynamic json) {
    final map = <String, UnexpectedServiceError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnexpectedServiceError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnexpectedServiceError-objects as value to a dart map
  static Map<String, List<UnexpectedServiceError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnexpectedServiceError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnexpectedServiceError.listFromJson(entry.value, growable: growable,);
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


class UnexpectedServiceErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const UnexpectedServiceErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unexpectedServiceError = UnexpectedServiceErrorNameEnum._(r'UnexpectedServiceError');

  /// List of all possible values in this [enum][UnexpectedServiceErrorNameEnum].
  static const values = <UnexpectedServiceErrorNameEnum>[
    unexpectedServiceError,
  ];

  static UnexpectedServiceErrorNameEnum? fromJson(dynamic value) => UnexpectedServiceErrorNameEnumTypeTransformer().decode(value);

  static List<UnexpectedServiceErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedServiceErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedServiceErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnexpectedServiceErrorNameEnum] to String,
/// and [decode] dynamic data back to [UnexpectedServiceErrorNameEnum].
class UnexpectedServiceErrorNameEnumTypeTransformer {
  factory UnexpectedServiceErrorNameEnumTypeTransformer() => _instance ??= const UnexpectedServiceErrorNameEnumTypeTransformer._();

  const UnexpectedServiceErrorNameEnumTypeTransformer._();

  String encode(UnexpectedServiceErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnexpectedServiceErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnexpectedServiceErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UnexpectedServiceError': return UnexpectedServiceErrorNameEnum.unexpectedServiceError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnexpectedServiceErrorNameEnumTypeTransformer] instance.
  static UnexpectedServiceErrorNameEnumTypeTransformer? _instance;
}



class UnexpectedServiceErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const UnexpectedServiceErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unexpectedErrorOccurredPeriod = UnexpectedServiceErrorMessageEnum._(r'Unexpected error occurred.');

  /// List of all possible values in this [enum][UnexpectedServiceErrorMessageEnum].
  static const values = <UnexpectedServiceErrorMessageEnum>[
    unexpectedErrorOccurredPeriod,
  ];

  static UnexpectedServiceErrorMessageEnum? fromJson(dynamic value) => UnexpectedServiceErrorMessageEnumTypeTransformer().decode(value);

  static List<UnexpectedServiceErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedServiceErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedServiceErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnexpectedServiceErrorMessageEnum] to String,
/// and [decode] dynamic data back to [UnexpectedServiceErrorMessageEnum].
class UnexpectedServiceErrorMessageEnumTypeTransformer {
  factory UnexpectedServiceErrorMessageEnumTypeTransformer() => _instance ??= const UnexpectedServiceErrorMessageEnumTypeTransformer._();

  const UnexpectedServiceErrorMessageEnumTypeTransformer._();

  String encode(UnexpectedServiceErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnexpectedServiceErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnexpectedServiceErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unexpected error occurred.': return UnexpectedServiceErrorMessageEnum.unexpectedErrorOccurredPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnexpectedServiceErrorMessageEnumTypeTransformer] instance.
  static UnexpectedServiceErrorMessageEnumTypeTransformer? _instance;
}



class UnexpectedServiceErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const UnexpectedServiceErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number500 = UnexpectedServiceErrorHttpStatusCodeEnum._(500);

  /// List of all possible values in this [enum][UnexpectedServiceErrorHttpStatusCodeEnum].
  static const values = <UnexpectedServiceErrorHttpStatusCodeEnum>[
    number500,
  ];

  static UnexpectedServiceErrorHttpStatusCodeEnum? fromJson(dynamic value) => UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<UnexpectedServiceErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedServiceErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedServiceErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnexpectedServiceErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [UnexpectedServiceErrorHttpStatusCodeEnum].
class UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer {
  factory UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer._();

  const UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(UnexpectedServiceErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnexpectedServiceErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnexpectedServiceErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 500: return UnexpectedServiceErrorHttpStatusCodeEnum.number500;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer] instance.
  static UnexpectedServiceErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


