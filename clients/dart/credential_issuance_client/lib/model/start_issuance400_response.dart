//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartIssuance400Response {
  /// Returns a new [StartIssuance400Response] instance.
  StartIssuance400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  StartIssuance400ResponseNameEnum name;

  StartIssuance400ResponseMessageEnum message;

  StartIssuance400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartIssuance400Response &&
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
  String toString() => 'StartIssuance400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [StartIssuance400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartIssuance400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartIssuance400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartIssuance400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartIssuance400Response(
        name: StartIssuance400ResponseNameEnum.fromJson(json[r'name'])!,
        message: StartIssuance400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: StartIssuance400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<StartIssuance400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuance400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuance400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartIssuance400Response> mapFromJson(dynamic json) {
    final map = <String, StartIssuance400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartIssuance400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartIssuance400Response-objects as value to a dart map
  static Map<String, List<StartIssuance400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartIssuance400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartIssuance400Response.listFromJson(entry.value, growable: growable,);
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


class StartIssuance400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const StartIssuance400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialIssuanceIdExistError = StartIssuance400ResponseNameEnum._(r'CredentialIssuanceIdExistError');

  /// List of all possible values in this [enum][StartIssuance400ResponseNameEnum].
  static const values = <StartIssuance400ResponseNameEnum>[
    credentialIssuanceIdExistError,
  ];

  static StartIssuance400ResponseNameEnum? fromJson(dynamic value) => StartIssuance400ResponseNameEnumTypeTransformer().decode(value);

  static List<StartIssuance400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuance400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuance400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartIssuance400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [StartIssuance400ResponseNameEnum].
class StartIssuance400ResponseNameEnumTypeTransformer {
  factory StartIssuance400ResponseNameEnumTypeTransformer() => _instance ??= const StartIssuance400ResponseNameEnumTypeTransformer._();

  const StartIssuance400ResponseNameEnumTypeTransformer._();

  String encode(StartIssuance400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartIssuance400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartIssuance400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CredentialIssuanceIdExistError': return StartIssuance400ResponseNameEnum.credentialIssuanceIdExistError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartIssuance400ResponseNameEnumTypeTransformer] instance.
  static StartIssuance400ResponseNameEnumTypeTransformer? _instance;
}



class StartIssuance400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const StartIssuance400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId = StartIssuance400ResponseMessageEnum._(r'issuanceId exist for the project, please use different issuanceId');

  /// List of all possible values in this [enum][StartIssuance400ResponseMessageEnum].
  static const values = <StartIssuance400ResponseMessageEnum>[
    issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId,
  ];

  static StartIssuance400ResponseMessageEnum? fromJson(dynamic value) => StartIssuance400ResponseMessageEnumTypeTransformer().decode(value);

  static List<StartIssuance400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuance400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuance400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartIssuance400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [StartIssuance400ResponseMessageEnum].
class StartIssuance400ResponseMessageEnumTypeTransformer {
  factory StartIssuance400ResponseMessageEnumTypeTransformer() => _instance ??= const StartIssuance400ResponseMessageEnumTypeTransformer._();

  const StartIssuance400ResponseMessageEnumTypeTransformer._();

  String encode(StartIssuance400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartIssuance400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartIssuance400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'issuanceId exist for the project, please use different issuanceId': return StartIssuance400ResponseMessageEnum.issuanceIdExistForTheProjectCommaPleaseUseDifferentIssuanceId;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartIssuance400ResponseMessageEnumTypeTransformer] instance.
  static StartIssuance400ResponseMessageEnumTypeTransformer? _instance;
}



class StartIssuance400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const StartIssuance400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = StartIssuance400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][StartIssuance400ResponseHttpStatusCodeEnum].
  static const values = <StartIssuance400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static StartIssuance400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<StartIssuance400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartIssuance400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartIssuance400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartIssuance400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [StartIssuance400ResponseHttpStatusCodeEnum].
class StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer {
  factory StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer._();

  const StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(StartIssuance400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartIssuance400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartIssuance400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return StartIssuance400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static StartIssuance400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


