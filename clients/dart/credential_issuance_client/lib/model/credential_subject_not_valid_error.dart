//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialSubjectNotValidError {
  /// Returns a new [CredentialSubjectNotValidError] instance.
  CredentialSubjectNotValidError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CredentialSubjectNotValidErrorNameEnum name;

  CredentialSubjectNotValidErrorMessageEnum message;

  CredentialSubjectNotValidErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialSubjectNotValidError &&
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
  String toString() => 'CredentialSubjectNotValidError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CredentialSubjectNotValidError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialSubjectNotValidError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialSubjectNotValidError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialSubjectNotValidError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialSubjectNotValidError(
        name: CredentialSubjectNotValidErrorNameEnum.fromJson(json[r'name'])!,
        message: CredentialSubjectNotValidErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CredentialSubjectNotValidErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CredentialSubjectNotValidError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialSubjectNotValidError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialSubjectNotValidError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialSubjectNotValidError> mapFromJson(dynamic json) {
    final map = <String, CredentialSubjectNotValidError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialSubjectNotValidError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialSubjectNotValidError-objects as value to a dart map
  static Map<String, List<CredentialSubjectNotValidError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialSubjectNotValidError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialSubjectNotValidError.listFromJson(entry.value, growable: growable,);
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


class CredentialSubjectNotValidErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialSubjectNotValidErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialSubjectNotValidError = CredentialSubjectNotValidErrorNameEnum._(r'CredentialSubjectNotValidError');

  /// List of all possible values in this [enum][CredentialSubjectNotValidErrorNameEnum].
  static const values = <CredentialSubjectNotValidErrorNameEnum>[
    credentialSubjectNotValidError,
  ];

  static CredentialSubjectNotValidErrorNameEnum? fromJson(dynamic value) => CredentialSubjectNotValidErrorNameEnumTypeTransformer().decode(value);

  static List<CredentialSubjectNotValidErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialSubjectNotValidErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialSubjectNotValidErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialSubjectNotValidErrorNameEnum] to String,
/// and [decode] dynamic data back to [CredentialSubjectNotValidErrorNameEnum].
class CredentialSubjectNotValidErrorNameEnumTypeTransformer {
  factory CredentialSubjectNotValidErrorNameEnumTypeTransformer() => _instance ??= const CredentialSubjectNotValidErrorNameEnumTypeTransformer._();

  const CredentialSubjectNotValidErrorNameEnumTypeTransformer._();

  String encode(CredentialSubjectNotValidErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialSubjectNotValidErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialSubjectNotValidErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CredentialSubjectNotValidError': return CredentialSubjectNotValidErrorNameEnum.credentialSubjectNotValidError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialSubjectNotValidErrorNameEnumTypeTransformer] instance.
  static CredentialSubjectNotValidErrorNameEnumTypeTransformer? _instance;
}



class CredentialSubjectNotValidErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialSubjectNotValidErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialSubjectIsNotAccordingToTheVcSchema = CredentialSubjectNotValidErrorMessageEnum._(r'Credential subject is not according to the vc schema');

  /// List of all possible values in this [enum][CredentialSubjectNotValidErrorMessageEnum].
  static const values = <CredentialSubjectNotValidErrorMessageEnum>[
    credentialSubjectIsNotAccordingToTheVcSchema,
  ];

  static CredentialSubjectNotValidErrorMessageEnum? fromJson(dynamic value) => CredentialSubjectNotValidErrorMessageEnumTypeTransformer().decode(value);

  static List<CredentialSubjectNotValidErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialSubjectNotValidErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialSubjectNotValidErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialSubjectNotValidErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CredentialSubjectNotValidErrorMessageEnum].
class CredentialSubjectNotValidErrorMessageEnumTypeTransformer {
  factory CredentialSubjectNotValidErrorMessageEnumTypeTransformer() => _instance ??= const CredentialSubjectNotValidErrorMessageEnumTypeTransformer._();

  const CredentialSubjectNotValidErrorMessageEnumTypeTransformer._();

  String encode(CredentialSubjectNotValidErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialSubjectNotValidErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialSubjectNotValidErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Credential subject is not according to the vc schema': return CredentialSubjectNotValidErrorMessageEnum.credentialSubjectIsNotAccordingToTheVcSchema;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialSubjectNotValidErrorMessageEnumTypeTransformer] instance.
  static CredentialSubjectNotValidErrorMessageEnumTypeTransformer? _instance;
}



class CredentialSubjectNotValidErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialSubjectNotValidErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CredentialSubjectNotValidErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CredentialSubjectNotValidErrorHttpStatusCodeEnum].
  static const values = <CredentialSubjectNotValidErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CredentialSubjectNotValidErrorHttpStatusCodeEnum? fromJson(dynamic value) => CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CredentialSubjectNotValidErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialSubjectNotValidErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialSubjectNotValidErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialSubjectNotValidErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CredentialSubjectNotValidErrorHttpStatusCodeEnum].
class CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer {
  factory CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer._();

  const CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CredentialSubjectNotValidErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialSubjectNotValidErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialSubjectNotValidErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CredentialSubjectNotValidErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CredentialSubjectNotValidErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


