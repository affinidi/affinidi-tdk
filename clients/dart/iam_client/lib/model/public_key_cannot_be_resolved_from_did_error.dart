//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PublicKeyCannotBeResolvedFromDidError {
  /// Returns a new [PublicKeyCannotBeResolvedFromDidError] instance.
  PublicKeyCannotBeResolvedFromDidError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  PublicKeyCannotBeResolvedFromDidErrorNameEnum name;

  PublicKeyCannotBeResolvedFromDidErrorMessageEnum message;

  PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublicKeyCannotBeResolvedFromDidError &&
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
  String toString() => 'PublicKeyCannotBeResolvedFromDidError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [PublicKeyCannotBeResolvedFromDidError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublicKeyCannotBeResolvedFromDidError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublicKeyCannotBeResolvedFromDidError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublicKeyCannotBeResolvedFromDidError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublicKeyCannotBeResolvedFromDidError(
        name: PublicKeyCannotBeResolvedFromDidErrorNameEnum.fromJson(json[r'name'])!,
        message: PublicKeyCannotBeResolvedFromDidErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<PublicKeyCannotBeResolvedFromDidError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicKeyCannotBeResolvedFromDidError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicKeyCannotBeResolvedFromDidError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublicKeyCannotBeResolvedFromDidError> mapFromJson(dynamic json) {
    final map = <String, PublicKeyCannotBeResolvedFromDidError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublicKeyCannotBeResolvedFromDidError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublicKeyCannotBeResolvedFromDidError-objects as value to a dart map
  static Map<String, List<PublicKeyCannotBeResolvedFromDidError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublicKeyCannotBeResolvedFromDidError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublicKeyCannotBeResolvedFromDidError.listFromJson(entry.value, growable: growable,);
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


class PublicKeyCannotBeResolvedFromDidErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicKeyCannotBeResolvedFromDidErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const publicKeyCannotBeResolvedFromDidError = PublicKeyCannotBeResolvedFromDidErrorNameEnum._(r'PublicKeyCannotBeResolvedFromDidError');

  /// List of all possible values in this [enum][PublicKeyCannotBeResolvedFromDidErrorNameEnum].
  static const values = <PublicKeyCannotBeResolvedFromDidErrorNameEnum>[
    publicKeyCannotBeResolvedFromDidError,
  ];

  static PublicKeyCannotBeResolvedFromDidErrorNameEnum? fromJson(dynamic value) => PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer().decode(value);

  static List<PublicKeyCannotBeResolvedFromDidErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicKeyCannotBeResolvedFromDidErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicKeyCannotBeResolvedFromDidErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicKeyCannotBeResolvedFromDidErrorNameEnum] to String,
/// and [decode] dynamic data back to [PublicKeyCannotBeResolvedFromDidErrorNameEnum].
class PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer {
  factory PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer() => _instance ??= const PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer._();

  const PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer._();

  String encode(PublicKeyCannotBeResolvedFromDidErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicKeyCannotBeResolvedFromDidErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicKeyCannotBeResolvedFromDidErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PublicKeyCannotBeResolvedFromDidError': return PublicKeyCannotBeResolvedFromDidErrorNameEnum.publicKeyCannotBeResolvedFromDidError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer] instance.
  static PublicKeyCannotBeResolvedFromDidErrorNameEnumTypeTransformer? _instance;
}



class PublicKeyCannotBeResolvedFromDidErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicKeyCannotBeResolvedFromDidErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const unableToResolveDIDMethodPeriodInvalidPublicKey = PublicKeyCannotBeResolvedFromDidErrorMessageEnum._(r'Unable to resolve DID method. Invalid public key');

  /// List of all possible values in this [enum][PublicKeyCannotBeResolvedFromDidErrorMessageEnum].
  static const values = <PublicKeyCannotBeResolvedFromDidErrorMessageEnum>[
    unableToResolveDIDMethodPeriodInvalidPublicKey,
  ];

  static PublicKeyCannotBeResolvedFromDidErrorMessageEnum? fromJson(dynamic value) => PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer().decode(value);

  static List<PublicKeyCannotBeResolvedFromDidErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicKeyCannotBeResolvedFromDidErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicKeyCannotBeResolvedFromDidErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicKeyCannotBeResolvedFromDidErrorMessageEnum] to String,
/// and [decode] dynamic data back to [PublicKeyCannotBeResolvedFromDidErrorMessageEnum].
class PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer {
  factory PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer() => _instance ??= const PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer._();

  const PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer._();

  String encode(PublicKeyCannotBeResolvedFromDidErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicKeyCannotBeResolvedFromDidErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicKeyCannotBeResolvedFromDidErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Unable to resolve DID method. Invalid public key': return PublicKeyCannotBeResolvedFromDidErrorMessageEnum.unableToResolveDIDMethodPeriodInvalidPublicKey;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer] instance.
  static PublicKeyCannotBeResolvedFromDidErrorMessageEnumTypeTransformer? _instance;
}



class PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum].
  static const values = <PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum>[
    number400,
  ];

  static PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum? fromJson(dynamic value) => PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum].
class PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer {
  factory PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer._();

  const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer] instance.
  static PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


