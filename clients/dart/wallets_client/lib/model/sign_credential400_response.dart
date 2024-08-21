//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SignCredential400Response {
  /// Returns a new [SignCredential400Response] instance.
  SignCredential400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  SignCredential400ResponseNameEnum name;

  SignCredential400ResponseMessageEnum message;

  SignCredential400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ServiceErrorResponseDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SignCredential400Response &&
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
  String toString() => 'SignCredential400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [SignCredential400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SignCredential400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SignCredential400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SignCredential400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SignCredential400Response(
        name: SignCredential400ResponseNameEnum.fromJson(json[r'name'])!,
        message: SignCredential400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: SignCredential400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ServiceErrorResponseDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<SignCredential400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignCredential400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCredential400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SignCredential400Response> mapFromJson(dynamic json) {
    final map = <String, SignCredential400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SignCredential400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SignCredential400Response-objects as value to a dart map
  static Map<String, List<SignCredential400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SignCredential400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SignCredential400Response.listFromJson(entry.value, growable: growable,);
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


class SignCredential400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const SignCredential400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const signingFailedError = SignCredential400ResponseNameEnum._(r'SigningFailedError');

  /// List of all possible values in this [enum][SignCredential400ResponseNameEnum].
  static const values = <SignCredential400ResponseNameEnum>[
    signingFailedError,
  ];

  static SignCredential400ResponseNameEnum? fromJson(dynamic value) => SignCredential400ResponseNameEnumTypeTransformer().decode(value);

  static List<SignCredential400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignCredential400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCredential400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SignCredential400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [SignCredential400ResponseNameEnum].
class SignCredential400ResponseNameEnumTypeTransformer {
  factory SignCredential400ResponseNameEnumTypeTransformer() => _instance ??= const SignCredential400ResponseNameEnumTypeTransformer._();

  const SignCredential400ResponseNameEnumTypeTransformer._();

  String encode(SignCredential400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SignCredential400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SignCredential400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SigningFailedError': return SignCredential400ResponseNameEnum.signingFailedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SignCredential400ResponseNameEnumTypeTransformer] instance.
  static SignCredential400ResponseNameEnumTypeTransformer? _instance;
}



class SignCredential400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const SignCredential400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const signingFailedPeriod = SignCredential400ResponseMessageEnum._(r'Signing failed.');

  /// List of all possible values in this [enum][SignCredential400ResponseMessageEnum].
  static const values = <SignCredential400ResponseMessageEnum>[
    signingFailedPeriod,
  ];

  static SignCredential400ResponseMessageEnum? fromJson(dynamic value) => SignCredential400ResponseMessageEnumTypeTransformer().decode(value);

  static List<SignCredential400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignCredential400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCredential400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SignCredential400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [SignCredential400ResponseMessageEnum].
class SignCredential400ResponseMessageEnumTypeTransformer {
  factory SignCredential400ResponseMessageEnumTypeTransformer() => _instance ??= const SignCredential400ResponseMessageEnumTypeTransformer._();

  const SignCredential400ResponseMessageEnumTypeTransformer._();

  String encode(SignCredential400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SignCredential400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SignCredential400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Signing failed.': return SignCredential400ResponseMessageEnum.signingFailedPeriod;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SignCredential400ResponseMessageEnumTypeTransformer] instance.
  static SignCredential400ResponseMessageEnumTypeTransformer? _instance;
}



class SignCredential400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const SignCredential400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = SignCredential400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][SignCredential400ResponseHttpStatusCodeEnum].
  static const values = <SignCredential400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static SignCredential400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => SignCredential400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<SignCredential400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SignCredential400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SignCredential400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SignCredential400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [SignCredential400ResponseHttpStatusCodeEnum].
class SignCredential400ResponseHttpStatusCodeEnumTypeTransformer {
  factory SignCredential400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const SignCredential400ResponseHttpStatusCodeEnumTypeTransformer._();

  const SignCredential400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(SignCredential400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SignCredential400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SignCredential400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return SignCredential400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SignCredential400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static SignCredential400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


