//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PdStatus {
  /// Returns a new [PdStatus] instance.
  PdStatus({
    this.directive,
  });

  PdStatusDirectiveEnum? directive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PdStatus &&
    other.directive == directive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (directive == null ? 0 : directive!.hashCode);

  @override
  String toString() => 'PdStatus[directive=$directive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.directive != null) {
      json[r'directive'] = this.directive;
    } else {
      json[r'directive'] = null;
    }
    return json;
  }

  /// Returns a new [PdStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PdStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PdStatus[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PdStatus[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PdStatus(
        directive: PdStatusDirectiveEnum.fromJson(json[r'directive']),
      );
    }
    return null;
  }

  static List<PdStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PdStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PdStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PdStatus> mapFromJson(dynamic json) {
    final map = <String, PdStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PdStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PdStatus-objects as value to a dart map
  static Map<String, List<PdStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PdStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PdStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class PdStatusDirectiveEnum {
  /// Instantiate a new enum with the provided [value].
  const PdStatusDirectiveEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const required_ = PdStatusDirectiveEnum._(r'required');
  static const allowed = PdStatusDirectiveEnum._(r'allowed');
  static const disallowed = PdStatusDirectiveEnum._(r'disallowed');

  /// List of all possible values in this [enum][PdStatusDirectiveEnum].
  static const values = <PdStatusDirectiveEnum>[
    required_,
    allowed,
    disallowed,
  ];

  static PdStatusDirectiveEnum? fromJson(dynamic value) => PdStatusDirectiveEnumTypeTransformer().decode(value);

  static List<PdStatusDirectiveEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PdStatusDirectiveEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PdStatusDirectiveEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PdStatusDirectiveEnum] to String,
/// and [decode] dynamic data back to [PdStatusDirectiveEnum].
class PdStatusDirectiveEnumTypeTransformer {
  factory PdStatusDirectiveEnumTypeTransformer() => _instance ??= const PdStatusDirectiveEnumTypeTransformer._();

  const PdStatusDirectiveEnumTypeTransformer._();

  String encode(PdStatusDirectiveEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PdStatusDirectiveEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PdStatusDirectiveEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'required': return PdStatusDirectiveEnum.required_;
        case r'allowed': return PdStatusDirectiveEnum.allowed;
        case r'disallowed': return PdStatusDirectiveEnum.disallowed;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PdStatusDirectiveEnumTypeTransformer] instance.
  static PdStatusDirectiveEnumTypeTransformer? _instance;
}


