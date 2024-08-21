//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnauthorizedError {
  /// Returns a new [UnauthorizedError] instance.
  UnauthorizedError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  UnauthorizedErrorNameEnum name;

  UnauthorizedErrorMessageEnum message;

  UnauthorizedErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnauthorizedError &&
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
  String toString() => 'UnauthorizedError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [UnauthorizedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnauthorizedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnauthorizedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnauthorizedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnauthorizedError(
        name: UnauthorizedErrorNameEnum.fromJson(json[r'name'])!,
        message: UnauthorizedErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: UnauthorizedErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<UnauthorizedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnauthorizedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnauthorizedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnauthorizedError> mapFromJson(dynamic json) {
    final map = <String, UnauthorizedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnauthorizedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnauthorizedError-objects as value to a dart map
  static Map<String, List<UnauthorizedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnauthorizedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UnauthorizedError.listFromJson(entry.value, growable: growable,);
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


class UnauthorizedErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const UnauthorizedErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unauthorizedError = UnauthorizedErrorNameEnum._(r'UnauthorizedError');

  /// List of all possible values in this [enum][UnauthorizedErrorNameEnum].
  static const values = <UnauthorizedErrorNameEnum>[
    unauthorizedError,
  ];

  static UnauthorizedErrorNameEnum? fromJson(dynamic value) => UnauthorizedErrorNameEnumTypeTransformer().decode(value);

  static List<UnauthorizedErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnauthorizedErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnauthorizedErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnauthorizedErrorNameEnum] to String,
/// and [decode] dynamic data back to [UnauthorizedErrorNameEnum].
class UnauthorizedErrorNameEnumTypeTransformer {
  factory UnauthorizedErrorNameEnumTypeTransformer() => _instance ??= const UnauthorizedErrorNameEnumTypeTransformer._();

  const UnauthorizedErrorNameEnumTypeTransformer._();

  String encode(UnauthorizedErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnauthorizedErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnauthorizedErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UnauthorizedError': return UnauthorizedErrorNameEnum.unauthorizedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnauthorizedErrorNameEnumTypeTransformer] instance.
  static UnauthorizedErrorNameEnumTypeTransformer? _instance;
}



class UnauthorizedErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const UnauthorizedErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unauthorized = UnauthorizedErrorMessageEnum._(r'Unauthorized');

  /// List of all possible values in this [enum][UnauthorizedErrorMessageEnum].
  static const values = <UnauthorizedErrorMessageEnum>[
    unauthorized,
  ];

  static UnauthorizedErrorMessageEnum? fromJson(dynamic value) => UnauthorizedErrorMessageEnumTypeTransformer().decode(value);

  static List<UnauthorizedErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnauthorizedErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnauthorizedErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnauthorizedErrorMessageEnum] to String,
/// and [decode] dynamic data back to [UnauthorizedErrorMessageEnum].
class UnauthorizedErrorMessageEnumTypeTransformer {
  factory UnauthorizedErrorMessageEnumTypeTransformer() => _instance ??= const UnauthorizedErrorMessageEnumTypeTransformer._();

  const UnauthorizedErrorMessageEnumTypeTransformer._();

  String encode(UnauthorizedErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnauthorizedErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnauthorizedErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unauthorized': return UnauthorizedErrorMessageEnum.unauthorized;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnauthorizedErrorMessageEnumTypeTransformer] instance.
  static UnauthorizedErrorMessageEnumTypeTransformer? _instance;
}



class UnauthorizedErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const UnauthorizedErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number401 = UnauthorizedErrorHttpStatusCodeEnum._(401);

  /// List of all possible values in this [enum][UnauthorizedErrorHttpStatusCodeEnum].
  static const values = <UnauthorizedErrorHttpStatusCodeEnum>[
    number401,
  ];

  static UnauthorizedErrorHttpStatusCodeEnum? fromJson(dynamic value) => UnauthorizedErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<UnauthorizedErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnauthorizedErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnauthorizedErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UnauthorizedErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [UnauthorizedErrorHttpStatusCodeEnum].
class UnauthorizedErrorHttpStatusCodeEnumTypeTransformer {
  factory UnauthorizedErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const UnauthorizedErrorHttpStatusCodeEnumTypeTransformer._();

  const UnauthorizedErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(UnauthorizedErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UnauthorizedErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UnauthorizedErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 401: return UnauthorizedErrorHttpStatusCodeEnum.number401;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UnauthorizedErrorHttpStatusCodeEnumTypeTransformer] instance.
  static UnauthorizedErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


