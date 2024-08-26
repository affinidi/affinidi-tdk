//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HolderSubject {
  /// Returns a new [HolderSubject] instance.
  HolderSubject({
    this.fieldId = const [],
    required this.directive,
  });

  List<String> fieldId;

  HolderSubjectDirectiveEnum directive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HolderSubject &&
    _deepEquality.equals(other.fieldId, fieldId) &&
    other.directive == directive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldId.hashCode) +
    (directive.hashCode);

  @override
  String toString() => 'HolderSubject[fieldId=$fieldId, directive=$directive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'field_id'] = this.fieldId;
      json[r'directive'] = this.directive;
    return json;
  }

  /// Returns a new [HolderSubject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HolderSubject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HolderSubject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HolderSubject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HolderSubject(
        fieldId: json[r'field_id'] is Iterable
            ? (json[r'field_id'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        directive: HolderSubjectDirectiveEnum.fromJson(json[r'directive'])!,
      );
    }
    return null;
  }

  static List<HolderSubject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HolderSubject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HolderSubject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HolderSubject> mapFromJson(dynamic json) {
    final map = <String, HolderSubject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HolderSubject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HolderSubject-objects as value to a dart map
  static Map<String, List<HolderSubject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HolderSubject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HolderSubject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'field_id',
    'directive',
  };
}


class HolderSubjectDirectiveEnum {
  /// Instantiate a new enum with the provided [value].
  const HolderSubjectDirectiveEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const required_ = HolderSubjectDirectiveEnum._(r'required');
  static const preferred = HolderSubjectDirectiveEnum._(r'preferred');

  /// List of all possible values in this [enum][HolderSubjectDirectiveEnum].
  static const values = <HolderSubjectDirectiveEnum>[
    required_,
    preferred,
  ];

  static HolderSubjectDirectiveEnum? fromJson(dynamic value) => HolderSubjectDirectiveEnumTypeTransformer().decode(value);

  static List<HolderSubjectDirectiveEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HolderSubjectDirectiveEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HolderSubjectDirectiveEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HolderSubjectDirectiveEnum] to String,
/// and [decode] dynamic data back to [HolderSubjectDirectiveEnum].
class HolderSubjectDirectiveEnumTypeTransformer {
  factory HolderSubjectDirectiveEnumTypeTransformer() => _instance ??= const HolderSubjectDirectiveEnumTypeTransformer._();

  const HolderSubjectDirectiveEnumTypeTransformer._();

  String encode(HolderSubjectDirectiveEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HolderSubjectDirectiveEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HolderSubjectDirectiveEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'required': return HolderSubjectDirectiveEnum.required_;
        case r'preferred': return HolderSubjectDirectiveEnum.preferred;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HolderSubjectDirectiveEnumTypeTransformer] instance.
  static HolderSubjectDirectiveEnumTypeTransformer? _instance;
}


