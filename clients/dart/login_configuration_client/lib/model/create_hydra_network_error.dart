//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateHydraNetworkError {
  /// Returns a new [CreateHydraNetworkError] instance.
  CreateHydraNetworkError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CreateHydraNetworkErrorNameEnum name;

  CreateHydraNetworkErrorMessageEnum message;

  CreateHydraNetworkErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateHydraNetworkError &&
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
  String toString() => 'CreateHydraNetworkError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CreateHydraNetworkError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateHydraNetworkError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateHydraNetworkError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateHydraNetworkError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateHydraNetworkError(
        name: CreateHydraNetworkErrorNameEnum.fromJson(json[r'name'])!,
        message: CreateHydraNetworkErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CreateHydraNetworkErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CreateHydraNetworkError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateHydraNetworkError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateHydraNetworkError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateHydraNetworkError> mapFromJson(dynamic json) {
    final map = <String, CreateHydraNetworkError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateHydraNetworkError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateHydraNetworkError-objects as value to a dart map
  static Map<String, List<CreateHydraNetworkError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateHydraNetworkError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateHydraNetworkError.listFromJson(entry.value, growable: growable,);
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


class CreateHydraNetworkErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateHydraNetworkErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createHydraNetworkError = CreateHydraNetworkErrorNameEnum._(r'CreateHydraNetworkError');

  /// List of all possible values in this [enum][CreateHydraNetworkErrorNameEnum].
  static const values = <CreateHydraNetworkErrorNameEnum>[
    createHydraNetworkError,
  ];

  static CreateHydraNetworkErrorNameEnum? fromJson(dynamic value) => CreateHydraNetworkErrorNameEnumTypeTransformer().decode(value);

  static List<CreateHydraNetworkErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateHydraNetworkErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateHydraNetworkErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateHydraNetworkErrorNameEnum] to String,
/// and [decode] dynamic data back to [CreateHydraNetworkErrorNameEnum].
class CreateHydraNetworkErrorNameEnumTypeTransformer {
  factory CreateHydraNetworkErrorNameEnumTypeTransformer() => _instance ??= const CreateHydraNetworkErrorNameEnumTypeTransformer._();

  const CreateHydraNetworkErrorNameEnumTypeTransformer._();

  String encode(CreateHydraNetworkErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateHydraNetworkErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateHydraNetworkErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CreateHydraNetworkError': return CreateHydraNetworkErrorNameEnum.createHydraNetworkError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateHydraNetworkErrorNameEnumTypeTransformer] instance.
  static CreateHydraNetworkErrorNameEnumTypeTransformer? _instance;
}



class CreateHydraNetworkErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateHydraNetworkErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createHydraNetworkError = CreateHydraNetworkErrorMessageEnum._(r'CreateHydraNetworkError');

  /// List of all possible values in this [enum][CreateHydraNetworkErrorMessageEnum].
  static const values = <CreateHydraNetworkErrorMessageEnum>[
    createHydraNetworkError,
  ];

  static CreateHydraNetworkErrorMessageEnum? fromJson(dynamic value) => CreateHydraNetworkErrorMessageEnumTypeTransformer().decode(value);

  static List<CreateHydraNetworkErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateHydraNetworkErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateHydraNetworkErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateHydraNetworkErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CreateHydraNetworkErrorMessageEnum].
class CreateHydraNetworkErrorMessageEnumTypeTransformer {
  factory CreateHydraNetworkErrorMessageEnumTypeTransformer() => _instance ??= const CreateHydraNetworkErrorMessageEnumTypeTransformer._();

  const CreateHydraNetworkErrorMessageEnumTypeTransformer._();

  String encode(CreateHydraNetworkErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateHydraNetworkErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateHydraNetworkErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CreateHydraNetworkError': return CreateHydraNetworkErrorMessageEnum.createHydraNetworkError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateHydraNetworkErrorMessageEnumTypeTransformer] instance.
  static CreateHydraNetworkErrorMessageEnumTypeTransformer? _instance;
}



class CreateHydraNetworkErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateHydraNetworkErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CreateHydraNetworkErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CreateHydraNetworkErrorHttpStatusCodeEnum].
  static const values = <CreateHydraNetworkErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CreateHydraNetworkErrorHttpStatusCodeEnum? fromJson(dynamic value) => CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CreateHydraNetworkErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateHydraNetworkErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateHydraNetworkErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateHydraNetworkErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CreateHydraNetworkErrorHttpStatusCodeEnum].
class CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer {
  factory CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer._();

  const CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CreateHydraNetworkErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateHydraNetworkErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateHydraNetworkErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CreateHydraNetworkErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CreateHydraNetworkErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


