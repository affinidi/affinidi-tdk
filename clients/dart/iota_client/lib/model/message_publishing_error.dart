//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MessagePublishingError {
  /// Returns a new [MessagePublishingError] instance.
  MessagePublishingError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  MessagePublishingErrorNameEnum name;

  MessagePublishingErrorMessageEnum message;

  MessagePublishingErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<InvalidParameterErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MessagePublishingError &&
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
  String toString() => 'MessagePublishingError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [MessagePublishingError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MessagePublishingError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MessagePublishingError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MessagePublishingError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MessagePublishingError(
        name: MessagePublishingErrorNameEnum.fromJson(json[r'name'])!,
        message: MessagePublishingErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: MessagePublishingErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: InvalidParameterErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<MessagePublishingError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessagePublishingError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessagePublishingError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MessagePublishingError> mapFromJson(dynamic json) {
    final map = <String, MessagePublishingError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MessagePublishingError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MessagePublishingError-objects as value to a dart map
  static Map<String, List<MessagePublishingError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MessagePublishingError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MessagePublishingError.listFromJson(entry.value, growable: growable,);
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


class MessagePublishingErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const MessagePublishingErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const messagePublishingError = MessagePublishingErrorNameEnum._(r'MessagePublishingError');

  /// List of all possible values in this [enum][MessagePublishingErrorNameEnum].
  static const values = <MessagePublishingErrorNameEnum>[
    messagePublishingError,
  ];

  static MessagePublishingErrorNameEnum? fromJson(dynamic value) => MessagePublishingErrorNameEnumTypeTransformer().decode(value);

  static List<MessagePublishingErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessagePublishingErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessagePublishingErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessagePublishingErrorNameEnum] to String,
/// and [decode] dynamic data back to [MessagePublishingErrorNameEnum].
class MessagePublishingErrorNameEnumTypeTransformer {
  factory MessagePublishingErrorNameEnumTypeTransformer() => _instance ??= const MessagePublishingErrorNameEnumTypeTransformer._();

  const MessagePublishingErrorNameEnumTypeTransformer._();

  String encode(MessagePublishingErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessagePublishingErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessagePublishingErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MessagePublishingError': return MessagePublishingErrorNameEnum.messagePublishingError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessagePublishingErrorNameEnumTypeTransformer] instance.
  static MessagePublishingErrorNameEnumTypeTransformer? _instance;
}



class MessagePublishingErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const MessagePublishingErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const notAbleToPublishMessagesToTopic = MessagePublishingErrorMessageEnum._(r'Not able to publish messages to topic');

  /// List of all possible values in this [enum][MessagePublishingErrorMessageEnum].
  static const values = <MessagePublishingErrorMessageEnum>[
    notAbleToPublishMessagesToTopic,
  ];

  static MessagePublishingErrorMessageEnum? fromJson(dynamic value) => MessagePublishingErrorMessageEnumTypeTransformer().decode(value);

  static List<MessagePublishingErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessagePublishingErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessagePublishingErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessagePublishingErrorMessageEnum] to String,
/// and [decode] dynamic data back to [MessagePublishingErrorMessageEnum].
class MessagePublishingErrorMessageEnumTypeTransformer {
  factory MessagePublishingErrorMessageEnumTypeTransformer() => _instance ??= const MessagePublishingErrorMessageEnumTypeTransformer._();

  const MessagePublishingErrorMessageEnumTypeTransformer._();

  String encode(MessagePublishingErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessagePublishingErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessagePublishingErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Not able to publish messages to topic': return MessagePublishingErrorMessageEnum.notAbleToPublishMessagesToTopic;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessagePublishingErrorMessageEnumTypeTransformer] instance.
  static MessagePublishingErrorMessageEnumTypeTransformer? _instance;
}



class MessagePublishingErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const MessagePublishingErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number500 = MessagePublishingErrorHttpStatusCodeEnum._(500);

  /// List of all possible values in this [enum][MessagePublishingErrorHttpStatusCodeEnum].
  static const values = <MessagePublishingErrorHttpStatusCodeEnum>[
    number500,
  ];

  static MessagePublishingErrorHttpStatusCodeEnum? fromJson(dynamic value) => MessagePublishingErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<MessagePublishingErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MessagePublishingErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MessagePublishingErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MessagePublishingErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [MessagePublishingErrorHttpStatusCodeEnum].
class MessagePublishingErrorHttpStatusCodeEnumTypeTransformer {
  factory MessagePublishingErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const MessagePublishingErrorHttpStatusCodeEnumTypeTransformer._();

  const MessagePublishingErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(MessagePublishingErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MessagePublishingErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MessagePublishingErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 500: return MessagePublishingErrorHttpStatusCodeEnum.number500;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MessagePublishingErrorHttpStatusCodeEnumTypeTransformer] instance.
  static MessagePublishingErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


