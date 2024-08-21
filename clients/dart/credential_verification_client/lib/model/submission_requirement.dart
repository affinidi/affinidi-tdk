//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubmissionRequirement {
  /// Returns a new [SubmissionRequirement] instance.
  SubmissionRequirement({
    this.name,
    this.purpose,
    required this.rule,
    this.count,
    this.min,
    this.max,
    this.from,
    this.fromNested = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  SubmissionRequirementRuleEnum rule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? min;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? max;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  List<SubmissionRequirement> fromNested;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubmissionRequirement &&
    other.name == name &&
    other.purpose == purpose &&
    other.rule == rule &&
    other.count == count &&
    other.min == min &&
    other.max == max &&
    other.from == from &&
    _deepEquality.equals(other.fromNested, fromNested);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (purpose == null ? 0 : purpose!.hashCode) +
    (rule.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (min == null ? 0 : min!.hashCode) +
    (max == null ? 0 : max!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (fromNested.hashCode);

  @override
  String toString() => 'SubmissionRequirement[name=$name, purpose=$purpose, rule=$rule, count=$count, min=$min, max=$max, from=$from, fromNested=$fromNested]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
      json[r'rule'] = this.rule;
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.min != null) {
      json[r'min'] = this.min;
    } else {
      json[r'min'] = null;
    }
    if (this.max != null) {
      json[r'max'] = this.max;
    } else {
      json[r'max'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'from_nested'] = this.fromNested;
    return json;
  }

  /// Returns a new [SubmissionRequirement] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubmissionRequirement? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubmissionRequirement[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubmissionRequirement[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubmissionRequirement(
        name: mapValueOfType<String>(json, r'name'),
        purpose: mapValueOfType<String>(json, r'purpose'),
        rule: SubmissionRequirementRuleEnum.fromJson(json[r'rule'])!,
        count: mapValueOfType<int>(json, r'count'),
        min: mapValueOfType<int>(json, r'min'),
        max: mapValueOfType<int>(json, r'max'),
        from: mapValueOfType<String>(json, r'from'),
        fromNested: SubmissionRequirement.listFromJson(json[r'from_nested']),
      );
    }
    return null;
  }

  static List<SubmissionRequirement> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmissionRequirement>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmissionRequirement.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubmissionRequirement> mapFromJson(dynamic json) {
    final map = <String, SubmissionRequirement>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubmissionRequirement.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubmissionRequirement-objects as value to a dart map
  static Map<String, List<SubmissionRequirement>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubmissionRequirement>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubmissionRequirement.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rule',
  };
}


class SubmissionRequirementRuleEnum {
  /// Instantiate a new enum with the provided [value].
  const SubmissionRequirementRuleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const all = SubmissionRequirementRuleEnum._(r'all');
  static const pick = SubmissionRequirementRuleEnum._(r'pick');

  /// List of all possible values in this [enum][SubmissionRequirementRuleEnum].
  static const values = <SubmissionRequirementRuleEnum>[
    all,
    pick,
  ];

  static SubmissionRequirementRuleEnum? fromJson(dynamic value) => SubmissionRequirementRuleEnumTypeTransformer().decode(value);

  static List<SubmissionRequirementRuleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmissionRequirementRuleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmissionRequirementRuleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SubmissionRequirementRuleEnum] to String,
/// and [decode] dynamic data back to [SubmissionRequirementRuleEnum].
class SubmissionRequirementRuleEnumTypeTransformer {
  factory SubmissionRequirementRuleEnumTypeTransformer() => _instance ??= const SubmissionRequirementRuleEnumTypeTransformer._();

  const SubmissionRequirementRuleEnumTypeTransformer._();

  String encode(SubmissionRequirementRuleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SubmissionRequirementRuleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SubmissionRequirementRuleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'all': return SubmissionRequirementRuleEnum.all;
        case r'pick': return SubmissionRequirementRuleEnum.pick;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SubmissionRequirementRuleEnumTypeTransformer] instance.
  static SubmissionRequirementRuleEnumTypeTransformer? _instance;
}


