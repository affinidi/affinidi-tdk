//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CredentialOfferClaimedError {
  /// Returns a new [CredentialOfferClaimedError] instance.
  CredentialOfferClaimedError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CredentialOfferClaimedErrorNameEnum name;

  CredentialOfferClaimedErrorMessageEnum message;

  CredentialOfferClaimedErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CredentialOfferClaimedError &&
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
  String toString() => 'CredentialOfferClaimedError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CredentialOfferClaimedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CredentialOfferClaimedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CredentialOfferClaimedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CredentialOfferClaimedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CredentialOfferClaimedError(
        name: CredentialOfferClaimedErrorNameEnum.fromJson(json[r'name'])!,
        message: CredentialOfferClaimedErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CredentialOfferClaimedErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CredentialOfferClaimedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferClaimedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferClaimedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CredentialOfferClaimedError> mapFromJson(dynamic json) {
    final map = <String, CredentialOfferClaimedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CredentialOfferClaimedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CredentialOfferClaimedError-objects as value to a dart map
  static Map<String, List<CredentialOfferClaimedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CredentialOfferClaimedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CredentialOfferClaimedError.listFromJson(entry.value, growable: growable,);
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


class CredentialOfferClaimedErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialOfferClaimedErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialOfferClaimedError = CredentialOfferClaimedErrorNameEnum._(r'CredentialOfferClaimedError');

  /// List of all possible values in this [enum][CredentialOfferClaimedErrorNameEnum].
  static const values = <CredentialOfferClaimedErrorNameEnum>[
    credentialOfferClaimedError,
  ];

  static CredentialOfferClaimedErrorNameEnum? fromJson(dynamic value) => CredentialOfferClaimedErrorNameEnumTypeTransformer().decode(value);

  static List<CredentialOfferClaimedErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferClaimedErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferClaimedErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialOfferClaimedErrorNameEnum] to String,
/// and [decode] dynamic data back to [CredentialOfferClaimedErrorNameEnum].
class CredentialOfferClaimedErrorNameEnumTypeTransformer {
  factory CredentialOfferClaimedErrorNameEnumTypeTransformer() => _instance ??= const CredentialOfferClaimedErrorNameEnumTypeTransformer._();

  const CredentialOfferClaimedErrorNameEnumTypeTransformer._();

  String encode(CredentialOfferClaimedErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialOfferClaimedErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialOfferClaimedErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CredentialOfferClaimedError': return CredentialOfferClaimedErrorNameEnum.credentialOfferClaimedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialOfferClaimedErrorNameEnumTypeTransformer] instance.
  static CredentialOfferClaimedErrorNameEnumTypeTransformer? _instance;
}



class CredentialOfferClaimedErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialOfferClaimedErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialOfferIsAlreadyClaimed = CredentialOfferClaimedErrorMessageEnum._(r'Credential offer is already claimed');

  /// List of all possible values in this [enum][CredentialOfferClaimedErrorMessageEnum].
  static const values = <CredentialOfferClaimedErrorMessageEnum>[
    credentialOfferIsAlreadyClaimed,
  ];

  static CredentialOfferClaimedErrorMessageEnum? fromJson(dynamic value) => CredentialOfferClaimedErrorMessageEnumTypeTransformer().decode(value);

  static List<CredentialOfferClaimedErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferClaimedErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferClaimedErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialOfferClaimedErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CredentialOfferClaimedErrorMessageEnum].
class CredentialOfferClaimedErrorMessageEnumTypeTransformer {
  factory CredentialOfferClaimedErrorMessageEnumTypeTransformer() => _instance ??= const CredentialOfferClaimedErrorMessageEnumTypeTransformer._();

  const CredentialOfferClaimedErrorMessageEnumTypeTransformer._();

  String encode(CredentialOfferClaimedErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialOfferClaimedErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialOfferClaimedErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Credential offer is already claimed': return CredentialOfferClaimedErrorMessageEnum.credentialOfferIsAlreadyClaimed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialOfferClaimedErrorMessageEnumTypeTransformer] instance.
  static CredentialOfferClaimedErrorMessageEnumTypeTransformer? _instance;
}



class CredentialOfferClaimedErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CredentialOfferClaimedErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CredentialOfferClaimedErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CredentialOfferClaimedErrorHttpStatusCodeEnum].
  static const values = <CredentialOfferClaimedErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CredentialOfferClaimedErrorHttpStatusCodeEnum? fromJson(dynamic value) => CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CredentialOfferClaimedErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CredentialOfferClaimedErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CredentialOfferClaimedErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CredentialOfferClaimedErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CredentialOfferClaimedErrorHttpStatusCodeEnum].
class CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer {
  factory CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer._();

  const CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CredentialOfferClaimedErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CredentialOfferClaimedErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CredentialOfferClaimedErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CredentialOfferClaimedErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CredentialOfferClaimedErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


