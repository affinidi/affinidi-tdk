//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidVPTokenCreationTimeError {
  /// Returns a new [InvalidVPTokenCreationTimeError] instance.
  InvalidVPTokenCreationTimeError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidVPTokenCreationTimeErrorNameEnum name;

  InvalidVPTokenCreationTimeErrorMessageEnum message;

  InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidVPTokenCreationTimeError &&
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
  String toString() => 'InvalidVPTokenCreationTimeError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidVPTokenCreationTimeError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidVPTokenCreationTimeError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidVPTokenCreationTimeError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidVPTokenCreationTimeError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidVPTokenCreationTimeError(
        name: InvalidVPTokenCreationTimeErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidVPTokenCreationTimeErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidVPTokenCreationTimeError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidVPTokenCreationTimeError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidVPTokenCreationTimeError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidVPTokenCreationTimeError> mapFromJson(dynamic json) {
    final map = <String, InvalidVPTokenCreationTimeError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidVPTokenCreationTimeError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidVPTokenCreationTimeError-objects as value to a dart map
  static Map<String, List<InvalidVPTokenCreationTimeError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidVPTokenCreationTimeError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidVPTokenCreationTimeError.listFromJson(entry.value, growable: growable,);
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


class InvalidVPTokenCreationTimeErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidVPTokenCreationTimeErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidVPTokenCreationTimeError = InvalidVPTokenCreationTimeErrorNameEnum._(r'InvalidVPTokenCreationTimeError');

  /// List of all possible values in this [enum][InvalidVPTokenCreationTimeErrorNameEnum].
  static const values = <InvalidVPTokenCreationTimeErrorNameEnum>[
    invalidVPTokenCreationTimeError,
  ];

  static InvalidVPTokenCreationTimeErrorNameEnum? fromJson(dynamic value) => InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidVPTokenCreationTimeErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidVPTokenCreationTimeErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidVPTokenCreationTimeErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidVPTokenCreationTimeErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidVPTokenCreationTimeErrorNameEnum].
class InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer {
  factory InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer() => _instance ??= const InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer._();

  const InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer._();

  String encode(InvalidVPTokenCreationTimeErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidVPTokenCreationTimeErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidVPTokenCreationTimeErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidVPTokenCreationTimeError': return InvalidVPTokenCreationTimeErrorNameEnum.invalidVPTokenCreationTimeError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer] instance.
  static InvalidVPTokenCreationTimeErrorNameEnumTypeTransformer? _instance;
}



class InvalidVPTokenCreationTimeErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidVPTokenCreationTimeErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vPTokenHasExpired = InvalidVPTokenCreationTimeErrorMessageEnum._(r'VP token has expired');

  /// List of all possible values in this [enum][InvalidVPTokenCreationTimeErrorMessageEnum].
  static const values = <InvalidVPTokenCreationTimeErrorMessageEnum>[
    vPTokenHasExpired,
  ];

  static InvalidVPTokenCreationTimeErrorMessageEnum? fromJson(dynamic value) => InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidVPTokenCreationTimeErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidVPTokenCreationTimeErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidVPTokenCreationTimeErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidVPTokenCreationTimeErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidVPTokenCreationTimeErrorMessageEnum].
class InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer {
  factory InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer() => _instance ??= const InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer._();

  const InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer._();

  String encode(InvalidVPTokenCreationTimeErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidVPTokenCreationTimeErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidVPTokenCreationTimeErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VP token has expired': return InvalidVPTokenCreationTimeErrorMessageEnum.vPTokenHasExpired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer] instance.
  static InvalidVPTokenCreationTimeErrorMessageEnumTypeTransformer? _instance;
}



class InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum].
  static const values = <InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum].
class InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


