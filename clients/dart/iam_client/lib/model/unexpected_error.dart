//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnexpectedError {
  /// Returns a new [UnexpectedError] instance.
  UnexpectedError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  UnexpectedErrorNameEnum name;

  UnexpectedErrorMessageEnum message;

  UnexpectedErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnexpectedError &&
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
  String toString() => 'UnexpectedError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [UnexpectedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnexpectedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnexpectedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnexpectedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnexpectedError(
        name: UnexpectedErrorNameEnum.fromJson(json[r'name'])!,
        message: UnexpectedErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: UnexpectedErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<UnexpectedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnexpectedError> mapFromJson(dynamic json) {
    final map = <String, UnexpectedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnexpectedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnexpectedError-objects as value to a dart map
  static Map<String, List<UnexpectedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnexpectedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnexpectedError.listFromJson(entry.value, growable: growable,);
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


class UnexpectedErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const UnexpectedErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unexpectedError = UnexpectedErrorNameEnum._(r'UnexpectedError');

  /// List of all possible values in this [enum][UnexpectedErrorNameEnum].
  static const values = <UnexpectedErrorNameEnum>[
    unexpectedError,
  ];

  static UnexpectedErrorNameEnum? fromJson(dynamic value) => UnexpectedErrorNameEnumTypeTransformer().decode(value);

  static List<UnexpectedErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnexpectedErrorNameEnum] to String,
/// and [decode] dynamic data back to [UnexpectedErrorNameEnum].
class UnexpectedErrorNameEnumTypeTransformer {
  factory UnexpectedErrorNameEnumTypeTransformer() => _instance ??= const UnexpectedErrorNameEnumTypeTransformer._();

  const UnexpectedErrorNameEnumTypeTransformer._();

  String encode(UnexpectedErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnexpectedErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnexpectedErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UnexpectedError': return UnexpectedErrorNameEnum.unexpectedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnexpectedErrorNameEnumTypeTransformer] instance.
  static UnexpectedErrorNameEnumTypeTransformer? _instance;
}



class UnexpectedErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const UnexpectedErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unexpectedErrorOccurredPeriod = UnexpectedErrorMessageEnum._(r'Unexpected Error Occurred.');

  /// List of all possible values in this [enum][UnexpectedErrorMessageEnum].
  static const values = <UnexpectedErrorMessageEnum>[
    unexpectedErrorOccurredPeriod,
  ];

  static UnexpectedErrorMessageEnum? fromJson(dynamic value) => UnexpectedErrorMessageEnumTypeTransformer().decode(value);

  static List<UnexpectedErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnexpectedErrorMessageEnum] to String,
/// and [decode] dynamic data back to [UnexpectedErrorMessageEnum].
class UnexpectedErrorMessageEnumTypeTransformer {
  factory UnexpectedErrorMessageEnumTypeTransformer() => _instance ??= const UnexpectedErrorMessageEnumTypeTransformer._();

  const UnexpectedErrorMessageEnumTypeTransformer._();

  String encode(UnexpectedErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnexpectedErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnexpectedErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unexpected Error Occurred.': return UnexpectedErrorMessageEnum.unexpectedErrorOccurredPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnexpectedErrorMessageEnumTypeTransformer] instance.
  static UnexpectedErrorMessageEnumTypeTransformer? _instance;
}



class UnexpectedErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const UnexpectedErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number500 = UnexpectedErrorHttpStatusCodeEnum._(500);

  /// List of all possible values in this [enum][UnexpectedErrorHttpStatusCodeEnum].
  static const values = <UnexpectedErrorHttpStatusCodeEnum>[
    number500,
  ];

  static UnexpectedErrorHttpStatusCodeEnum? fromJson(dynamic value) => UnexpectedErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<UnexpectedErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnexpectedErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnexpectedErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnexpectedErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [UnexpectedErrorHttpStatusCodeEnum].
class UnexpectedErrorHttpStatusCodeEnumTypeTransformer {
  factory UnexpectedErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const UnexpectedErrorHttpStatusCodeEnumTypeTransformer._();

  const UnexpectedErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(UnexpectedErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnexpectedErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnexpectedErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 500: return UnexpectedErrorHttpStatusCodeEnum.number500;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnexpectedErrorHttpStatusCodeEnumTypeTransformer] instance.
  static UnexpectedErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


