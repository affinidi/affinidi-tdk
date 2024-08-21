//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetCredentialOffer400Response {
  /// Returns a new [GetCredentialOffer400Response] instance.
  GetCredentialOffer400Response({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  GetCredentialOffer400ResponseNameEnum name;

  GetCredentialOffer400ResponseMessageEnum message;

  GetCredentialOffer400ResponseHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetCredentialOffer400Response &&
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
  String toString() => 'GetCredentialOffer400Response[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [GetCredentialOffer400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetCredentialOffer400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetCredentialOffer400Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetCredentialOffer400Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetCredentialOffer400Response(
        name: GetCredentialOffer400ResponseNameEnum.fromJson(json[r'name'])!,
        message: GetCredentialOffer400ResponseMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: GetCredentialOffer400ResponseHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<GetCredentialOffer400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCredentialOffer400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCredentialOffer400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetCredentialOffer400Response> mapFromJson(dynamic json) {
    final map = <String, GetCredentialOffer400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetCredentialOffer400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetCredentialOffer400Response-objects as value to a dart map
  static Map<String, List<GetCredentialOffer400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetCredentialOffer400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetCredentialOffer400Response.listFromJson(entry.value, growable: growable,);
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


class GetCredentialOffer400ResponseNameEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCredentialOffer400ResponseNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const vcClaimedError = GetCredentialOffer400ResponseNameEnum._(r'VcClaimedError');

  /// List of all possible values in this [enum][GetCredentialOffer400ResponseNameEnum].
  static const values = <GetCredentialOffer400ResponseNameEnum>[
    vcClaimedError,
  ];

  static GetCredentialOffer400ResponseNameEnum? fromJson(dynamic value) => GetCredentialOffer400ResponseNameEnumTypeTransformer().decode(value);

  static List<GetCredentialOffer400ResponseNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCredentialOffer400ResponseNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCredentialOffer400ResponseNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetCredentialOffer400ResponseNameEnum] to String,
/// and [decode] dynamic data back to [GetCredentialOffer400ResponseNameEnum].
class GetCredentialOffer400ResponseNameEnumTypeTransformer {
  factory GetCredentialOffer400ResponseNameEnumTypeTransformer() => _instance ??= const GetCredentialOffer400ResponseNameEnumTypeTransformer._();

  const GetCredentialOffer400ResponseNameEnumTypeTransformer._();

  String encode(GetCredentialOffer400ResponseNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCredentialOffer400ResponseNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCredentialOffer400ResponseNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VcClaimedError': return GetCredentialOffer400ResponseNameEnum.vcClaimedError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCredentialOffer400ResponseNameEnumTypeTransformer] instance.
  static GetCredentialOffer400ResponseNameEnumTypeTransformer? _instance;
}



class GetCredentialOffer400ResponseMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCredentialOffer400ResponseMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const theRequestedVCHasAlreadyBeenClaimedByTheUser = GetCredentialOffer400ResponseMessageEnum._(r'The requested VC has already been claimed by the user');

  /// List of all possible values in this [enum][GetCredentialOffer400ResponseMessageEnum].
  static const values = <GetCredentialOffer400ResponseMessageEnum>[
    theRequestedVCHasAlreadyBeenClaimedByTheUser,
  ];

  static GetCredentialOffer400ResponseMessageEnum? fromJson(dynamic value) => GetCredentialOffer400ResponseMessageEnumTypeTransformer().decode(value);

  static List<GetCredentialOffer400ResponseMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCredentialOffer400ResponseMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCredentialOffer400ResponseMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetCredentialOffer400ResponseMessageEnum] to String,
/// and [decode] dynamic data back to [GetCredentialOffer400ResponseMessageEnum].
class GetCredentialOffer400ResponseMessageEnumTypeTransformer {
  factory GetCredentialOffer400ResponseMessageEnumTypeTransformer() => _instance ??= const GetCredentialOffer400ResponseMessageEnumTypeTransformer._();

  const GetCredentialOffer400ResponseMessageEnumTypeTransformer._();

  String encode(GetCredentialOffer400ResponseMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCredentialOffer400ResponseMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCredentialOffer400ResponseMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'The requested VC has already been claimed by the user': return GetCredentialOffer400ResponseMessageEnum.theRequestedVCHasAlreadyBeenClaimedByTheUser;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCredentialOffer400ResponseMessageEnumTypeTransformer] instance.
  static GetCredentialOffer400ResponseMessageEnumTypeTransformer? _instance;
}



class GetCredentialOffer400ResponseHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const GetCredentialOffer400ResponseHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = GetCredentialOffer400ResponseHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][GetCredentialOffer400ResponseHttpStatusCodeEnum].
  static const values = <GetCredentialOffer400ResponseHttpStatusCodeEnum>[
    number400,
  ];

  static GetCredentialOffer400ResponseHttpStatusCodeEnum? fromJson(dynamic value) => GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<GetCredentialOffer400ResponseHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetCredentialOffer400ResponseHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetCredentialOffer400ResponseHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GetCredentialOffer400ResponseHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [GetCredentialOffer400ResponseHttpStatusCodeEnum].
class GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer {
  factory GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer() => _instance ??= const GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer._();

  const GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer._();

  int encode(GetCredentialOffer400ResponseHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GetCredentialOffer400ResponseHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GetCredentialOffer400ResponseHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return GetCredentialOffer400ResponseHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer] instance.
  static GetCredentialOffer400ResponseHttpStatusCodeEnumTypeTransformer? _instance;
}


