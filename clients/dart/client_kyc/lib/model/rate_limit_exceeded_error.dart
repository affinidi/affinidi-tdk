//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RateLimitExceededError {
  /// Returns a new [RateLimitExceededError] instance.
  RateLimitExceededError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  RateLimitExceededErrorNameEnum name;

  RateLimitExceededErrorMessageEnum message;

  RateLimitExceededErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RateLimitExceededError &&
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
  String toString() => 'RateLimitExceededError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [RateLimitExceededError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RateLimitExceededError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RateLimitExceededError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RateLimitExceededError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RateLimitExceededError(
        name: RateLimitExceededErrorNameEnum.fromJson(json[r'name'])!,
        message: RateLimitExceededErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: RateLimitExceededErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<RateLimitExceededError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RateLimitExceededError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RateLimitExceededError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RateLimitExceededError> mapFromJson(dynamic json) {
    final map = <String, RateLimitExceededError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RateLimitExceededError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RateLimitExceededError-objects as value to a dart map
  static Map<String, List<RateLimitExceededError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RateLimitExceededError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RateLimitExceededError.listFromJson(entry.value, growable: growable,);
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


class RateLimitExceededErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const RateLimitExceededErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rateLimitExceededError = RateLimitExceededErrorNameEnum._(r'RateLimitExceededError');

  /// List of all possible values in this [enum][RateLimitExceededErrorNameEnum].
  static const values = <RateLimitExceededErrorNameEnum>[
    rateLimitExceededError,
  ];

  static RateLimitExceededErrorNameEnum? fromJson(dynamic value) => RateLimitExceededErrorNameEnumTypeTransformer().decode(value);

  static List<RateLimitExceededErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RateLimitExceededErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RateLimitExceededErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RateLimitExceededErrorNameEnum] to String,
/// and [decode] dynamic data back to [RateLimitExceededErrorNameEnum].
class RateLimitExceededErrorNameEnumTypeTransformer {
  factory RateLimitExceededErrorNameEnumTypeTransformer() => _instance ??= const RateLimitExceededErrorNameEnumTypeTransformer._();

  const RateLimitExceededErrorNameEnumTypeTransformer._();

  String encode(RateLimitExceededErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RateLimitExceededErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RateLimitExceededErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RateLimitExceededError': return RateLimitExceededErrorNameEnum.rateLimitExceededError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RateLimitExceededErrorNameEnumTypeTransformer] instance.
  static RateLimitExceededErrorNameEnumTypeTransformer? _instance;
}



class RateLimitExceededErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const RateLimitExceededErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const rateLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = RateLimitExceededErrorMessageEnum._(r'Rate limit exceeded: ${param}.');

  /// List of all possible values in this [enum][RateLimitExceededErrorMessageEnum].
  static const values = <RateLimitExceededErrorMessageEnum>[
    rateLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
  ];

  static RateLimitExceededErrorMessageEnum? fromJson(dynamic value) => RateLimitExceededErrorMessageEnumTypeTransformer().decode(value);

  static List<RateLimitExceededErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RateLimitExceededErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RateLimitExceededErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RateLimitExceededErrorMessageEnum] to String,
/// and [decode] dynamic data back to [RateLimitExceededErrorMessageEnum].
class RateLimitExceededErrorMessageEnumTypeTransformer {
  factory RateLimitExceededErrorMessageEnumTypeTransformer() => _instance ??= const RateLimitExceededErrorMessageEnumTypeTransformer._();

  const RateLimitExceededErrorMessageEnumTypeTransformer._();

  String encode(RateLimitExceededErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RateLimitExceededErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RateLimitExceededErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Rate limit exceeded: ${param}.': return RateLimitExceededErrorMessageEnum.rateLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RateLimitExceededErrorMessageEnumTypeTransformer] instance.
  static RateLimitExceededErrorMessageEnumTypeTransformer? _instance;
}



class RateLimitExceededErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const RateLimitExceededErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number429 = RateLimitExceededErrorHttpStatusCodeEnum._(429);

  /// List of all possible values in this [enum][RateLimitExceededErrorHttpStatusCodeEnum].
  static const values = <RateLimitExceededErrorHttpStatusCodeEnum>[
    number429,
  ];

  static RateLimitExceededErrorHttpStatusCodeEnum? fromJson(dynamic value) => RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<RateLimitExceededErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RateLimitExceededErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RateLimitExceededErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RateLimitExceededErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [RateLimitExceededErrorHttpStatusCodeEnum].
class RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer {
  factory RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer._();

  const RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(RateLimitExceededErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RateLimitExceededErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RateLimitExceededErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 429: return RateLimitExceededErrorHttpStatusCodeEnum.number429;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer] instance.
  static RateLimitExceededErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


