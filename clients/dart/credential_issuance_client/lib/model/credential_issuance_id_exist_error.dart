//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialIssuanceIdExistError {
  /// Returns a new [CredentialIssuanceIdExistError] instance.
  CredentialIssuanceIdExistError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CredentialIssuanceIdExistErrorNameEnum name;

  CredentialIssuanceIdExistErrorMessageEnum message;

  CredentialIssuanceIdExistErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialIssuanceIdExistError &&
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
  String toString() => 'CredentialIssuanceIdExistError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CredentialIssuanceIdExistError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialIssuanceIdExistError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialIssuanceIdExistError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialIssuanceIdExistError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialIssuanceIdExistError(
        name: CredentialIssuanceIdExistErrorNameEnum.fromJson(json[r'name'])!,
        message: CredentialIssuanceIdExistErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CredentialIssuanceIdExistErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CredentialIssuanceIdExistError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialIssuanceIdExistError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialIssuanceIdExistError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialIssuanceIdExistError> mapFromJson(dynamic json) {
    final map = <String, CredentialIssuanceIdExistError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialIssuanceIdExistError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialIssuanceIdExistError-objects as value to a dart map
  static Map<String, List<CredentialIssuanceIdExistError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialIssuanceIdExistError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialIssuanceIdExistError.listFromJson(entry.value, growable: growable,);
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


class CredentialIssuanceIdExistErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialIssuanceIdExistErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialIssuanceIdExistError = CredentialIssuanceIdExistErrorNameEnum._(r'CredentialIssuanceIdExistError');

  /// List of all possible values in this [enum][CredentialIssuanceIdExistErrorNameEnum].
  static const values = <CredentialIssuanceIdExistErrorNameEnum>[
    credentialIssuanceIdExistError,
  ];

  static CredentialIssuanceIdExistErrorNameEnum? fromJson(dynamic value) => CredentialIssuanceIdExistErrorNameEnumTypeTransformer().decode(value);

  static List<CredentialIssuanceIdExistErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialIssuanceIdExistErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialIssuanceIdExistErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialIssuanceIdExistErrorNameEnum] to String,
/// and [decode] dynamic data back to [CredentialIssuanceIdExistErrorNameEnum].
class CredentialIssuanceIdExistErrorNameEnumTypeTransformer {
  factory CredentialIssuanceIdExistErrorNameEnumTypeTransformer() => _instance ??= const CredentialIssuanceIdExistErrorNameEnumTypeTransformer._();

  const CredentialIssuanceIdExistErrorNameEnumTypeTransformer._();

  String encode(CredentialIssuanceIdExistErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialIssuanceIdExistErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialIssuanceIdExistErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CredentialIssuanceIdExistError': return CredentialIssuanceIdExistErrorNameEnum.credentialIssuanceIdExistError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialIssuanceIdExistErrorNameEnumTypeTransformer] instance.
  static CredentialIssuanceIdExistErrorNameEnumTypeTransformer? _instance;
}



class CredentialIssuanceIdExistErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialIssuanceIdExistErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId = CredentialIssuanceIdExistErrorMessageEnum._(r'issuanceId exist for the project, please use different issuanceId');

  /// List of all possible values in this [enum][CredentialIssuanceIdExistErrorMessageEnum].
  static const values = <CredentialIssuanceIdExistErrorMessageEnum>[
    issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId,
  ];

  static CredentialIssuanceIdExistErrorMessageEnum? fromJson(dynamic value) => CredentialIssuanceIdExistErrorMessageEnumTypeTransformer().decode(value);

  static List<CredentialIssuanceIdExistErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialIssuanceIdExistErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialIssuanceIdExistErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialIssuanceIdExistErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CredentialIssuanceIdExistErrorMessageEnum].
class CredentialIssuanceIdExistErrorMessageEnumTypeTransformer {
  factory CredentialIssuanceIdExistErrorMessageEnumTypeTransformer() => _instance ??= const CredentialIssuanceIdExistErrorMessageEnumTypeTransformer._();

  const CredentialIssuanceIdExistErrorMessageEnumTypeTransformer._();

  String encode(CredentialIssuanceIdExistErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialIssuanceIdExistErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialIssuanceIdExistErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'issuanceId exist for the project, please use different issuanceId': return CredentialIssuanceIdExistErrorMessageEnum.issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialIssuanceIdExistErrorMessageEnumTypeTransformer] instance.
  static CredentialIssuanceIdExistErrorMessageEnumTypeTransformer? _instance;
}



class CredentialIssuanceIdExistErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialIssuanceIdExistErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CredentialIssuanceIdExistErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CredentialIssuanceIdExistErrorHttpStatusCodeEnum].
  static const values = <CredentialIssuanceIdExistErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CredentialIssuanceIdExistErrorHttpStatusCodeEnum? fromJson(dynamic value) => CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CredentialIssuanceIdExistErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialIssuanceIdExistErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialIssuanceIdExistErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialIssuanceIdExistErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CredentialIssuanceIdExistErrorHttpStatusCodeEnum].
class CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer {
  factory CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer._();

  const CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CredentialIssuanceIdExistErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialIssuanceIdExistErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialIssuanceIdExistErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CredentialIssuanceIdExistErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CredentialIssuanceIdExistErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


