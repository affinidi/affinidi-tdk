//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateProjectNetworkError {
  /// Returns a new [CreateProjectNetworkError] instance.
  CreateProjectNetworkError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CreateProjectNetworkErrorNameEnum name;

  CreateProjectNetworkErrorMessageEnum message;

  CreateProjectNetworkErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateProjectNetworkError &&
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
  String toString() => 'CreateProjectNetworkError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CreateProjectNetworkError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateProjectNetworkError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateProjectNetworkError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateProjectNetworkError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateProjectNetworkError(
        name: CreateProjectNetworkErrorNameEnum.fromJson(json[r'name'])!,
        message: CreateProjectNetworkErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CreateProjectNetworkErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CreateProjectNetworkError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectNetworkError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectNetworkError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateProjectNetworkError> mapFromJson(dynamic json) {
    final map = <String, CreateProjectNetworkError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateProjectNetworkError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateProjectNetworkError-objects as value to a dart map
  static Map<String, List<CreateProjectNetworkError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateProjectNetworkError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateProjectNetworkError.listFromJson(entry.value, growable: growable,);
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


class CreateProjectNetworkErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateProjectNetworkErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createProjectNetworkError = CreateProjectNetworkErrorNameEnum._(r'CreateProjectNetworkError');

  /// List of all possible values in this [enum][CreateProjectNetworkErrorNameEnum].
  static const values = <CreateProjectNetworkErrorNameEnum>[
    createProjectNetworkError,
  ];

  static CreateProjectNetworkErrorNameEnum? fromJson(dynamic value) => CreateProjectNetworkErrorNameEnumTypeTransformer().decode(value);

  static List<CreateProjectNetworkErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectNetworkErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectNetworkErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateProjectNetworkErrorNameEnum] to String,
/// and [decode] dynamic data back to [CreateProjectNetworkErrorNameEnum].
class CreateProjectNetworkErrorNameEnumTypeTransformer {
  factory CreateProjectNetworkErrorNameEnumTypeTransformer() => _instance ??= const CreateProjectNetworkErrorNameEnumTypeTransformer._();

  const CreateProjectNetworkErrorNameEnumTypeTransformer._();

  String encode(CreateProjectNetworkErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateProjectNetworkErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateProjectNetworkErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CreateProjectNetworkError': return CreateProjectNetworkErrorNameEnum.createProjectNetworkError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateProjectNetworkErrorNameEnumTypeTransformer] instance.
  static CreateProjectNetworkErrorNameEnumTypeTransformer? _instance;
}



class CreateProjectNetworkErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateProjectNetworkErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createProjectNetworkError = CreateProjectNetworkErrorMessageEnum._(r'CreateProjectNetworkError');

  /// List of all possible values in this [enum][CreateProjectNetworkErrorMessageEnum].
  static const values = <CreateProjectNetworkErrorMessageEnum>[
    createProjectNetworkError,
  ];

  static CreateProjectNetworkErrorMessageEnum? fromJson(dynamic value) => CreateProjectNetworkErrorMessageEnumTypeTransformer().decode(value);

  static List<CreateProjectNetworkErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectNetworkErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectNetworkErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateProjectNetworkErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CreateProjectNetworkErrorMessageEnum].
class CreateProjectNetworkErrorMessageEnumTypeTransformer {
  factory CreateProjectNetworkErrorMessageEnumTypeTransformer() => _instance ??= const CreateProjectNetworkErrorMessageEnumTypeTransformer._();

  const CreateProjectNetworkErrorMessageEnumTypeTransformer._();

  String encode(CreateProjectNetworkErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateProjectNetworkErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateProjectNetworkErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CreateProjectNetworkError': return CreateProjectNetworkErrorMessageEnum.createProjectNetworkError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateProjectNetworkErrorMessageEnumTypeTransformer] instance.
  static CreateProjectNetworkErrorMessageEnumTypeTransformer? _instance;
}



class CreateProjectNetworkErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateProjectNetworkErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CreateProjectNetworkErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CreateProjectNetworkErrorHttpStatusCodeEnum].
  static const values = <CreateProjectNetworkErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CreateProjectNetworkErrorHttpStatusCodeEnum? fromJson(dynamic value) => CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CreateProjectNetworkErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateProjectNetworkErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateProjectNetworkErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateProjectNetworkErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CreateProjectNetworkErrorHttpStatusCodeEnum].
class CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer {
  factory CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer._();

  const CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CreateProjectNetworkErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateProjectNetworkErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateProjectNetworkErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CreateProjectNetworkErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CreateProjectNetworkErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


