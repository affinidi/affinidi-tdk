//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RevocationForbiddenError {
  /// Returns a new [RevocationForbiddenError] instance.
  RevocationForbiddenError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  RevocationForbiddenErrorNameEnum name;

  RevocationForbiddenErrorMessageEnum message;

  RevocationForbiddenErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevocationForbiddenError &&
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
  String toString() => 'RevocationForbiddenError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [RevocationForbiddenError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevocationForbiddenError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevocationForbiddenError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevocationForbiddenError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevocationForbiddenError(
        name: RevocationForbiddenErrorNameEnum.fromJson(json[r'name'])!,
        message: RevocationForbiddenErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: RevocationForbiddenErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<RevocationForbiddenError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevocationForbiddenError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevocationForbiddenError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevocationForbiddenError> mapFromJson(dynamic json) {
    final map = <String, RevocationForbiddenError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevocationForbiddenError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevocationForbiddenError-objects as value to a dart map
  static Map<String, List<RevocationForbiddenError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevocationForbiddenError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevocationForbiddenError.listFromJson(entry.value, growable: growable,);
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


class RevocationForbiddenErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const RevocationForbiddenErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const revocationForbiddenError = RevocationForbiddenErrorNameEnum._(r'RevocationForbiddenError');

  /// List of all possible values in this [enum][RevocationForbiddenErrorNameEnum].
  static const values = <RevocationForbiddenErrorNameEnum>[
    revocationForbiddenError,
  ];

  static RevocationForbiddenErrorNameEnum? fromJson(dynamic value) => RevocationForbiddenErrorNameEnumTypeTransformer().decode(value);

  static List<RevocationForbiddenErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevocationForbiddenErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevocationForbiddenErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RevocationForbiddenErrorNameEnum] to String,
/// and [decode] dynamic data back to [RevocationForbiddenErrorNameEnum].
class RevocationForbiddenErrorNameEnumTypeTransformer {
  factory RevocationForbiddenErrorNameEnumTypeTransformer() => _instance ??= const RevocationForbiddenErrorNameEnumTypeTransformer._();

  const RevocationForbiddenErrorNameEnumTypeTransformer._();

  String encode(RevocationForbiddenErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RevocationForbiddenErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RevocationForbiddenErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RevocationForbiddenError': return RevocationForbiddenErrorNameEnum.revocationForbiddenError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RevocationForbiddenErrorNameEnumTypeTransformer] instance.
  static RevocationForbiddenErrorNameEnumTypeTransformer? _instance;
}



class RevocationForbiddenErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const RevocationForbiddenErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const relatedVCHasNotBeenClaimedYet = RevocationForbiddenErrorMessageEnum._(r'Related VC has not been claimed yet');

  /// List of all possible values in this [enum][RevocationForbiddenErrorMessageEnum].
  static const values = <RevocationForbiddenErrorMessageEnum>[
    relatedVCHasNotBeenClaimedYet,
  ];

  static RevocationForbiddenErrorMessageEnum? fromJson(dynamic value) => RevocationForbiddenErrorMessageEnumTypeTransformer().decode(value);

  static List<RevocationForbiddenErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevocationForbiddenErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevocationForbiddenErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RevocationForbiddenErrorMessageEnum] to String,
/// and [decode] dynamic data back to [RevocationForbiddenErrorMessageEnum].
class RevocationForbiddenErrorMessageEnumTypeTransformer {
  factory RevocationForbiddenErrorMessageEnumTypeTransformer() => _instance ??= const RevocationForbiddenErrorMessageEnumTypeTransformer._();

  const RevocationForbiddenErrorMessageEnumTypeTransformer._();

  String encode(RevocationForbiddenErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RevocationForbiddenErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RevocationForbiddenErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Related VC has not been claimed yet': return RevocationForbiddenErrorMessageEnum.relatedVCHasNotBeenClaimedYet;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RevocationForbiddenErrorMessageEnumTypeTransformer] instance.
  static RevocationForbiddenErrorMessageEnumTypeTransformer? _instance;
}



class RevocationForbiddenErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const RevocationForbiddenErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = RevocationForbiddenErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][RevocationForbiddenErrorHttpStatusCodeEnum].
  static const values = <RevocationForbiddenErrorHttpStatusCodeEnum>[
    number400,
  ];

  static RevocationForbiddenErrorHttpStatusCodeEnum? fromJson(dynamic value) => RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<RevocationForbiddenErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevocationForbiddenErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevocationForbiddenErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RevocationForbiddenErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [RevocationForbiddenErrorHttpStatusCodeEnum].
class RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer {
  factory RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  const RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(RevocationForbiddenErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RevocationForbiddenErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RevocationForbiddenErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return RevocationForbiddenErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer] instance.
  static RevocationForbiddenErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


