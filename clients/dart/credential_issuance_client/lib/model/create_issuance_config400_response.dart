//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateIssuanceConfig400Response {
  /// Returns a new [CreateIssuanceConfig400Response] instance.
  CreateIssuanceConfig400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CreateIssuanceConfig400ResponseNameEnum name;

  CreateIssuanceConfig400ResponseMessageEnum message;

  CreateIssuanceConfig400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateIssuanceConfig400Response &&
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
  String toString() => 'CreateIssuanceConfig400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CreateIssuanceConfig400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateIssuanceConfig400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateIssuanceConfig400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateIssuanceConfig400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateIssuanceConfig400Response(
        name: CreateIssuanceConfig400ResponseNameEnum.fromJson(json[r'name'])!,
        message: CreateIssuanceConfig400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CreateIssuanceConfig400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CreateIssuanceConfig400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIssuanceConfig400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIssuanceConfig400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateIssuanceConfig400Response> mapFromJson(dynamic json) {
    final map = <String, CreateIssuanceConfig400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateIssuanceConfig400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateIssuanceConfig400Response-objects as value to a dart map
  static Map<String, List<CreateIssuanceConfig400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateIssuanceConfig400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateIssuanceConfig400Response.listFromJson(entry.value, growable: growable,);
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


class CreateIssuanceConfig400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateIssuanceConfig400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidIssuerWalletError = CreateIssuanceConfig400ResponseNameEnum._(r'InvalidIssuerWalletError');

  /// List of all possible values in this [enum][CreateIssuanceConfig400ResponseNameEnum].
  static const values = <CreateIssuanceConfig400ResponseNameEnum>[
    invalidIssuerWalletError,
  ];

  static CreateIssuanceConfig400ResponseNameEnum? fromJson(dynamic value) => CreateIssuanceConfig400ResponseNameEnumTypeTransformer().decode(value);

  static List<CreateIssuanceConfig400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIssuanceConfig400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIssuanceConfig400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateIssuanceConfig400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [CreateIssuanceConfig400ResponseNameEnum].
class CreateIssuanceConfig400ResponseNameEnumTypeTransformer {
  factory CreateIssuanceConfig400ResponseNameEnumTypeTransformer() => _instance ??= const CreateIssuanceConfig400ResponseNameEnumTypeTransformer._();

  const CreateIssuanceConfig400ResponseNameEnumTypeTransformer._();

  String encode(CreateIssuanceConfig400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateIssuanceConfig400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateIssuanceConfig400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidIssuerWalletError': return CreateIssuanceConfig400ResponseNameEnum.invalidIssuerWalletError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateIssuanceConfig400ResponseNameEnumTypeTransformer] instance.
  static CreateIssuanceConfig400ResponseNameEnumTypeTransformer? _instance;
}



class CreateIssuanceConfig400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateIssuanceConfig400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const issuerWalletIdIsInvalid = CreateIssuanceConfig400ResponseMessageEnum._(r'issuer wallet id is invalid');

  /// List of all possible values in this [enum][CreateIssuanceConfig400ResponseMessageEnum].
  static const values = <CreateIssuanceConfig400ResponseMessageEnum>[
    issuerWalletIdIsInvalid,
  ];

  static CreateIssuanceConfig400ResponseMessageEnum? fromJson(dynamic value) => CreateIssuanceConfig400ResponseMessageEnumTypeTransformer().decode(value);

  static List<CreateIssuanceConfig400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIssuanceConfig400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIssuanceConfig400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateIssuanceConfig400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [CreateIssuanceConfig400ResponseMessageEnum].
class CreateIssuanceConfig400ResponseMessageEnumTypeTransformer {
  factory CreateIssuanceConfig400ResponseMessageEnumTypeTransformer() => _instance ??= const CreateIssuanceConfig400ResponseMessageEnumTypeTransformer._();

  const CreateIssuanceConfig400ResponseMessageEnumTypeTransformer._();

  String encode(CreateIssuanceConfig400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateIssuanceConfig400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateIssuanceConfig400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'issuer wallet id is invalid': return CreateIssuanceConfig400ResponseMessageEnum.issuerWalletIdIsInvalid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateIssuanceConfig400ResponseMessageEnumTypeTransformer] instance.
  static CreateIssuanceConfig400ResponseMessageEnumTypeTransformer? _instance;
}



class CreateIssuanceConfig400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateIssuanceConfig400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CreateIssuanceConfig400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CreateIssuanceConfig400ResponseHttpStatusCodeEnum].
  static const values = <CreateIssuanceConfig400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static CreateIssuanceConfig400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CreateIssuanceConfig400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateIssuanceConfig400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateIssuanceConfig400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateIssuanceConfig400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CreateIssuanceConfig400ResponseHttpStatusCodeEnum].
class CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer {
  factory CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer._();

  const CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(CreateIssuanceConfig400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateIssuanceConfig400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateIssuanceConfig400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CreateIssuanceConfig400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static CreateIssuanceConfig400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


