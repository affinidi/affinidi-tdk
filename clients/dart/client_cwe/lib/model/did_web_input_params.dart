//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DidWebInputParams {
  /// Returns a new [DidWebInputParams] instance.
  DidWebInputParams({
    required this.didMethod,
    required this.didWebUrl,
  });

  DidWebInputParamsDidMethodEnum didMethod;

  /// If the did method is web, this is the URL of the did
  String didWebUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DidWebInputParams &&
    other.didMethod == didMethod &&
    other.didWebUrl == didWebUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (didMethod.hashCode) +
    (didWebUrl.hashCode);

  @override
  String toString() => 'DidWebInputParams[didMethod=$didMethod, didWebUrl=$didWebUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'didMethod'] = this.didMethod;
      json[r'didWebUrl'] = this.didWebUrl;
    return json;
  }

  /// Returns a new [DidWebInputParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DidWebInputParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DidWebInputParams[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DidWebInputParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DidWebInputParams(
        didMethod: DidWebInputParamsDidMethodEnum.fromJson(json[r'didMethod'])!,
        didWebUrl: mapValueOfType<String>(json, r'didWebUrl')!,
      );
    }
    return null;
  }

  static List<DidWebInputParams> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DidWebInputParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DidWebInputParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DidWebInputParams> mapFromJson(dynamic json) {
    final map = <String, DidWebInputParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DidWebInputParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DidWebInputParams-objects as value to a dart map
  static Map<String, List<DidWebInputParams>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DidWebInputParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DidWebInputParams.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'didMethod',
    'didWebUrl',
  };
}


class DidWebInputParamsDidMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const DidWebInputParamsDidMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const web = DidWebInputParamsDidMethodEnum._(r'web');

  /// List of all possible values in this [enum][DidWebInputParamsDidMethodEnum].
  static const values = <DidWebInputParamsDidMethodEnum>[
    web,
  ];

  static DidWebInputParamsDidMethodEnum? fromJson(dynamic value) => DidWebInputParamsDidMethodEnumTypeTransformer().decode(value);

  static List<DidWebInputParamsDidMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DidWebInputParamsDidMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DidWebInputParamsDidMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DidWebInputParamsDidMethodEnum] to String,
/// and [decode] dynamic data back to [DidWebInputParamsDidMethodEnum].
class DidWebInputParamsDidMethodEnumTypeTransformer {
  factory DidWebInputParamsDidMethodEnumTypeTransformer() => _instance ??= const DidWebInputParamsDidMethodEnumTypeTransformer._();

  const DidWebInputParamsDidMethodEnumTypeTransformer._();

  String encode(DidWebInputParamsDidMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DidWebInputParamsDidMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DidWebInputParamsDidMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'web': return DidWebInputParamsDidMethodEnum.web;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DidWebInputParamsDidMethodEnumTypeTransformer] instance.
  static DidWebInputParamsDidMethodEnumTypeTransformer? _instance;
}


