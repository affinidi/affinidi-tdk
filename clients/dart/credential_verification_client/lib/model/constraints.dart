//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Constraints {
  /// Returns a new [Constraints] instance.
  Constraints({
    this.limitDisclosure,
    this.statuses,
    this.fields = const [],
    this.subjectIsIssuer,
    this.isHolder = const [],
    this.sameSubject = const [],
  });

  ConstraintsLimitDisclosureEnum? limitDisclosure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConstraintsStatuses? statuses;

  List<Field> fields;

  ConstraintsSubjectIsIssuerEnum? subjectIsIssuer;

  List<HolderSubject> isHolder;

  List<HolderSubject> sameSubject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Constraints &&
    other.limitDisclosure == limitDisclosure &&
    other.statuses == statuses &&
    _deepEquality.equals(other.fields, fields) &&
    other.subjectIsIssuer == subjectIsIssuer &&
    _deepEquality.equals(other.isHolder, isHolder) &&
    _deepEquality.equals(other.sameSubject, sameSubject);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limitDisclosure == null ? 0 : limitDisclosure!.hashCode) +
    (statuses == null ? 0 : statuses!.hashCode) +
    (fields.hashCode) +
    (subjectIsIssuer == null ? 0 : subjectIsIssuer!.hashCode) +
    (isHolder.hashCode) +
    (sameSubject.hashCode);

  @override
  String toString() => 'Constraints[limitDisclosure=$limitDisclosure, statuses=$statuses, fields=$fields, subjectIsIssuer=$subjectIsIssuer, isHolder=$isHolder, sameSubject=$sameSubject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limitDisclosure != null) {
      json[r'limit_disclosure'] = this.limitDisclosure;
    } else {
      json[r'limit_disclosure'] = null;
    }
    if (this.statuses != null) {
      json[r'statuses'] = this.statuses;
    } else {
      json[r'statuses'] = null;
    }
      json[r'fields'] = this.fields;
    if (this.subjectIsIssuer != null) {
      json[r'subject_is_issuer'] = this.subjectIsIssuer;
    } else {
      json[r'subject_is_issuer'] = null;
    }
      json[r'is_holder'] = this.isHolder;
      json[r'same_subject'] = this.sameSubject;
    return json;
  }

  /// Returns a new [Constraints] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Constraints? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Constraints[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Constraints[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Constraints(
        limitDisclosure: ConstraintsLimitDisclosureEnum.fromJson(json[r'limit_disclosure']),
        statuses: ConstraintsStatuses.fromJson(json[r'statuses']),
        fields: Field.listFromJson(json[r'fields']),
        subjectIsIssuer: ConstraintsSubjectIsIssuerEnum.fromJson(json[r'subject_is_issuer']),
        isHolder: HolderSubject.listFromJson(json[r'is_holder']),
        sameSubject: HolderSubject.listFromJson(json[r'same_subject']),
      );
    }
    return null;
  }

  static List<Constraints> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Constraints>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Constraints.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Constraints> mapFromJson(dynamic json) {
    final map = <String, Constraints>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Constraints.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Constraints-objects as value to a dart map
  static Map<String, List<Constraints>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Constraints>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Constraints.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ConstraintsLimitDisclosureEnum {
  /// Instantiate a new enum with the provided [value].
  const ConstraintsLimitDisclosureEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const required_ = ConstraintsLimitDisclosureEnum._(r'required');
  static const preferred = ConstraintsLimitDisclosureEnum._(r'preferred');

  /// List of all possible values in this [enum][ConstraintsLimitDisclosureEnum].
  static const values = <ConstraintsLimitDisclosureEnum>[
    required_,
    preferred,
  ];

  static ConstraintsLimitDisclosureEnum? fromJson(dynamic value) => ConstraintsLimitDisclosureEnumTypeTransformer().decode(value);

  static List<ConstraintsLimitDisclosureEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConstraintsLimitDisclosureEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConstraintsLimitDisclosureEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConstraintsLimitDisclosureEnum] to String,
/// and [decode] dynamic data back to [ConstraintsLimitDisclosureEnum].
class ConstraintsLimitDisclosureEnumTypeTransformer {
  factory ConstraintsLimitDisclosureEnumTypeTransformer() => _instance ??= const ConstraintsLimitDisclosureEnumTypeTransformer._();

  const ConstraintsLimitDisclosureEnumTypeTransformer._();

  String encode(ConstraintsLimitDisclosureEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConstraintsLimitDisclosureEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConstraintsLimitDisclosureEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'required': return ConstraintsLimitDisclosureEnum.required_;
        case r'preferred': return ConstraintsLimitDisclosureEnum.preferred;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConstraintsLimitDisclosureEnumTypeTransformer] instance.
  static ConstraintsLimitDisclosureEnumTypeTransformer? _instance;
}



class ConstraintsSubjectIsIssuerEnum {
  /// Instantiate a new enum with the provided [value].
  const ConstraintsSubjectIsIssuerEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const required_ = ConstraintsSubjectIsIssuerEnum._(r'required');
  static const preferred = ConstraintsSubjectIsIssuerEnum._(r'preferred');

  /// List of all possible values in this [enum][ConstraintsSubjectIsIssuerEnum].
  static const values = <ConstraintsSubjectIsIssuerEnum>[
    required_,
    preferred,
  ];

  static ConstraintsSubjectIsIssuerEnum? fromJson(dynamic value) => ConstraintsSubjectIsIssuerEnumTypeTransformer().decode(value);

  static List<ConstraintsSubjectIsIssuerEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConstraintsSubjectIsIssuerEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConstraintsSubjectIsIssuerEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConstraintsSubjectIsIssuerEnum] to String,
/// and [decode] dynamic data back to [ConstraintsSubjectIsIssuerEnum].
class ConstraintsSubjectIsIssuerEnumTypeTransformer {
  factory ConstraintsSubjectIsIssuerEnumTypeTransformer() => _instance ??= const ConstraintsSubjectIsIssuerEnumTypeTransformer._();

  const ConstraintsSubjectIsIssuerEnumTypeTransformer._();

  String encode(ConstraintsSubjectIsIssuerEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConstraintsSubjectIsIssuerEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConstraintsSubjectIsIssuerEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'required': return ConstraintsSubjectIsIssuerEnum.required_;
        case r'preferred': return ConstraintsSubjectIsIssuerEnum.preferred;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConstraintsSubjectIsIssuerEnumTypeTransformer] instance.
  static ConstraintsSubjectIsIssuerEnumTypeTransformer? _instance;
}


