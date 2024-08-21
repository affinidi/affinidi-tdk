//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrincipalDoesNotBelongToProjectError {
  /// Returns a new [PrincipalDoesNotBelongToProjectError] instance.
  PrincipalDoesNotBelongToProjectError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  PrincipalDoesNotBelongToProjectErrorNameEnum name;

  PrincipalDoesNotBelongToProjectErrorMessageEnum message;

  PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrincipalDoesNotBelongToProjectError &&
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
  String toString() => 'PrincipalDoesNotBelongToProjectError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [PrincipalDoesNotBelongToProjectError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrincipalDoesNotBelongToProjectError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrincipalDoesNotBelongToProjectError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrincipalDoesNotBelongToProjectError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrincipalDoesNotBelongToProjectError(
        name: PrincipalDoesNotBelongToProjectErrorNameEnum.fromJson(json[r'name'])!,
        message: PrincipalDoesNotBelongToProjectErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<PrincipalDoesNotBelongToProjectError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalDoesNotBelongToProjectError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalDoesNotBelongToProjectError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrincipalDoesNotBelongToProjectError> mapFromJson(dynamic json) {
    final map = <String, PrincipalDoesNotBelongToProjectError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrincipalDoesNotBelongToProjectError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrincipalDoesNotBelongToProjectError-objects as value to a dart map
  static Map<String, List<PrincipalDoesNotBelongToProjectError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrincipalDoesNotBelongToProjectError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrincipalDoesNotBelongToProjectError.listFromJson(entry.value, growable: growable,);
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


class PrincipalDoesNotBelongToProjectErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalDoesNotBelongToProjectErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const principalDoesNotBelongToProjectError = PrincipalDoesNotBelongToProjectErrorNameEnum._(r'PrincipalDoesNotBelongToProjectError');

  /// List of all possible values in this [enum][PrincipalDoesNotBelongToProjectErrorNameEnum].
  static const values = <PrincipalDoesNotBelongToProjectErrorNameEnum>[
    principalDoesNotBelongToProjectError,
  ];

  static PrincipalDoesNotBelongToProjectErrorNameEnum? fromJson(dynamic value) => PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer().decode(value);

  static List<PrincipalDoesNotBelongToProjectErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalDoesNotBelongToProjectErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalDoesNotBelongToProjectErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalDoesNotBelongToProjectErrorNameEnum] to String,
/// and [decode] dynamic data back to [PrincipalDoesNotBelongToProjectErrorNameEnum].
class PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer {
  factory PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer() => _instance ??= const PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer._();

  const PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer._();

  String encode(PrincipalDoesNotBelongToProjectErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalDoesNotBelongToProjectErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalDoesNotBelongToProjectErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PrincipalDoesNotBelongToProjectError': return PrincipalDoesNotBelongToProjectErrorNameEnum.principalDoesNotBelongToProjectError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer] instance.
  static PrincipalDoesNotBelongToProjectErrorNameEnumTypeTransformer? _instance;
}



class PrincipalDoesNotBelongToProjectErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalDoesNotBelongToProjectErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const principalDoesNotBelongToTheGivenProject = PrincipalDoesNotBelongToProjectErrorMessageEnum._(r'Principal does not belong to the given project');

  /// List of all possible values in this [enum][PrincipalDoesNotBelongToProjectErrorMessageEnum].
  static const values = <PrincipalDoesNotBelongToProjectErrorMessageEnum>[
    principalDoesNotBelongToTheGivenProject,
  ];

  static PrincipalDoesNotBelongToProjectErrorMessageEnum? fromJson(dynamic value) => PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer().decode(value);

  static List<PrincipalDoesNotBelongToProjectErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalDoesNotBelongToProjectErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalDoesNotBelongToProjectErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalDoesNotBelongToProjectErrorMessageEnum] to String,
/// and [decode] dynamic data back to [PrincipalDoesNotBelongToProjectErrorMessageEnum].
class PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer {
  factory PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer() => _instance ??= const PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer._();

  const PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer._();

  String encode(PrincipalDoesNotBelongToProjectErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalDoesNotBelongToProjectErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalDoesNotBelongToProjectErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Principal does not belong to the given project': return PrincipalDoesNotBelongToProjectErrorMessageEnum.principalDoesNotBelongToTheGivenProject;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer] instance.
  static PrincipalDoesNotBelongToProjectErrorMessageEnumTypeTransformer? _instance;
}



class PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number403 = PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum._(403);

  /// List of all possible values in this [enum][PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum].
  static const values = <PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>[
    number403,
  ];

  static PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum? fromJson(dynamic value) => PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum].
class PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer {
  factory PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer._();

  const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 403: return PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum.number403;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer] instance.
  static PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


