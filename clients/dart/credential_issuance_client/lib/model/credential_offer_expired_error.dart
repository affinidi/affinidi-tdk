//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialOfferExpiredError {
  /// Returns a new [CredentialOfferExpiredError] instance.
  CredentialOfferExpiredError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CredentialOfferExpiredErrorNameEnum name;

  CredentialOfferExpiredErrorMessageEnum message;

  CredentialOfferExpiredErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialOfferExpiredError &&
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
  String toString() => 'CredentialOfferExpiredError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CredentialOfferExpiredError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialOfferExpiredError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialOfferExpiredError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialOfferExpiredError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialOfferExpiredError(
        name: CredentialOfferExpiredErrorNameEnum.fromJson(json[r'name'])!,
        message: CredentialOfferExpiredErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CredentialOfferExpiredErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CredentialOfferExpiredError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferExpiredError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferExpiredError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialOfferExpiredError> mapFromJson(dynamic json) {
    final map = <String, CredentialOfferExpiredError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialOfferExpiredError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialOfferExpiredError-objects as value to a dart map
  static Map<String, List<CredentialOfferExpiredError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialOfferExpiredError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialOfferExpiredError.listFromJson(entry.value, growable: growable,);
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


class CredentialOfferExpiredErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialOfferExpiredErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialOfferExpiredError = CredentialOfferExpiredErrorNameEnum._(r'CredentialOfferExpiredError');

  /// List of all possible values in this [enum][CredentialOfferExpiredErrorNameEnum].
  static const values = <CredentialOfferExpiredErrorNameEnum>[
    credentialOfferExpiredError,
  ];

  static CredentialOfferExpiredErrorNameEnum? fromJson(dynamic value) => CredentialOfferExpiredErrorNameEnumTypeTransformer().decode(value);

  static List<CredentialOfferExpiredErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferExpiredErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferExpiredErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialOfferExpiredErrorNameEnum] to String,
/// and [decode] dynamic data back to [CredentialOfferExpiredErrorNameEnum].
class CredentialOfferExpiredErrorNameEnumTypeTransformer {
  factory CredentialOfferExpiredErrorNameEnumTypeTransformer() => _instance ??= const CredentialOfferExpiredErrorNameEnumTypeTransformer._();

  const CredentialOfferExpiredErrorNameEnumTypeTransformer._();

  String encode(CredentialOfferExpiredErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialOfferExpiredErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialOfferExpiredErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CredentialOfferExpiredError': return CredentialOfferExpiredErrorNameEnum.credentialOfferExpiredError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialOfferExpiredErrorNameEnumTypeTransformer] instance.
  static CredentialOfferExpiredErrorNameEnumTypeTransformer? _instance;
}



class CredentialOfferExpiredErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialOfferExpiredErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialOfferIsExpired = CredentialOfferExpiredErrorMessageEnum._(r'Credential offer is expired');

  /// List of all possible values in this [enum][CredentialOfferExpiredErrorMessageEnum].
  static const values = <CredentialOfferExpiredErrorMessageEnum>[
    credentialOfferIsExpired,
  ];

  static CredentialOfferExpiredErrorMessageEnum? fromJson(dynamic value) => CredentialOfferExpiredErrorMessageEnumTypeTransformer().decode(value);

  static List<CredentialOfferExpiredErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferExpiredErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferExpiredErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialOfferExpiredErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CredentialOfferExpiredErrorMessageEnum].
class CredentialOfferExpiredErrorMessageEnumTypeTransformer {
  factory CredentialOfferExpiredErrorMessageEnumTypeTransformer() => _instance ??= const CredentialOfferExpiredErrorMessageEnumTypeTransformer._();

  const CredentialOfferExpiredErrorMessageEnumTypeTransformer._();

  String encode(CredentialOfferExpiredErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialOfferExpiredErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialOfferExpiredErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Credential offer is expired': return CredentialOfferExpiredErrorMessageEnum.credentialOfferIsExpired;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialOfferExpiredErrorMessageEnumTypeTransformer] instance.
  static CredentialOfferExpiredErrorMessageEnumTypeTransformer? _instance;
}



class CredentialOfferExpiredErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialOfferExpiredErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CredentialOfferExpiredErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CredentialOfferExpiredErrorHttpStatusCodeEnum].
  static const values = <CredentialOfferExpiredErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CredentialOfferExpiredErrorHttpStatusCodeEnum? fromJson(dynamic value) => CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CredentialOfferExpiredErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferExpiredErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferExpiredErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialOfferExpiredErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CredentialOfferExpiredErrorHttpStatusCodeEnum].
class CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer {
  factory CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer._();

  const CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CredentialOfferExpiredErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialOfferExpiredErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialOfferExpiredErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CredentialOfferExpiredErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CredentialOfferExpiredErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


