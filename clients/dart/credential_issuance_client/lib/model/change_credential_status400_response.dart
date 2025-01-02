//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ChangeCredentialStatus400Response {
  /// Returns a new [ChangeCredentialStatus400Response] instance.
  ChangeCredentialStatus400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ChangeCredentialStatus400ResponseNameEnum name;

  ChangeCredentialStatus400ResponseMessageEnum message;

  ChangeCredentialStatus400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChangeCredentialStatus400Response &&
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
  String toString() => 'ChangeCredentialStatus400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ChangeCredentialStatus400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChangeCredentialStatus400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChangeCredentialStatus400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChangeCredentialStatus400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChangeCredentialStatus400Response(
        name: ChangeCredentialStatus400ResponseNameEnum.fromJson(json[r'name'])!,
        message: ChangeCredentialStatus400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ChangeCredentialStatus400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ChangeCredentialStatus400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeCredentialStatus400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeCredentialStatus400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChangeCredentialStatus400Response> mapFromJson(dynamic json) {
    final map = <String, ChangeCredentialStatus400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChangeCredentialStatus400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChangeCredentialStatus400Response-objects as value to a dart map
  static Map<String, List<ChangeCredentialStatus400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChangeCredentialStatus400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChangeCredentialStatus400Response.listFromJson(entry.value, growable: growable,);
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


class ChangeCredentialStatus400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeCredentialStatus400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const changeStatusForbiddenError = ChangeCredentialStatus400ResponseNameEnum._(r'ChangeStatusForbiddenError');

  /// List of all possible values in this [enum][ChangeCredentialStatus400ResponseNameEnum].
  static const values = <ChangeCredentialStatus400ResponseNameEnum>[
    changeStatusForbiddenError,
  ];

  static ChangeCredentialStatus400ResponseNameEnum? fromJson(dynamic value) => ChangeCredentialStatus400ResponseNameEnumTypeTransformer().decode(value);

  static List<ChangeCredentialStatus400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeCredentialStatus400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeCredentialStatus400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeCredentialStatus400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [ChangeCredentialStatus400ResponseNameEnum].
class ChangeCredentialStatus400ResponseNameEnumTypeTransformer {
  factory ChangeCredentialStatus400ResponseNameEnumTypeTransformer() => _instance ??= const ChangeCredentialStatus400ResponseNameEnumTypeTransformer._();

  const ChangeCredentialStatus400ResponseNameEnumTypeTransformer._();

  String encode(ChangeCredentialStatus400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeCredentialStatus400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeCredentialStatus400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ChangeStatusForbiddenError': return ChangeCredentialStatus400ResponseNameEnum.changeStatusForbiddenError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeCredentialStatus400ResponseNameEnumTypeTransformer] instance.
  static ChangeCredentialStatus400ResponseNameEnumTypeTransformer? _instance;
}



class ChangeCredentialStatus400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeCredentialStatus400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const relatedVCStatusCannotBeChanged = ChangeCredentialStatus400ResponseMessageEnum._(r'Related VC status cannot be changed');

  /// List of all possible values in this [enum][ChangeCredentialStatus400ResponseMessageEnum].
  static const values = <ChangeCredentialStatus400ResponseMessageEnum>[
    relatedVCStatusCannotBeChanged,
  ];

  static ChangeCredentialStatus400ResponseMessageEnum? fromJson(dynamic value) => ChangeCredentialStatus400ResponseMessageEnumTypeTransformer().decode(value);

  static List<ChangeCredentialStatus400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeCredentialStatus400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeCredentialStatus400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeCredentialStatus400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [ChangeCredentialStatus400ResponseMessageEnum].
class ChangeCredentialStatus400ResponseMessageEnumTypeTransformer {
  factory ChangeCredentialStatus400ResponseMessageEnumTypeTransformer() => _instance ??= const ChangeCredentialStatus400ResponseMessageEnumTypeTransformer._();

  const ChangeCredentialStatus400ResponseMessageEnumTypeTransformer._();

  String encode(ChangeCredentialStatus400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeCredentialStatus400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeCredentialStatus400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Related VC status cannot be changed': return ChangeCredentialStatus400ResponseMessageEnum.relatedVCStatusCannotBeChanged;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeCredentialStatus400ResponseMessageEnumTypeTransformer] instance.
  static ChangeCredentialStatus400ResponseMessageEnumTypeTransformer? _instance;
}



class ChangeCredentialStatus400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ChangeCredentialStatus400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = ChangeCredentialStatus400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][ChangeCredentialStatus400ResponseHttpStatusCodeEnum].
  static const values = <ChangeCredentialStatus400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static ChangeCredentialStatus400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ChangeCredentialStatus400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChangeCredentialStatus400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChangeCredentialStatus400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ChangeCredentialStatus400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ChangeCredentialStatus400ResponseHttpStatusCodeEnum].
class ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer {
  factory ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer._();

  const ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(ChangeCredentialStatus400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ChangeCredentialStatus400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ChangeCredentialStatus400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return ChangeCredentialStatus400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static ChangeCredentialStatus400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


