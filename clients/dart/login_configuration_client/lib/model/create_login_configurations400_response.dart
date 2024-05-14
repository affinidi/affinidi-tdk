//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateLoginConfigurations400Response {
  /// Returns a new [CreateLoginConfigurations400Response] instance.
  CreateLoginConfigurations400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CreateLoginConfigurations400ResponseNameEnum name;

  CreateLoginConfigurations400ResponseMessageEnum message;

  CreateLoginConfigurations400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLoginConfigurations400Response &&
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
  String toString() => 'CreateLoginConfigurations400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CreateLoginConfigurations400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLoginConfigurations400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLoginConfigurations400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLoginConfigurations400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLoginConfigurations400Response(
        name: CreateLoginConfigurations400ResponseNameEnum.fromJson(json[r'name'])!,
        message: CreateLoginConfigurations400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CreateLoginConfigurations400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CreateLoginConfigurations400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurations400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurations400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLoginConfigurations400Response> mapFromJson(dynamic json) {
    final map = <String, CreateLoginConfigurations400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLoginConfigurations400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLoginConfigurations400Response-objects as value to a dart map
  static Map<String, List<CreateLoginConfigurations400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLoginConfigurations400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLoginConfigurations400Response.listFromJson(entry.value, growable: growable,);
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


class CreateLoginConfigurations400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateLoginConfigurations400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createProjectNetworkError = CreateLoginConfigurations400ResponseNameEnum._(r'CreateProjectNetworkError');

  /// List of all possible values in this [enum][CreateLoginConfigurations400ResponseNameEnum].
  static const values = <CreateLoginConfigurations400ResponseNameEnum>[
    createProjectNetworkError,
  ];

  static CreateLoginConfigurations400ResponseNameEnum? fromJson(dynamic value) => CreateLoginConfigurations400ResponseNameEnumTypeTransformer().decode(value);

  static List<CreateLoginConfigurations400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurations400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurations400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateLoginConfigurations400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [CreateLoginConfigurations400ResponseNameEnum].
class CreateLoginConfigurations400ResponseNameEnumTypeTransformer {
  factory CreateLoginConfigurations400ResponseNameEnumTypeTransformer() => _instance ??= const CreateLoginConfigurations400ResponseNameEnumTypeTransformer._();

  const CreateLoginConfigurations400ResponseNameEnumTypeTransformer._();

  String encode(CreateLoginConfigurations400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateLoginConfigurations400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateLoginConfigurations400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CreateProjectNetworkError': return CreateLoginConfigurations400ResponseNameEnum.createProjectNetworkError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateLoginConfigurations400ResponseNameEnumTypeTransformer] instance.
  static CreateLoginConfigurations400ResponseNameEnumTypeTransformer? _instance;
}



class CreateLoginConfigurations400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateLoginConfigurations400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const createProjectNetworkError = CreateLoginConfigurations400ResponseMessageEnum._(r'CreateProjectNetworkError');

  /// List of all possible values in this [enum][CreateLoginConfigurations400ResponseMessageEnum].
  static const values = <CreateLoginConfigurations400ResponseMessageEnum>[
    createProjectNetworkError,
  ];

  static CreateLoginConfigurations400ResponseMessageEnum? fromJson(dynamic value) => CreateLoginConfigurations400ResponseMessageEnumTypeTransformer().decode(value);

  static List<CreateLoginConfigurations400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurations400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurations400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateLoginConfigurations400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [CreateLoginConfigurations400ResponseMessageEnum].
class CreateLoginConfigurations400ResponseMessageEnumTypeTransformer {
  factory CreateLoginConfigurations400ResponseMessageEnumTypeTransformer() => _instance ??= const CreateLoginConfigurations400ResponseMessageEnumTypeTransformer._();

  const CreateLoginConfigurations400ResponseMessageEnumTypeTransformer._();

  String encode(CreateLoginConfigurations400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateLoginConfigurations400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateLoginConfigurations400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CreateProjectNetworkError': return CreateLoginConfigurations400ResponseMessageEnum.createProjectNetworkError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateLoginConfigurations400ResponseMessageEnumTypeTransformer] instance.
  static CreateLoginConfigurations400ResponseMessageEnumTypeTransformer? _instance;
}



class CreateLoginConfigurations400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateLoginConfigurations400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CreateLoginConfigurations400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CreateLoginConfigurations400ResponseHttpStatusCodeEnum].
  static const values = <CreateLoginConfigurations400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static CreateLoginConfigurations400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CreateLoginConfigurations400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLoginConfigurations400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLoginConfigurations400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateLoginConfigurations400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CreateLoginConfigurations400ResponseHttpStatusCodeEnum].
class CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer {
  factory CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer._();

  const CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(CreateLoginConfigurations400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateLoginConfigurations400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateLoginConfigurations400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CreateLoginConfigurations400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static CreateLoginConfigurations400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


