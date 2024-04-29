//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateCredentials400Response {
  /// Returns a new [GenerateCredentials400Response] instance.
  GenerateCredentials400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  GenerateCredentials400ResponseNameEnum name;

  GenerateCredentials400ResponseMessageEnum message;

  GenerateCredentials400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateCredentials400Response &&
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
  String toString() => 'GenerateCredentials400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [GenerateCredentials400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateCredentials400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateCredentials400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateCredentials400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateCredentials400Response(
        name: GenerateCredentials400ResponseNameEnum.fromJson(json[r'name'])!,
        message: GenerateCredentials400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: GenerateCredentials400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<GenerateCredentials400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateCredentials400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateCredentials400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateCredentials400Response> mapFromJson(dynamic json) {
    final map = <String, GenerateCredentials400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateCredentials400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateCredentials400Response-objects as value to a dart map
  static Map<String, List<GenerateCredentials400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateCredentials400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateCredentials400Response.listFromJson(entry.value, growable: growable,);
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


class GenerateCredentials400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateCredentials400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidProofError = GenerateCredentials400ResponseNameEnum._(r'InvalidProofError');

  /// List of all possible values in this [enum][GenerateCredentials400ResponseNameEnum].
  static const values = <GenerateCredentials400ResponseNameEnum>[
    invalidProofError,
  ];

  static GenerateCredentials400ResponseNameEnum? fromJson(dynamic value) => GenerateCredentials400ResponseNameEnumTypeTransformer().decode(value);

  static List<GenerateCredentials400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateCredentials400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateCredentials400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateCredentials400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [GenerateCredentials400ResponseNameEnum].
class GenerateCredentials400ResponseNameEnumTypeTransformer {
  factory GenerateCredentials400ResponseNameEnumTypeTransformer() => _instance ??= const GenerateCredentials400ResponseNameEnumTypeTransformer._();

  const GenerateCredentials400ResponseNameEnumTypeTransformer._();

  String encode(GenerateCredentials400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateCredentials400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateCredentials400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'InvalidProofError': return GenerateCredentials400ResponseNameEnum.invalidProofError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateCredentials400ResponseNameEnumTypeTransformer] instance.
  static GenerateCredentials400ResponseNameEnumTypeTransformer? _instance;
}



class GenerateCredentials400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateCredentials400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const theProofInTheCredentialRequestIsInvalid = GenerateCredentials400ResponseMessageEnum._(r'The proof in the Credential Request is invalid');

  /// List of all possible values in this [enum][GenerateCredentials400ResponseMessageEnum].
  static const values = <GenerateCredentials400ResponseMessageEnum>[
    theProofInTheCredentialRequestIsInvalid,
  ];

  static GenerateCredentials400ResponseMessageEnum? fromJson(dynamic value) => GenerateCredentials400ResponseMessageEnumTypeTransformer().decode(value);

  static List<GenerateCredentials400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateCredentials400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateCredentials400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateCredentials400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [GenerateCredentials400ResponseMessageEnum].
class GenerateCredentials400ResponseMessageEnumTypeTransformer {
  factory GenerateCredentials400ResponseMessageEnumTypeTransformer() => _instance ??= const GenerateCredentials400ResponseMessageEnumTypeTransformer._();

  const GenerateCredentials400ResponseMessageEnumTypeTransformer._();

  String encode(GenerateCredentials400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateCredentials400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateCredentials400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'The proof in the Credential Request is invalid': return GenerateCredentials400ResponseMessageEnum.theProofInTheCredentialRequestIsInvalid;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateCredentials400ResponseMessageEnumTypeTransformer] instance.
  static GenerateCredentials400ResponseMessageEnumTypeTransformer? _instance;
}



class GenerateCredentials400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateCredentials400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = GenerateCredentials400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][GenerateCredentials400ResponseHttpStatusCodeEnum].
  static const values = <GenerateCredentials400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static GenerateCredentials400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<GenerateCredentials400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateCredentials400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateCredentials400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateCredentials400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [GenerateCredentials400ResponseHttpStatusCodeEnum].
class GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer {
  factory GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer._();

  const GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(GenerateCredentials400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateCredentials400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateCredentials400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return GenerateCredentials400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static GenerateCredentials400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


