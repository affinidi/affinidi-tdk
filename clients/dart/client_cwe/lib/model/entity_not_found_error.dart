//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EntityNotFoundError {
  /// Returns a new [EntityNotFoundError] instance.
  EntityNotFoundError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  EntityNotFoundErrorNameEnum name;

  EntityNotFoundErrorMessageEnum message;

  EntityNotFoundErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EntityNotFoundError &&
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
  String toString() => 'EntityNotFoundError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [EntityNotFoundError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EntityNotFoundError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EntityNotFoundError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EntityNotFoundError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EntityNotFoundError(
        name: EntityNotFoundErrorNameEnum.fromJson(json[r'name'])!,
        message: EntityNotFoundErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: EntityNotFoundErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<EntityNotFoundError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityNotFoundError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityNotFoundError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EntityNotFoundError> mapFromJson(dynamic json) {
    final map = <String, EntityNotFoundError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EntityNotFoundError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EntityNotFoundError-objects as value to a dart map
  static Map<String, List<EntityNotFoundError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EntityNotFoundError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EntityNotFoundError.listFromJson(entry.value, growable: growable,);
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


class EntityNotFoundErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityNotFoundErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const entityNotFoundError = EntityNotFoundErrorNameEnum._(r'EntityNotFoundError');

  /// List of all possible values in this [enum][EntityNotFoundErrorNameEnum].
  static const values = <EntityNotFoundErrorNameEnum>[
    entityNotFoundError,
  ];

  static EntityNotFoundErrorNameEnum? fromJson(dynamic value) => EntityNotFoundErrorNameEnumTypeTransformer().decode(value);

  static List<EntityNotFoundErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityNotFoundErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityNotFoundErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityNotFoundErrorNameEnum] to String,
/// and [decode] dynamic data back to [EntityNotFoundErrorNameEnum].
class EntityNotFoundErrorNameEnumTypeTransformer {
  factory EntityNotFoundErrorNameEnumTypeTransformer() => _instance ??= const EntityNotFoundErrorNameEnumTypeTransformer._();

  const EntityNotFoundErrorNameEnumTypeTransformer._();

  String encode(EntityNotFoundErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityNotFoundErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityNotFoundErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EntityNotFoundError': return EntityNotFoundErrorNameEnum.entityNotFoundError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityNotFoundErrorNameEnumTypeTransformer] instance.
  static EntityNotFoundErrorNameEnumTypeTransformer? _instance;
}



class EntityNotFoundErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityNotFoundErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const entityNotFound = EntityNotFoundErrorMessageEnum._(r'Entity not found');

  /// List of all possible values in this [enum][EntityNotFoundErrorMessageEnum].
  static const values = <EntityNotFoundErrorMessageEnum>[
    entityNotFound,
  ];

  static EntityNotFoundErrorMessageEnum? fromJson(dynamic value) => EntityNotFoundErrorMessageEnumTypeTransformer().decode(value);

  static List<EntityNotFoundErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityNotFoundErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityNotFoundErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityNotFoundErrorMessageEnum] to String,
/// and [decode] dynamic data back to [EntityNotFoundErrorMessageEnum].
class EntityNotFoundErrorMessageEnumTypeTransformer {
  factory EntityNotFoundErrorMessageEnumTypeTransformer() => _instance ??= const EntityNotFoundErrorMessageEnumTypeTransformer._();

  const EntityNotFoundErrorMessageEnumTypeTransformer._();

  String encode(EntityNotFoundErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityNotFoundErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityNotFoundErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Entity not found': return EntityNotFoundErrorMessageEnum.entityNotFound;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityNotFoundErrorMessageEnumTypeTransformer] instance.
  static EntityNotFoundErrorMessageEnumTypeTransformer? _instance;
}



class EntityNotFoundErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const EntityNotFoundErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number404 = EntityNotFoundErrorHttpStatusCodeEnum._(404);

  /// List of all possible values in this [enum][EntityNotFoundErrorHttpStatusCodeEnum].
  static const values = <EntityNotFoundErrorHttpStatusCodeEnum>[
    number404,
  ];

  static EntityNotFoundErrorHttpStatusCodeEnum? fromJson(dynamic value) => EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<EntityNotFoundErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EntityNotFoundErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EntityNotFoundErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EntityNotFoundErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [EntityNotFoundErrorHttpStatusCodeEnum].
class EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer {
  factory EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer._();

  const EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(EntityNotFoundErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EntityNotFoundErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EntityNotFoundErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 404: return EntityNotFoundErrorHttpStatusCodeEnum.number404;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer] instance.
  static EntityNotFoundErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


