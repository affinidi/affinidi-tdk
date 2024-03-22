//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CompleteOtpOperation400Response {
  /// Returns a new [CompleteOtpOperation400Response] instance.
  CompleteOtpOperation400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CompleteOtpOperation400ResponseNameEnum name;

  CompleteOtpOperation400ResponseMessageEnum message;

  CompleteOtpOperation400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CompleteOtpOperation400Response &&
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
  String toString() => 'CompleteOtpOperation400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CompleteOtpOperation400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CompleteOtpOperation400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CompleteOtpOperation400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CompleteOtpOperation400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CompleteOtpOperation400Response(
        name: CompleteOtpOperation400ResponseNameEnum.fromJson(json[r'name'])!,
        message: CompleteOtpOperation400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CompleteOtpOperation400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CompleteOtpOperation400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteOtpOperation400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteOtpOperation400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CompleteOtpOperation400Response> mapFromJson(dynamic json) {
    final map = <String, CompleteOtpOperation400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CompleteOtpOperation400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CompleteOtpOperation400Response-objects as value to a dart map
  static Map<String, List<CompleteOtpOperation400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CompleteOtpOperation400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CompleteOtpOperation400Response.listFromJson(entry.value, growable: growable,);
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


class CompleteOtpOperation400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CompleteOtpOperation400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const codeMismatchExceptionError = CompleteOtpOperation400ResponseNameEnum._(r'CodeMismatchExceptionError');

  /// List of all possible values in this [enum][CompleteOtpOperation400ResponseNameEnum].
  static const values = <CompleteOtpOperation400ResponseNameEnum>[
    codeMismatchExceptionError,
  ];

  static CompleteOtpOperation400ResponseNameEnum? fromJson(dynamic value) => CompleteOtpOperation400ResponseNameEnumTypeTransformer().decode(value);

  static List<CompleteOtpOperation400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteOtpOperation400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteOtpOperation400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CompleteOtpOperation400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [CompleteOtpOperation400ResponseNameEnum].
class CompleteOtpOperation400ResponseNameEnumTypeTransformer {
  factory CompleteOtpOperation400ResponseNameEnumTypeTransformer() => _instance ??= const CompleteOtpOperation400ResponseNameEnumTypeTransformer._();

  const CompleteOtpOperation400ResponseNameEnumTypeTransformer._();

  String encode(CompleteOtpOperation400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CompleteOtpOperation400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CompleteOtpOperation400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CodeMismatchExceptionError': return CompleteOtpOperation400ResponseNameEnum.codeMismatchExceptionError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CompleteOtpOperation400ResponseNameEnumTypeTransformer] instance.
  static CompleteOtpOperation400ResponseNameEnumTypeTransformer? _instance;
}



class CompleteOtpOperation400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CompleteOtpOperation400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidCode = CompleteOtpOperation400ResponseMessageEnum._(r'Invalid code');

  /// List of all possible values in this [enum][CompleteOtpOperation400ResponseMessageEnum].
  static const values = <CompleteOtpOperation400ResponseMessageEnum>[
    invalidCode,
  ];

  static CompleteOtpOperation400ResponseMessageEnum? fromJson(dynamic value) => CompleteOtpOperation400ResponseMessageEnumTypeTransformer().decode(value);

  static List<CompleteOtpOperation400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteOtpOperation400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteOtpOperation400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CompleteOtpOperation400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [CompleteOtpOperation400ResponseMessageEnum].
class CompleteOtpOperation400ResponseMessageEnumTypeTransformer {
  factory CompleteOtpOperation400ResponseMessageEnumTypeTransformer() => _instance ??= const CompleteOtpOperation400ResponseMessageEnumTypeTransformer._();

  const CompleteOtpOperation400ResponseMessageEnumTypeTransformer._();

  String encode(CompleteOtpOperation400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CompleteOtpOperation400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CompleteOtpOperation400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Invalid code': return CompleteOtpOperation400ResponseMessageEnum.invalidCode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CompleteOtpOperation400ResponseMessageEnumTypeTransformer] instance.
  static CompleteOtpOperation400ResponseMessageEnumTypeTransformer? _instance;
}



class CompleteOtpOperation400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CompleteOtpOperation400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CompleteOtpOperation400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CompleteOtpOperation400ResponseHttpStatusCodeEnum].
  static const values = <CompleteOtpOperation400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static CompleteOtpOperation400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CompleteOtpOperation400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CompleteOtpOperation400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CompleteOtpOperation400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CompleteOtpOperation400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CompleteOtpOperation400ResponseHttpStatusCodeEnum].
class CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer {
  factory CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer._();

  const CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(CompleteOtpOperation400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CompleteOtpOperation400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CompleteOtpOperation400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CompleteOtpOperation400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static CompleteOtpOperation400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


