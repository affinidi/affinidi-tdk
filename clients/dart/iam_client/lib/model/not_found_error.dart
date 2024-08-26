//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NotFoundError {
  /// Returns a new [NotFoundError] instance.
  NotFoundError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  NotFoundErrorNameEnum name;

  NotFoundErrorMessageEnum message;

  NotFoundErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotFoundError &&
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
  String toString() => 'NotFoundError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [NotFoundError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotFoundError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotFoundError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotFoundError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotFoundError(
        name: NotFoundErrorNameEnum.fromJson(json[r'name'])!,
        message: NotFoundErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: NotFoundErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<NotFoundError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotFoundError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotFoundError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotFoundError> mapFromJson(dynamic json) {
    final map = <String, NotFoundError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotFoundError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotFoundError-objects as value to a dart map
  static Map<String, List<NotFoundError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotFoundError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotFoundError.listFromJson(entry.value, growable: growable,);
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


class NotFoundErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const NotFoundErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notFoundError = NotFoundErrorNameEnum._(r'NotFoundError');

  /// List of all possible values in this [enum][NotFoundErrorNameEnum].
  static const values = <NotFoundErrorNameEnum>[
    notFoundError,
  ];

  static NotFoundErrorNameEnum? fromJson(dynamic value) => NotFoundErrorNameEnumTypeTransformer().decode(value);

  static List<NotFoundErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotFoundErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotFoundErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotFoundErrorNameEnum] to String,
/// and [decode] dynamic data back to [NotFoundErrorNameEnum].
class NotFoundErrorNameEnumTypeTransformer {
  factory NotFoundErrorNameEnumTypeTransformer() => _instance ??= const NotFoundErrorNameEnumTypeTransformer._();

  const NotFoundErrorNameEnumTypeTransformer._();

  String encode(NotFoundErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotFoundErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotFoundErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NotFoundError': return NotFoundErrorNameEnum.notFoundError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotFoundErrorNameEnumTypeTransformer] instance.
  static NotFoundErrorNameEnumTypeTransformer? _instance;
}



class NotFoundErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const NotFoundErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = NotFoundErrorMessageEnum._(r'Not found: ${param}.');

  /// List of all possible values in this [enum][NotFoundErrorMessageEnum].
  static const values = <NotFoundErrorMessageEnum>[
    notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
  ];

  static NotFoundErrorMessageEnum? fromJson(dynamic value) => NotFoundErrorMessageEnumTypeTransformer().decode(value);

  static List<NotFoundErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotFoundErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotFoundErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotFoundErrorMessageEnum] to String,
/// and [decode] dynamic data back to [NotFoundErrorMessageEnum].
class NotFoundErrorMessageEnumTypeTransformer {
  factory NotFoundErrorMessageEnumTypeTransformer() => _instance ??= const NotFoundErrorMessageEnumTypeTransformer._();

  const NotFoundErrorMessageEnumTypeTransformer._();

  String encode(NotFoundErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotFoundErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotFoundErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Not found: ${param}.': return NotFoundErrorMessageEnum.notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotFoundErrorMessageEnumTypeTransformer] instance.
  static NotFoundErrorMessageEnumTypeTransformer? _instance;
}



class NotFoundErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotFoundErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number404 = NotFoundErrorHttpStatusCodeEnum._(404);

  /// List of all possible values in this [enum][NotFoundErrorHttpStatusCodeEnum].
  static const values = <NotFoundErrorHttpStatusCodeEnum>[
    number404,
  ];

  static NotFoundErrorHttpStatusCodeEnum? fromJson(dynamic value) => NotFoundErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<NotFoundErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotFoundErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotFoundErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotFoundErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [NotFoundErrorHttpStatusCodeEnum].
class NotFoundErrorHttpStatusCodeEnumTypeTransformer {
  factory NotFoundErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const NotFoundErrorHttpStatusCodeEnumTypeTransformer._();

  const NotFoundErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(NotFoundErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotFoundErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotFoundErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 404: return NotFoundErrorHttpStatusCodeEnum.number404;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotFoundErrorHttpStatusCodeEnumTypeTransformer] instance.
  static NotFoundErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


