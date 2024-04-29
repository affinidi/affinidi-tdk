//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class KeyNotFoundError {
  /// Returns a new [KeyNotFoundError] instance.
  KeyNotFoundError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  KeyNotFoundErrorNameEnum name;

  KeyNotFoundErrorMessageEnum message;

  KeyNotFoundErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KeyNotFoundError &&
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
  String toString() => 'KeyNotFoundError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [KeyNotFoundError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KeyNotFoundError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KeyNotFoundError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KeyNotFoundError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KeyNotFoundError(
        name: KeyNotFoundErrorNameEnum.fromJson(json[r'name'])!,
        message: KeyNotFoundErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: KeyNotFoundErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<KeyNotFoundError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyNotFoundError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyNotFoundError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KeyNotFoundError> mapFromJson(dynamic json) {
    final map = <String, KeyNotFoundError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KeyNotFoundError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KeyNotFoundError-objects as value to a dart map
  static Map<String, List<KeyNotFoundError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KeyNotFoundError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KeyNotFoundError.listFromJson(entry.value, growable: growable,);
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


class KeyNotFoundErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const KeyNotFoundErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const keyNotFoundError = KeyNotFoundErrorNameEnum._(r'KeyNotFoundError');

  /// List of all possible values in this [enum][KeyNotFoundErrorNameEnum].
  static const values = <KeyNotFoundErrorNameEnum>[
    keyNotFoundError,
  ];

  static KeyNotFoundErrorNameEnum? fromJson(dynamic value) => KeyNotFoundErrorNameEnumTypeTransformer().decode(value);

  static List<KeyNotFoundErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyNotFoundErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyNotFoundErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KeyNotFoundErrorNameEnum] to String,
/// and [decode] dynamic data back to [KeyNotFoundErrorNameEnum].
class KeyNotFoundErrorNameEnumTypeTransformer {
  factory KeyNotFoundErrorNameEnumTypeTransformer() => _instance ??= const KeyNotFoundErrorNameEnumTypeTransformer._();

  const KeyNotFoundErrorNameEnumTypeTransformer._();

  String encode(KeyNotFoundErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a KeyNotFoundErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KeyNotFoundErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'KeyNotFoundError': return KeyNotFoundErrorNameEnum.keyNotFoundError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [KeyNotFoundErrorNameEnumTypeTransformer] instance.
  static KeyNotFoundErrorNameEnumTypeTransformer? _instance;
}



class KeyNotFoundErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const KeyNotFoundErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const keyNotFound = KeyNotFoundErrorMessageEnum._(r'Key not found');

  /// List of all possible values in this [enum][KeyNotFoundErrorMessageEnum].
  static const values = <KeyNotFoundErrorMessageEnum>[
    keyNotFound,
  ];

  static KeyNotFoundErrorMessageEnum? fromJson(dynamic value) => KeyNotFoundErrorMessageEnumTypeTransformer().decode(value);

  static List<KeyNotFoundErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyNotFoundErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyNotFoundErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KeyNotFoundErrorMessageEnum] to String,
/// and [decode] dynamic data back to [KeyNotFoundErrorMessageEnum].
class KeyNotFoundErrorMessageEnumTypeTransformer {
  factory KeyNotFoundErrorMessageEnumTypeTransformer() => _instance ??= const KeyNotFoundErrorMessageEnumTypeTransformer._();

  const KeyNotFoundErrorMessageEnumTypeTransformer._();

  String encode(KeyNotFoundErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a KeyNotFoundErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KeyNotFoundErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Key not found': return KeyNotFoundErrorMessageEnum.keyNotFound;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [KeyNotFoundErrorMessageEnumTypeTransformer] instance.
  static KeyNotFoundErrorMessageEnumTypeTransformer? _instance;
}



class KeyNotFoundErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const KeyNotFoundErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number500 = KeyNotFoundErrorHttpStatusCodeEnum._(500);

  /// List of all possible values in this [enum][KeyNotFoundErrorHttpStatusCodeEnum].
  static const values = <KeyNotFoundErrorHttpStatusCodeEnum>[
    number500,
  ];

  static KeyNotFoundErrorHttpStatusCodeEnum? fromJson(dynamic value) => KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<KeyNotFoundErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KeyNotFoundErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KeyNotFoundErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [KeyNotFoundErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [KeyNotFoundErrorHttpStatusCodeEnum].
class KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer {
  factory KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer._();

  const KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(KeyNotFoundErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a KeyNotFoundErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  KeyNotFoundErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 500: return KeyNotFoundErrorHttpStatusCodeEnum.number500;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer] instance.
  static KeyNotFoundErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


