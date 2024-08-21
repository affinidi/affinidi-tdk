//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResourceLimitExceededError {
  /// Returns a new [ResourceLimitExceededError] instance.
  ResourceLimitExceededError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ResourceLimitExceededErrorNameEnum name;

  ResourceLimitExceededErrorMessageEnum message;

  ResourceLimitExceededErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceLimitExceededError &&
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
  String toString() => 'ResourceLimitExceededError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ResourceLimitExceededError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceLimitExceededError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResourceLimitExceededError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResourceLimitExceededError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceLimitExceededError(
        name: ResourceLimitExceededErrorNameEnum.fromJson(json[r'name'])!,
        message: ResourceLimitExceededErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ResourceLimitExceededErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ResourceLimitExceededError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceLimitExceededError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceLimitExceededError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceLimitExceededError> mapFromJson(dynamic json) {
    final map = <String, ResourceLimitExceededError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceLimitExceededError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceLimitExceededError-objects as value to a dart map
  static Map<String, List<ResourceLimitExceededError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResourceLimitExceededError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceLimitExceededError.listFromJson(entry.value, growable: growable,);
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


class ResourceLimitExceededErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceLimitExceededErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const resourceLimitExceededError = ResourceLimitExceededErrorNameEnum._(r'ResourceLimitExceededError');

  /// List of all possible values in this [enum][ResourceLimitExceededErrorNameEnum].
  static const values = <ResourceLimitExceededErrorNameEnum>[
    resourceLimitExceededError,
  ];

  static ResourceLimitExceededErrorNameEnum? fromJson(dynamic value) => ResourceLimitExceededErrorNameEnumTypeTransformer().decode(value);

  static List<ResourceLimitExceededErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceLimitExceededErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceLimitExceededErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ResourceLimitExceededErrorNameEnum] to String,
/// and [decode] dynamic data back to [ResourceLimitExceededErrorNameEnum].
class ResourceLimitExceededErrorNameEnumTypeTransformer {
  factory ResourceLimitExceededErrorNameEnumTypeTransformer() => _instance ??= const ResourceLimitExceededErrorNameEnumTypeTransformer._();

  const ResourceLimitExceededErrorNameEnumTypeTransformer._();

  String encode(ResourceLimitExceededErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceLimitExceededErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceLimitExceededErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ResourceLimitExceededError': return ResourceLimitExceededErrorNameEnum.resourceLimitExceededError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ResourceLimitExceededErrorNameEnumTypeTransformer] instance.
  static ResourceLimitExceededErrorNameEnumTypeTransformer? _instance;
}



class ResourceLimitExceededErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceLimitExceededErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod = ResourceLimitExceededErrorMessageEnum._(r'Resource limit exceeded: ${param}.');

  /// List of all possible values in this [enum][ResourceLimitExceededErrorMessageEnum].
  static const values = <ResourceLimitExceededErrorMessageEnum>[
    resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
  ];

  static ResourceLimitExceededErrorMessageEnum? fromJson(dynamic value) => ResourceLimitExceededErrorMessageEnumTypeTransformer().decode(value);

  static List<ResourceLimitExceededErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceLimitExceededErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceLimitExceededErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ResourceLimitExceededErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ResourceLimitExceededErrorMessageEnum].
class ResourceLimitExceededErrorMessageEnumTypeTransformer {
  factory ResourceLimitExceededErrorMessageEnumTypeTransformer() => _instance ??= const ResourceLimitExceededErrorMessageEnumTypeTransformer._();

  const ResourceLimitExceededErrorMessageEnumTypeTransformer._();

  String encode(ResourceLimitExceededErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceLimitExceededErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceLimitExceededErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Resource limit exceeded: ${param}.': return ResourceLimitExceededErrorMessageEnum.resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ResourceLimitExceededErrorMessageEnumTypeTransformer] instance.
  static ResourceLimitExceededErrorMessageEnumTypeTransformer? _instance;
}



class ResourceLimitExceededErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceLimitExceededErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number422 = ResourceLimitExceededErrorHttpStatusCodeEnum._(422);

  /// List of all possible values in this [enum][ResourceLimitExceededErrorHttpStatusCodeEnum].
  static const values = <ResourceLimitExceededErrorHttpStatusCodeEnum>[
    number422,
  ];

  static ResourceLimitExceededErrorHttpStatusCodeEnum? fromJson(dynamic value) => ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ResourceLimitExceededErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceLimitExceededErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceLimitExceededErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ResourceLimitExceededErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ResourceLimitExceededErrorHttpStatusCodeEnum].
class ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer {
  factory ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer._();

  const ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ResourceLimitExceededErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceLimitExceededErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceLimitExceededErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 422: return ResourceLimitExceededErrorHttpStatusCodeEnum.number422;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ResourceLimitExceededErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


