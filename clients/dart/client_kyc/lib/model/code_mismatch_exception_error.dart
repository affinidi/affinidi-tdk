//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CodeMismatchExceptionError {
  /// Returns a new [CodeMismatchExceptionError] instance.
  CodeMismatchExceptionError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  CodeMismatchExceptionErrorNameEnum name;

  CodeMismatchExceptionErrorMessageEnum message;

  CodeMismatchExceptionErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<RateLimitExceededErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeMismatchExceptionError &&
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
  String toString() => 'CodeMismatchExceptionError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [CodeMismatchExceptionError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeMismatchExceptionError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeMismatchExceptionError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeMismatchExceptionError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeMismatchExceptionError(
        name: CodeMismatchExceptionErrorNameEnum.fromJson(json[r'name'])!,
        message: CodeMismatchExceptionErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: CodeMismatchExceptionErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: RateLimitExceededErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<CodeMismatchExceptionError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeMismatchExceptionError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeMismatchExceptionError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeMismatchExceptionError> mapFromJson(dynamic json) {
    final map = <String, CodeMismatchExceptionError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeMismatchExceptionError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeMismatchExceptionError-objects as value to a dart map
  static Map<String, List<CodeMismatchExceptionError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeMismatchExceptionError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeMismatchExceptionError.listFromJson(entry.value, growable: growable,);
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


class CodeMismatchExceptionErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CodeMismatchExceptionErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const codeMismatchExceptionError = CodeMismatchExceptionErrorNameEnum._(r'CodeMismatchExceptionError');

  /// List of all possible values in this [enum][CodeMismatchExceptionErrorNameEnum].
  static const values = <CodeMismatchExceptionErrorNameEnum>[
    codeMismatchExceptionError,
  ];

  static CodeMismatchExceptionErrorNameEnum? fromJson(dynamic value) => CodeMismatchExceptionErrorNameEnumTypeTransformer().decode(value);

  static List<CodeMismatchExceptionErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeMismatchExceptionErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeMismatchExceptionErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CodeMismatchExceptionErrorNameEnum] to String,
/// and [decode] dynamic data back to [CodeMismatchExceptionErrorNameEnum].
class CodeMismatchExceptionErrorNameEnumTypeTransformer {
  factory CodeMismatchExceptionErrorNameEnumTypeTransformer() => _instance ??= const CodeMismatchExceptionErrorNameEnumTypeTransformer._();

  const CodeMismatchExceptionErrorNameEnumTypeTransformer._();

  String encode(CodeMismatchExceptionErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CodeMismatchExceptionErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CodeMismatchExceptionErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CodeMismatchExceptionError': return CodeMismatchExceptionErrorNameEnum.codeMismatchExceptionError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CodeMismatchExceptionErrorNameEnumTypeTransformer] instance.
  static CodeMismatchExceptionErrorNameEnumTypeTransformer? _instance;
}



class CodeMismatchExceptionErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const CodeMismatchExceptionErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const invalidCode = CodeMismatchExceptionErrorMessageEnum._(r'Invalid code');

  /// List of all possible values in this [enum][CodeMismatchExceptionErrorMessageEnum].
  static const values = <CodeMismatchExceptionErrorMessageEnum>[
    invalidCode,
  ];

  static CodeMismatchExceptionErrorMessageEnum? fromJson(dynamic value) => CodeMismatchExceptionErrorMessageEnumTypeTransformer().decode(value);

  static List<CodeMismatchExceptionErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeMismatchExceptionErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeMismatchExceptionErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CodeMismatchExceptionErrorMessageEnum] to String,
/// and [decode] dynamic data back to [CodeMismatchExceptionErrorMessageEnum].
class CodeMismatchExceptionErrorMessageEnumTypeTransformer {
  factory CodeMismatchExceptionErrorMessageEnumTypeTransformer() => _instance ??= const CodeMismatchExceptionErrorMessageEnumTypeTransformer._();

  const CodeMismatchExceptionErrorMessageEnumTypeTransformer._();

  String encode(CodeMismatchExceptionErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CodeMismatchExceptionErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CodeMismatchExceptionErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Invalid code': return CodeMismatchExceptionErrorMessageEnum.invalidCode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CodeMismatchExceptionErrorMessageEnumTypeTransformer] instance.
  static CodeMismatchExceptionErrorMessageEnumTypeTransformer? _instance;
}



class CodeMismatchExceptionErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const CodeMismatchExceptionErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = CodeMismatchExceptionErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][CodeMismatchExceptionErrorHttpStatusCodeEnum].
  static const values = <CodeMismatchExceptionErrorHttpStatusCodeEnum>[
    number400,
  ];

  static CodeMismatchExceptionErrorHttpStatusCodeEnum? fromJson(dynamic value) => CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<CodeMismatchExceptionErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeMismatchExceptionErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeMismatchExceptionErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CodeMismatchExceptionErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [CodeMismatchExceptionErrorHttpStatusCodeEnum].
class CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer {
  factory CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  const CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(CodeMismatchExceptionErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CodeMismatchExceptionErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CodeMismatchExceptionErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return CodeMismatchExceptionErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer] instance.
  static CodeMismatchExceptionErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


