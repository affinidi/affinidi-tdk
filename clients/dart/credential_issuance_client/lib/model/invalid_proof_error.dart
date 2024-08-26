//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InvalidProofError {
  /// Returns a new [InvalidProofError] instance.
  InvalidProofError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  InvalidProofErrorNameEnum name;

  InvalidProofErrorMessageEnum message;

  InvalidProofErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvalidProofError &&
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
  String toString() => 'InvalidProofError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InvalidProofError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvalidProofError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvalidProofError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvalidProofError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvalidProofError(
        name: InvalidProofErrorNameEnum.fromJson(json[r'name'])!,
        message: InvalidProofErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: InvalidProofErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<InvalidProofError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidProofError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidProofError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvalidProofError> mapFromJson(dynamic json) {
    final map = <String, InvalidProofError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvalidProofError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvalidProofError-objects as value to a dart map
  static Map<String, List<InvalidProofError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvalidProofError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvalidProofError.listFromJson(entry.value, growable: growable,);
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


class InvalidProofErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidProofErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidProofError = InvalidProofErrorNameEnum._(r'InvalidProofError');

  /// List of all possible values in this [enum][InvalidProofErrorNameEnum].
  static const values = <InvalidProofErrorNameEnum>[
    invalidProofError,
  ];

  static InvalidProofErrorNameEnum? fromJson(dynamic value) => InvalidProofErrorNameEnumTypeTransformer().decode(value);

  static List<InvalidProofErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidProofErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidProofErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidProofErrorNameEnum] to String,
/// and [decode] dynamic data back to [InvalidProofErrorNameEnum].
class InvalidProofErrorNameEnumTypeTransformer {
  factory InvalidProofErrorNameEnumTypeTransformer() => _instance ??= const InvalidProofErrorNameEnumTypeTransformer._();

  const InvalidProofErrorNameEnumTypeTransformer._();

  String encode(InvalidProofErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidProofErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidProofErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidProofError': return InvalidProofErrorNameEnum.invalidProofError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidProofErrorNameEnumTypeTransformer] instance.
  static InvalidProofErrorNameEnumTypeTransformer? _instance;
}



class InvalidProofErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidProofErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const theProofInTheCredentialRequestIsInvalid = InvalidProofErrorMessageEnum._(r'The proof in the Credential Request is invalid');

  /// List of all possible values in this [enum][InvalidProofErrorMessageEnum].
  static const values = <InvalidProofErrorMessageEnum>[
    theProofInTheCredentialRequestIsInvalid,
  ];

  static InvalidProofErrorMessageEnum? fromJson(dynamic value) => InvalidProofErrorMessageEnumTypeTransformer().decode(value);

  static List<InvalidProofErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidProofErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidProofErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidProofErrorMessageEnum] to String,
/// and [decode] dynamic data back to [InvalidProofErrorMessageEnum].
class InvalidProofErrorMessageEnumTypeTransformer {
  factory InvalidProofErrorMessageEnumTypeTransformer() => _instance ??= const InvalidProofErrorMessageEnumTypeTransformer._();

  const InvalidProofErrorMessageEnumTypeTransformer._();

  String encode(InvalidProofErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidProofErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidProofErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'The proof in the Credential Request is invalid': return InvalidProofErrorMessageEnum.theProofInTheCredentialRequestIsInvalid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidProofErrorMessageEnumTypeTransformer] instance.
  static InvalidProofErrorMessageEnumTypeTransformer? _instance;
}



class InvalidProofErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const InvalidProofErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = InvalidProofErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][InvalidProofErrorHttpStatusCodeEnum].
  static const values = <InvalidProofErrorHttpStatusCodeEnum>[
    number400,
  ];

  static InvalidProofErrorHttpStatusCodeEnum? fromJson(dynamic value) => InvalidProofErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<InvalidProofErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvalidProofErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvalidProofErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InvalidProofErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [InvalidProofErrorHttpStatusCodeEnum].
class InvalidProofErrorHttpStatusCodeEnumTypeTransformer {
  factory InvalidProofErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const InvalidProofErrorHttpStatusCodeEnumTypeTransformer._();

  const InvalidProofErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(InvalidProofErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InvalidProofErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InvalidProofErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return InvalidProofErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InvalidProofErrorHttpStatusCodeEnumTypeTransformer] instance.
  static InvalidProofErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


