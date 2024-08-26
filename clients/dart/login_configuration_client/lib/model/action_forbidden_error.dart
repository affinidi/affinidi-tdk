//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ActionForbiddenError {
  /// Returns a new [ActionForbiddenError] instance.
  ActionForbiddenError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ActionForbiddenErrorNameEnum name;

  ActionForbiddenErrorMessageEnum message;

  ActionForbiddenErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActionForbiddenError &&
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
  String toString() => 'ActionForbiddenError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ActionForbiddenError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActionForbiddenError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActionForbiddenError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActionForbiddenError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActionForbiddenError(
        name: ActionForbiddenErrorNameEnum.fromJson(json[r'name'])!,
        message: ActionForbiddenErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ActionForbiddenErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ActionForbiddenError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionForbiddenError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionForbiddenError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActionForbiddenError> mapFromJson(dynamic json) {
    final map = <String, ActionForbiddenError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActionForbiddenError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActionForbiddenError-objects as value to a dart map
  static Map<String, List<ActionForbiddenError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActionForbiddenError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActionForbiddenError.listFromJson(entry.value, growable: growable,);
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


class ActionForbiddenErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ActionForbiddenErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const actionForbiddenError = ActionForbiddenErrorNameEnum._(r'ActionForbiddenError');

  /// List of all possible values in this [enum][ActionForbiddenErrorNameEnum].
  static const values = <ActionForbiddenErrorNameEnum>[
    actionForbiddenError,
  ];

  static ActionForbiddenErrorNameEnum? fromJson(dynamic value) => ActionForbiddenErrorNameEnumTypeTransformer().decode(value);

  static List<ActionForbiddenErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionForbiddenErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionForbiddenErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ActionForbiddenErrorNameEnum] to String,
/// and [decode] dynamic data back to [ActionForbiddenErrorNameEnum].
class ActionForbiddenErrorNameEnumTypeTransformer {
  factory ActionForbiddenErrorNameEnumTypeTransformer() => _instance ??= const ActionForbiddenErrorNameEnumTypeTransformer._();

  const ActionForbiddenErrorNameEnumTypeTransformer._();

  String encode(ActionForbiddenErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ActionForbiddenErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ActionForbiddenErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ActionForbiddenError': return ActionForbiddenErrorNameEnum.actionForbiddenError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ActionForbiddenErrorNameEnumTypeTransformer] instance.
  static ActionForbiddenErrorNameEnumTypeTransformer? _instance;
}



class ActionForbiddenErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ActionForbiddenErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const principalCanNotExecuteActionOnGivenResource = ActionForbiddenErrorMessageEnum._(r'Principal can not execute action on given resource');

  /// List of all possible values in this [enum][ActionForbiddenErrorMessageEnum].
  static const values = <ActionForbiddenErrorMessageEnum>[
    principalCanNotExecuteActionOnGivenResource,
  ];

  static ActionForbiddenErrorMessageEnum? fromJson(dynamic value) => ActionForbiddenErrorMessageEnumTypeTransformer().decode(value);

  static List<ActionForbiddenErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionForbiddenErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionForbiddenErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ActionForbiddenErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ActionForbiddenErrorMessageEnum].
class ActionForbiddenErrorMessageEnumTypeTransformer {
  factory ActionForbiddenErrorMessageEnumTypeTransformer() => _instance ??= const ActionForbiddenErrorMessageEnumTypeTransformer._();

  const ActionForbiddenErrorMessageEnumTypeTransformer._();

  String encode(ActionForbiddenErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ActionForbiddenErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ActionForbiddenErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Principal can not execute action on given resource': return ActionForbiddenErrorMessageEnum.principalCanNotExecuteActionOnGivenResource;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ActionForbiddenErrorMessageEnumTypeTransformer] instance.
  static ActionForbiddenErrorMessageEnumTypeTransformer? _instance;
}



class ActionForbiddenErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ActionForbiddenErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number403 = ActionForbiddenErrorHttpStatusCodeEnum._(403);

  /// List of all possible values in this [enum][ActionForbiddenErrorHttpStatusCodeEnum].
  static const values = <ActionForbiddenErrorHttpStatusCodeEnum>[
    number403,
  ];

  static ActionForbiddenErrorHttpStatusCodeEnum? fromJson(dynamic value) => ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ActionForbiddenErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActionForbiddenErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActionForbiddenErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ActionForbiddenErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ActionForbiddenErrorHttpStatusCodeEnum].
class ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer {
  factory ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  const ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ActionForbiddenErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ActionForbiddenErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ActionForbiddenErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 403: return ActionForbiddenErrorHttpStatusCodeEnum.number403;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ActionForbiddenErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


