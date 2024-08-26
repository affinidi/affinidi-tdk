//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RedirectResponse {
  /// Returns a new [RedirectResponse] instance.
  RedirectResponse({
    required this.type,
    required this.to,
  });

  /// type
  RedirectResponseTypeEnum type;

  /// URL to redirect to
  String to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RedirectResponse &&
    other.type == type &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (to.hashCode);

  @override
  String toString() => 'RedirectResponse[type=$type, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [RedirectResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RedirectResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RedirectResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RedirectResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RedirectResponse(
        type: RedirectResponseTypeEnum.fromJson(json[r'type'])!,
        to: mapValueOfType<String>(json, r'to')!,
      );
    }
    return null;
  }

  static List<RedirectResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RedirectResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedirectResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RedirectResponse> mapFromJson(dynamic json) {
    final map = <String, RedirectResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RedirectResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RedirectResponse-objects as value to a dart map
  static Map<String, List<RedirectResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RedirectResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RedirectResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'to',
  };
}

/// type
class RedirectResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RedirectResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const REDIRECT_RESPONSE = RedirectResponseTypeEnum._(r'REDIRECT_RESPONSE');

  /// List of all possible values in this [enum][RedirectResponseTypeEnum].
  static const values = <RedirectResponseTypeEnum>[
    REDIRECT_RESPONSE,
  ];

  static RedirectResponseTypeEnum? fromJson(dynamic value) => RedirectResponseTypeEnumTypeTransformer().decode(value);

  static List<RedirectResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RedirectResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RedirectResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RedirectResponseTypeEnum] to String,
/// and [decode] dynamic data back to [RedirectResponseTypeEnum].
class RedirectResponseTypeEnumTypeTransformer {
  factory RedirectResponseTypeEnumTypeTransformer() => _instance ??= const RedirectResponseTypeEnumTypeTransformer._();

  const RedirectResponseTypeEnumTypeTransformer._();

  String encode(RedirectResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RedirectResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RedirectResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'REDIRECT_RESPONSE': return RedirectResponseTypeEnum.REDIRECT_RESPONSE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RedirectResponseTypeEnumTypeTransformer] instance.
  static RedirectResponseTypeEnumTypeTransformer? _instance;
}


