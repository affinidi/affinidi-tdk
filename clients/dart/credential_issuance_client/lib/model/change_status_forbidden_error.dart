//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangeStatusForbiddenError {
  /// Returns a new [ChangeStatusForbiddenError] instance.
  ChangeStatusForbiddenError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ChangeStatusForbiddenErrorNameEnum name;

  ChangeStatusForbiddenErrorMessageEnum message;

  ChangeStatusForbiddenErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangeStatusForbiddenError &&
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
  String toString() => 'ChangeStatusForbiddenError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ChangeStatusForbiddenError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangeStatusForbiddenError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangeStatusForbiddenError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangeStatusForbiddenError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangeStatusForbiddenError(
        name: ChangeStatusForbiddenErrorNameEnum.fromJson(json[r'name'])!,
        message: ChangeStatusForbiddenErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ChangeStatusForbiddenErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ChangeStatusForbiddenError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeStatusForbiddenError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeStatusForbiddenError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangeStatusForbiddenError> mapFromJson(dynamic json) {
    final map = <String, ChangeStatusForbiddenError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangeStatusForbiddenError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangeStatusForbiddenError-objects as value to a dart map
  static Map<String, List<ChangeStatusForbiddenError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangeStatusForbiddenError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangeStatusForbiddenError.listFromJson(entry.value, growable: growable,);
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


class ChangeStatusForbiddenErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeStatusForbiddenErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const changeStatusForbiddenError = ChangeStatusForbiddenErrorNameEnum._(r'ChangeStatusForbiddenError');

  /// List of all possible values in this [enum][ChangeStatusForbiddenErrorNameEnum].
  static const values = <ChangeStatusForbiddenErrorNameEnum>[
    changeStatusForbiddenError,
  ];

  static ChangeStatusForbiddenErrorNameEnum? fromJson(dynamic value) => ChangeStatusForbiddenErrorNameEnumTypeTransformer().decode(value);

  static List<ChangeStatusForbiddenErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeStatusForbiddenErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeStatusForbiddenErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeStatusForbiddenErrorNameEnum] to String,
/// and [decode] dynamic data back to [ChangeStatusForbiddenErrorNameEnum].
class ChangeStatusForbiddenErrorNameEnumTypeTransformer {
  factory ChangeStatusForbiddenErrorNameEnumTypeTransformer() => _instance ??= const ChangeStatusForbiddenErrorNameEnumTypeTransformer._();

  const ChangeStatusForbiddenErrorNameEnumTypeTransformer._();

  String encode(ChangeStatusForbiddenErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeStatusForbiddenErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeStatusForbiddenErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ChangeStatusForbiddenError': return ChangeStatusForbiddenErrorNameEnum.changeStatusForbiddenError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeStatusForbiddenErrorNameEnumTypeTransformer] instance.
  static ChangeStatusForbiddenErrorNameEnumTypeTransformer? _instance;
}



class ChangeStatusForbiddenErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeStatusForbiddenErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const relatedVCStatusCannotBeChanged = ChangeStatusForbiddenErrorMessageEnum._(r'Related VC status cannot be changed');

  /// List of all possible values in this [enum][ChangeStatusForbiddenErrorMessageEnum].
  static const values = <ChangeStatusForbiddenErrorMessageEnum>[
    relatedVCStatusCannotBeChanged,
  ];

  static ChangeStatusForbiddenErrorMessageEnum? fromJson(dynamic value) => ChangeStatusForbiddenErrorMessageEnumTypeTransformer().decode(value);

  static List<ChangeStatusForbiddenErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeStatusForbiddenErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeStatusForbiddenErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeStatusForbiddenErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ChangeStatusForbiddenErrorMessageEnum].
class ChangeStatusForbiddenErrorMessageEnumTypeTransformer {
  factory ChangeStatusForbiddenErrorMessageEnumTypeTransformer() => _instance ??= const ChangeStatusForbiddenErrorMessageEnumTypeTransformer._();

  const ChangeStatusForbiddenErrorMessageEnumTypeTransformer._();

  String encode(ChangeStatusForbiddenErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeStatusForbiddenErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeStatusForbiddenErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Related VC status cannot be changed': return ChangeStatusForbiddenErrorMessageEnum.relatedVCStatusCannotBeChanged;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeStatusForbiddenErrorMessageEnumTypeTransformer] instance.
  static ChangeStatusForbiddenErrorMessageEnumTypeTransformer? _instance;
}



class ChangeStatusForbiddenErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeStatusForbiddenErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = ChangeStatusForbiddenErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][ChangeStatusForbiddenErrorHttpStatusCodeEnum].
  static const values = <ChangeStatusForbiddenErrorHttpStatusCodeEnum>[
    number400,
  ];

  static ChangeStatusForbiddenErrorHttpStatusCodeEnum? fromJson(dynamic value) => ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ChangeStatusForbiddenErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeStatusForbiddenErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeStatusForbiddenErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeStatusForbiddenErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ChangeStatusForbiddenErrorHttpStatusCodeEnum].
class ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer {
  factory ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  const ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ChangeStatusForbiddenErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeStatusForbiddenErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeStatusForbiddenErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return ChangeStatusForbiddenErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ChangeStatusForbiddenErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


