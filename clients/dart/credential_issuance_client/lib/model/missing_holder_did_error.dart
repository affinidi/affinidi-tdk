//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissingHolderDidError {
  /// Returns a new [MissingHolderDidError] instance.
  MissingHolderDidError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  MissingHolderDidErrorNameEnum name;

  MissingHolderDidErrorMessageEnum message;

  MissingHolderDidErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissingHolderDidError &&
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
  String toString() => 'MissingHolderDidError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [MissingHolderDidError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissingHolderDidError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissingHolderDidError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissingHolderDidError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissingHolderDidError(
        name: MissingHolderDidErrorNameEnum.fromJson(json[r'name'])!,
        message: MissingHolderDidErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: MissingHolderDidErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<MissingHolderDidError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissingHolderDidError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissingHolderDidError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissingHolderDidError> mapFromJson(dynamic json) {
    final map = <String, MissingHolderDidError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissingHolderDidError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissingHolderDidError-objects as value to a dart map
  static Map<String, List<MissingHolderDidError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissingHolderDidError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissingHolderDidError.listFromJson(entry.value, growable: growable,);
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


class MissingHolderDidErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const MissingHolderDidErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const missingHolderDidError = MissingHolderDidErrorNameEnum._(r'MissingHolderDidError');

  /// List of all possible values in this [enum][MissingHolderDidErrorNameEnum].
  static const values = <MissingHolderDidErrorNameEnum>[
    missingHolderDidError,
  ];

  static MissingHolderDidErrorNameEnum? fromJson(dynamic value) => MissingHolderDidErrorNameEnumTypeTransformer().decode(value);

  static List<MissingHolderDidErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissingHolderDidErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissingHolderDidErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissingHolderDidErrorNameEnum] to String,
/// and [decode] dynamic data back to [MissingHolderDidErrorNameEnum].
class MissingHolderDidErrorNameEnumTypeTransformer {
  factory MissingHolderDidErrorNameEnumTypeTransformer() => _instance ??= const MissingHolderDidErrorNameEnumTypeTransformer._();

  const MissingHolderDidErrorNameEnumTypeTransformer._();

  String encode(MissingHolderDidErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissingHolderDidErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissingHolderDidErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MissingHolderDidError': return MissingHolderDidErrorNameEnum.missingHolderDidError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissingHolderDidErrorNameEnumTypeTransformer] instance.
  static MissingHolderDidErrorNameEnumTypeTransformer? _instance;
}



class MissingHolderDidErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const MissingHolderDidErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const holderDIDIsRequiredInThisClaimMode = MissingHolderDidErrorMessageEnum._(r'holderDID is required in this claimMode');

  /// List of all possible values in this [enum][MissingHolderDidErrorMessageEnum].
  static const values = <MissingHolderDidErrorMessageEnum>[
    holderDIDIsRequiredInThisClaimMode,
  ];

  static MissingHolderDidErrorMessageEnum? fromJson(dynamic value) => MissingHolderDidErrorMessageEnumTypeTransformer().decode(value);

  static List<MissingHolderDidErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissingHolderDidErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissingHolderDidErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissingHolderDidErrorMessageEnum] to String,
/// and [decode] dynamic data back to [MissingHolderDidErrorMessageEnum].
class MissingHolderDidErrorMessageEnumTypeTransformer {
  factory MissingHolderDidErrorMessageEnumTypeTransformer() => _instance ??= const MissingHolderDidErrorMessageEnumTypeTransformer._();

  const MissingHolderDidErrorMessageEnumTypeTransformer._();

  String encode(MissingHolderDidErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissingHolderDidErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissingHolderDidErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'holderDID is required in this claimMode': return MissingHolderDidErrorMessageEnum.holderDIDIsRequiredInThisClaimMode;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissingHolderDidErrorMessageEnumTypeTransformer] instance.
  static MissingHolderDidErrorMessageEnumTypeTransformer? _instance;
}



class MissingHolderDidErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const MissingHolderDidErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = MissingHolderDidErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][MissingHolderDidErrorHttpStatusCodeEnum].
  static const values = <MissingHolderDidErrorHttpStatusCodeEnum>[
    number400,
  ];

  static MissingHolderDidErrorHttpStatusCodeEnum? fromJson(dynamic value) => MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<MissingHolderDidErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissingHolderDidErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissingHolderDidErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MissingHolderDidErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [MissingHolderDidErrorHttpStatusCodeEnum].
class MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer {
  factory MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer._();

  const MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(MissingHolderDidErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MissingHolderDidErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MissingHolderDidErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return MissingHolderDidErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer] instance.
  static MissingHolderDidErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


