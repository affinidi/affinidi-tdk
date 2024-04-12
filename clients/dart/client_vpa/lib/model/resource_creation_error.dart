//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResourceCreationError {
  /// Returns a new [ResourceCreationError] instance.
  ResourceCreationError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ResourceCreationErrorNameEnum name;

  ResourceCreationErrorMessageEnum message;

  ResourceCreationErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResourceCreationError &&
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
  String toString() => 'ResourceCreationError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ResourceCreationError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResourceCreationError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ResourceCreationError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ResourceCreationError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ResourceCreationError(
        name: ResourceCreationErrorNameEnum.fromJson(json[r'name'])!,
        message: ResourceCreationErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ResourceCreationErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ResourceCreationError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceCreationError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceCreationError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResourceCreationError> mapFromJson(dynamic json) {
    final map = <String, ResourceCreationError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResourceCreationError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResourceCreationError-objects as value to a dart map
  static Map<String, List<ResourceCreationError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResourceCreationError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResourceCreationError.listFromJson(entry.value, growable: growable,);
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


class ResourceCreationErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceCreationErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const resourceCreationError = ResourceCreationErrorNameEnum._(r'ResourceCreationError');

  /// List of all possible values in this [enum][ResourceCreationErrorNameEnum].
  static const values = <ResourceCreationErrorNameEnum>[
    resourceCreationError,
  ];

  static ResourceCreationErrorNameEnum? fromJson(dynamic value) => ResourceCreationErrorNameEnumTypeTransformer().decode(value);

  static List<ResourceCreationErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceCreationErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceCreationErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ResourceCreationErrorNameEnum] to String,
/// and [decode] dynamic data back to [ResourceCreationErrorNameEnum].
class ResourceCreationErrorNameEnumTypeTransformer {
  factory ResourceCreationErrorNameEnumTypeTransformer() => _instance ??= const ResourceCreationErrorNameEnumTypeTransformer._();

  const ResourceCreationErrorNameEnumTypeTransformer._();

  String encode(ResourceCreationErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceCreationErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceCreationErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ResourceCreationError': return ResourceCreationErrorNameEnum.resourceCreationError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ResourceCreationErrorNameEnumTypeTransformer] instance.
  static ResourceCreationErrorNameEnumTypeTransformer? _instance;
}



class ResourceCreationErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceCreationErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const failedToCreateResourcesPeriod = ResourceCreationErrorMessageEnum._(r'Failed to create resources.');

  /// List of all possible values in this [enum][ResourceCreationErrorMessageEnum].
  static const values = <ResourceCreationErrorMessageEnum>[
    failedToCreateResourcesPeriod,
  ];

  static ResourceCreationErrorMessageEnum? fromJson(dynamic value) => ResourceCreationErrorMessageEnumTypeTransformer().decode(value);

  static List<ResourceCreationErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceCreationErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceCreationErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ResourceCreationErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ResourceCreationErrorMessageEnum].
class ResourceCreationErrorMessageEnumTypeTransformer {
  factory ResourceCreationErrorMessageEnumTypeTransformer() => _instance ??= const ResourceCreationErrorMessageEnumTypeTransformer._();

  const ResourceCreationErrorMessageEnumTypeTransformer._();

  String encode(ResourceCreationErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceCreationErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceCreationErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Failed to create resources.': return ResourceCreationErrorMessageEnum.failedToCreateResourcesPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ResourceCreationErrorMessageEnumTypeTransformer] instance.
  static ResourceCreationErrorMessageEnumTypeTransformer? _instance;
}



class ResourceCreationErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ResourceCreationErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number424 = ResourceCreationErrorHttpStatusCodeEnum._(424);

  /// List of all possible values in this [enum][ResourceCreationErrorHttpStatusCodeEnum].
  static const values = <ResourceCreationErrorHttpStatusCodeEnum>[
    number424,
  ];

  static ResourceCreationErrorHttpStatusCodeEnum? fromJson(dynamic value) => ResourceCreationErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ResourceCreationErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResourceCreationErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResourceCreationErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ResourceCreationErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ResourceCreationErrorHttpStatusCodeEnum].
class ResourceCreationErrorHttpStatusCodeEnumTypeTransformer {
  factory ResourceCreationErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ResourceCreationErrorHttpStatusCodeEnumTypeTransformer._();

  const ResourceCreationErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ResourceCreationErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ResourceCreationErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ResourceCreationErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 424: return ResourceCreationErrorHttpStatusCodeEnum.number424;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ResourceCreationErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ResourceCreationErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


