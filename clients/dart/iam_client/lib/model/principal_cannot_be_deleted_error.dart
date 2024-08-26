//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrincipalCannotBeDeletedError {
  /// Returns a new [PrincipalCannotBeDeletedError] instance.
  PrincipalCannotBeDeletedError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  PrincipalCannotBeDeletedErrorNameEnum name;

  PrincipalCannotBeDeletedErrorMessageEnum message;

  PrincipalCannotBeDeletedErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrincipalCannotBeDeletedError &&
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
  String toString() => 'PrincipalCannotBeDeletedError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [PrincipalCannotBeDeletedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrincipalCannotBeDeletedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrincipalCannotBeDeletedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrincipalCannotBeDeletedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrincipalCannotBeDeletedError(
        name: PrincipalCannotBeDeletedErrorNameEnum.fromJson(json[r'name'])!,
        message: PrincipalCannotBeDeletedErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: PrincipalCannotBeDeletedErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<PrincipalCannotBeDeletedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalCannotBeDeletedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalCannotBeDeletedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrincipalCannotBeDeletedError> mapFromJson(dynamic json) {
    final map = <String, PrincipalCannotBeDeletedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrincipalCannotBeDeletedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrincipalCannotBeDeletedError-objects as value to a dart map
  static Map<String, List<PrincipalCannotBeDeletedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrincipalCannotBeDeletedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrincipalCannotBeDeletedError.listFromJson(entry.value, growable: growable,);
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


class PrincipalCannotBeDeletedErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalCannotBeDeletedErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const principalCannotBeDeletedError = PrincipalCannotBeDeletedErrorNameEnum._(r'PrincipalCannotBeDeletedError');

  /// List of all possible values in this [enum][PrincipalCannotBeDeletedErrorNameEnum].
  static const values = <PrincipalCannotBeDeletedErrorNameEnum>[
    principalCannotBeDeletedError,
  ];

  static PrincipalCannotBeDeletedErrorNameEnum? fromJson(dynamic value) => PrincipalCannotBeDeletedErrorNameEnumTypeTransformer().decode(value);

  static List<PrincipalCannotBeDeletedErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalCannotBeDeletedErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalCannotBeDeletedErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalCannotBeDeletedErrorNameEnum] to String,
/// and [decode] dynamic data back to [PrincipalCannotBeDeletedErrorNameEnum].
class PrincipalCannotBeDeletedErrorNameEnumTypeTransformer {
  factory PrincipalCannotBeDeletedErrorNameEnumTypeTransformer() => _instance ??= const PrincipalCannotBeDeletedErrorNameEnumTypeTransformer._();

  const PrincipalCannotBeDeletedErrorNameEnumTypeTransformer._();

  String encode(PrincipalCannotBeDeletedErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalCannotBeDeletedErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalCannotBeDeletedErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PrincipalCannotBeDeletedError': return PrincipalCannotBeDeletedErrorNameEnum.principalCannotBeDeletedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalCannotBeDeletedErrorNameEnumTypeTransformer] instance.
  static PrincipalCannotBeDeletedErrorNameEnumTypeTransformer? _instance;
}



class PrincipalCannotBeDeletedErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalCannotBeDeletedErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId = PrincipalCannotBeDeletedErrorMessageEnum._(r'Cannot delete own record from the project with the same principalId');

  /// List of all possible values in this [enum][PrincipalCannotBeDeletedErrorMessageEnum].
  static const values = <PrincipalCannotBeDeletedErrorMessageEnum>[
    cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId,
  ];

  static PrincipalCannotBeDeletedErrorMessageEnum? fromJson(dynamic value) => PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer().decode(value);

  static List<PrincipalCannotBeDeletedErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalCannotBeDeletedErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalCannotBeDeletedErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalCannotBeDeletedErrorMessageEnum] to String,
/// and [decode] dynamic data back to [PrincipalCannotBeDeletedErrorMessageEnum].
class PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer {
  factory PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer() => _instance ??= const PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer._();

  const PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer._();

  String encode(PrincipalCannotBeDeletedErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalCannotBeDeletedErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalCannotBeDeletedErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Cannot delete own record from the project with the same principalId': return PrincipalCannotBeDeletedErrorMessageEnum.cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer] instance.
  static PrincipalCannotBeDeletedErrorMessageEnumTypeTransformer? _instance;
}



class PrincipalCannotBeDeletedErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalCannotBeDeletedErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number409 = PrincipalCannotBeDeletedErrorHttpStatusCodeEnum._(409);

  /// List of all possible values in this [enum][PrincipalCannotBeDeletedErrorHttpStatusCodeEnum].
  static const values = <PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>[
    number409,
  ];

  static PrincipalCannotBeDeletedErrorHttpStatusCodeEnum? fromJson(dynamic value) => PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<PrincipalCannotBeDeletedErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalCannotBeDeletedErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalCannotBeDeletedErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [PrincipalCannotBeDeletedErrorHttpStatusCodeEnum].
class PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer {
  factory PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer._();

  const PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(PrincipalCannotBeDeletedErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalCannotBeDeletedErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalCannotBeDeletedErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 409: return PrincipalCannotBeDeletedErrorHttpStatusCodeEnum.number409;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer] instance.
  static PrincipalCannotBeDeletedErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


