//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AlreadyExistsError {
  /// Returns a new [AlreadyExistsError] instance.
  AlreadyExistsError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  AlreadyExistsErrorNameEnum name;

  AlreadyExistsErrorMessageEnum message;

  AlreadyExistsErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AlreadyExistsError &&
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
  String toString() => 'AlreadyExistsError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [AlreadyExistsError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AlreadyExistsError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AlreadyExistsError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AlreadyExistsError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AlreadyExistsError(
        name: AlreadyExistsErrorNameEnum.fromJson(json[r'name'])!,
        message: AlreadyExistsErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: AlreadyExistsErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<AlreadyExistsError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlreadyExistsError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlreadyExistsError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AlreadyExistsError> mapFromJson(dynamic json) {
    final map = <String, AlreadyExistsError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AlreadyExistsError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AlreadyExistsError-objects as value to a dart map
  static Map<String, List<AlreadyExistsError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AlreadyExistsError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AlreadyExistsError.listFromJson(entry.value, growable: growable,);
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


class AlreadyExistsErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const AlreadyExistsErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const alreadyExistsError = AlreadyExistsErrorNameEnum._(r'AlreadyExistsError');

  /// List of all possible values in this [enum][AlreadyExistsErrorNameEnum].
  static const values = <AlreadyExistsErrorNameEnum>[
    alreadyExistsError,
  ];

  static AlreadyExistsErrorNameEnum? fromJson(dynamic value) => AlreadyExistsErrorNameEnumTypeTransformer().decode(value);

  static List<AlreadyExistsErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlreadyExistsErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlreadyExistsErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlreadyExistsErrorNameEnum] to String,
/// and [decode] dynamic data back to [AlreadyExistsErrorNameEnum].
class AlreadyExistsErrorNameEnumTypeTransformer {
  factory AlreadyExistsErrorNameEnumTypeTransformer() => _instance ??= const AlreadyExistsErrorNameEnumTypeTransformer._();

  const AlreadyExistsErrorNameEnumTypeTransformer._();

  String encode(AlreadyExistsErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlreadyExistsErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlreadyExistsErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AlreadyExistsError': return AlreadyExistsErrorNameEnum.alreadyExistsError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlreadyExistsErrorNameEnumTypeTransformer] instance.
  static AlreadyExistsErrorNameEnumTypeTransformer? _instance;
}



class AlreadyExistsErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const AlreadyExistsErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = AlreadyExistsErrorMessageEnum._(r'Already exists: ${param}.');

  /// List of all possible values in this [enum][AlreadyExistsErrorMessageEnum].
  static const values = <AlreadyExistsErrorMessageEnum>[
    alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
  ];

  static AlreadyExistsErrorMessageEnum? fromJson(dynamic value) => AlreadyExistsErrorMessageEnumTypeTransformer().decode(value);

  static List<AlreadyExistsErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlreadyExistsErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlreadyExistsErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlreadyExistsErrorMessageEnum] to String,
/// and [decode] dynamic data back to [AlreadyExistsErrorMessageEnum].
class AlreadyExistsErrorMessageEnumTypeTransformer {
  factory AlreadyExistsErrorMessageEnumTypeTransformer() => _instance ??= const AlreadyExistsErrorMessageEnumTypeTransformer._();

  const AlreadyExistsErrorMessageEnumTypeTransformer._();

  String encode(AlreadyExistsErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlreadyExistsErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlreadyExistsErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Already exists: ${param}.': return AlreadyExistsErrorMessageEnum.alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlreadyExistsErrorMessageEnumTypeTransformer] instance.
  static AlreadyExistsErrorMessageEnumTypeTransformer? _instance;
}



class AlreadyExistsErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const AlreadyExistsErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number409 = AlreadyExistsErrorHttpStatusCodeEnum._(409);

  /// List of all possible values in this [enum][AlreadyExistsErrorHttpStatusCodeEnum].
  static const values = <AlreadyExistsErrorHttpStatusCodeEnum>[
    number409,
  ];

  static AlreadyExistsErrorHttpStatusCodeEnum? fromJson(dynamic value) => AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<AlreadyExistsErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AlreadyExistsErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AlreadyExistsErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AlreadyExistsErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [AlreadyExistsErrorHttpStatusCodeEnum].
class AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer {
  factory AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer._();

  const AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(AlreadyExistsErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AlreadyExistsErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AlreadyExistsErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 409: return AlreadyExistsErrorHttpStatusCodeEnum.number409;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer] instance.
  static AlreadyExistsErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


