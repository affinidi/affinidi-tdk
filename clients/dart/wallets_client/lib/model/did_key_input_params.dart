//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DidKeyInputParams {
  /// Returns a new [DidKeyInputParams] instance.
  DidKeyInputParams({
    this.name,
    this.description,
    this.didMethod,
  });

  /// The name of the wallet
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The description of the wallet
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  DidKeyInputParamsDidMethodEnum? didMethod;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DidKeyInputParams &&
    other.name == name &&
    other.description == description &&
    other.didMethod == didMethod;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (didMethod == null ? 0 : didMethod!.hashCode);

  @override
  String toString() => 'DidKeyInputParams[name=$name, description=$description, didMethod=$didMethod]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.didMethod != null) {
      json[r'didMethod'] = this.didMethod;
    } else {
      json[r'didMethod'] = null;
    }
    return json;
  }

  /// Returns a new [DidKeyInputParams] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DidKeyInputParams? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DidKeyInputParams[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DidKeyInputParams[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DidKeyInputParams(
        name: mapValueOfType<String>(json, r'name'),
        description: mapValueOfType<String>(json, r'description'),
        didMethod: DidKeyInputParamsDidMethodEnum.fromJson(json[r'didMethod']),
      );
    }
    return null;
  }

  static List<DidKeyInputParams> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DidKeyInputParams>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DidKeyInputParams.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DidKeyInputParams> mapFromJson(dynamic json) {
    final map = <String, DidKeyInputParams>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DidKeyInputParams.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DidKeyInputParams-objects as value to a dart map
  static Map<String, List<DidKeyInputParams>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DidKeyInputParams>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DidKeyInputParams.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DidKeyInputParamsDidMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const DidKeyInputParamsDidMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const key = DidKeyInputParamsDidMethodEnum._(r'key');

  /// List of all possible values in this [enum][DidKeyInputParamsDidMethodEnum].
  static const values = <DidKeyInputParamsDidMethodEnum>[
    key,
  ];

  static DidKeyInputParamsDidMethodEnum? fromJson(dynamic value) => DidKeyInputParamsDidMethodEnumTypeTransformer().decode(value);

  static List<DidKeyInputParamsDidMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DidKeyInputParamsDidMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DidKeyInputParamsDidMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DidKeyInputParamsDidMethodEnum] to String,
/// and [decode] dynamic data back to [DidKeyInputParamsDidMethodEnum].
class DidKeyInputParamsDidMethodEnumTypeTransformer {
  factory DidKeyInputParamsDidMethodEnumTypeTransformer() => _instance ??= const DidKeyInputParamsDidMethodEnumTypeTransformer._();

  const DidKeyInputParamsDidMethodEnumTypeTransformer._();

  String encode(DidKeyInputParamsDidMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DidKeyInputParamsDidMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DidKeyInputParamsDidMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'key': return DidKeyInputParamsDidMethodEnum.key;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DidKeyInputParamsDidMethodEnumTypeTransformer] instance.
  static DidKeyInputParamsDidMethodEnumTypeTransformer? _instance;
}


