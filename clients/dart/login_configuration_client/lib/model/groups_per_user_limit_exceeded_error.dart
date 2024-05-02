//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GroupsPerUserLimitExceededError {
  /// Returns a new [GroupsPerUserLimitExceededError] instance.
  GroupsPerUserLimitExceededError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  GroupsPerUserLimitExceededErrorNameEnum name;

  GroupsPerUserLimitExceededErrorMessageEnum message;

  GroupsPerUserLimitExceededErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupsPerUserLimitExceededError &&
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
  String toString() => 'GroupsPerUserLimitExceededError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [GroupsPerUserLimitExceededError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupsPerUserLimitExceededError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupsPerUserLimitExceededError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupsPerUserLimitExceededError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupsPerUserLimitExceededError(
        name: GroupsPerUserLimitExceededErrorNameEnum.fromJson(json[r'name'])!,
        message: GroupsPerUserLimitExceededErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: GroupsPerUserLimitExceededErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<GroupsPerUserLimitExceededError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupsPerUserLimitExceededError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupsPerUserLimitExceededError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupsPerUserLimitExceededError> mapFromJson(dynamic json) {
    final map = <String, GroupsPerUserLimitExceededError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupsPerUserLimitExceededError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupsPerUserLimitExceededError-objects as value to a dart map
  static Map<String, List<GroupsPerUserLimitExceededError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupsPerUserLimitExceededError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupsPerUserLimitExceededError.listFromJson(entry.value, growable: growable,);
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


class GroupsPerUserLimitExceededErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupsPerUserLimitExceededErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const groupsPerUserLimitExceededError = GroupsPerUserLimitExceededErrorNameEnum._(r'GroupsPerUserLimitExceededError');

  /// List of all possible values in this [enum][GroupsPerUserLimitExceededErrorNameEnum].
  static const values = <GroupsPerUserLimitExceededErrorNameEnum>[
    groupsPerUserLimitExceededError,
  ];

  static GroupsPerUserLimitExceededErrorNameEnum? fromJson(dynamic value) => GroupsPerUserLimitExceededErrorNameEnumTypeTransformer().decode(value);

  static List<GroupsPerUserLimitExceededErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupsPerUserLimitExceededErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupsPerUserLimitExceededErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupsPerUserLimitExceededErrorNameEnum] to String,
/// and [decode] dynamic data back to [GroupsPerUserLimitExceededErrorNameEnum].
class GroupsPerUserLimitExceededErrorNameEnumTypeTransformer {
  factory GroupsPerUserLimitExceededErrorNameEnumTypeTransformer() => _instance ??= const GroupsPerUserLimitExceededErrorNameEnumTypeTransformer._();

  const GroupsPerUserLimitExceededErrorNameEnumTypeTransformer._();

  String encode(GroupsPerUserLimitExceededErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupsPerUserLimitExceededErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupsPerUserLimitExceededErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GroupsPerUserLimitExceededError': return GroupsPerUserLimitExceededErrorNameEnum.groupsPerUserLimitExceededError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupsPerUserLimitExceededErrorNameEnumTypeTransformer] instance.
  static GroupsPerUserLimitExceededErrorNameEnumTypeTransformer? _instance;
}



class GroupsPerUserLimitExceededErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupsPerUserLimitExceededErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const amountOfGroupsPerUserIsLimitedPeriod = GroupsPerUserLimitExceededErrorMessageEnum._(r'Amount of groups per user is limited.');

  /// List of all possible values in this [enum][GroupsPerUserLimitExceededErrorMessageEnum].
  static const values = <GroupsPerUserLimitExceededErrorMessageEnum>[
    amountOfGroupsPerUserIsLimitedPeriod,
  ];

  static GroupsPerUserLimitExceededErrorMessageEnum? fromJson(dynamic value) => GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer().decode(value);

  static List<GroupsPerUserLimitExceededErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupsPerUserLimitExceededErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupsPerUserLimitExceededErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupsPerUserLimitExceededErrorMessageEnum] to String,
/// and [decode] dynamic data back to [GroupsPerUserLimitExceededErrorMessageEnum].
class GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer {
  factory GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer() => _instance ??= const GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer._();

  const GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer._();

  String encode(GroupsPerUserLimitExceededErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupsPerUserLimitExceededErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupsPerUserLimitExceededErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Amount of groups per user is limited.': return GroupsPerUserLimitExceededErrorMessageEnum.amountOfGroupsPerUserIsLimitedPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer] instance.
  static GroupsPerUserLimitExceededErrorMessageEnumTypeTransformer? _instance;
}



class GroupsPerUserLimitExceededErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupsPerUserLimitExceededErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number409 = GroupsPerUserLimitExceededErrorHttpStatusCodeEnum._(409);

  /// List of all possible values in this [enum][GroupsPerUserLimitExceededErrorHttpStatusCodeEnum].
  static const values = <GroupsPerUserLimitExceededErrorHttpStatusCodeEnum>[
    number409,
  ];

  static GroupsPerUserLimitExceededErrorHttpStatusCodeEnum? fromJson(dynamic value) => GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<GroupsPerUserLimitExceededErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupsPerUserLimitExceededErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupsPerUserLimitExceededErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupsPerUserLimitExceededErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [GroupsPerUserLimitExceededErrorHttpStatusCodeEnum].
class GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer {
  factory GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer._();

  const GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(GroupsPerUserLimitExceededErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupsPerUserLimitExceededErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupsPerUserLimitExceededErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 409: return GroupsPerUserLimitExceededErrorHttpStatusCodeEnum.number409;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer] instance.
  static GroupsPerUserLimitExceededErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


