//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Field {
  /// Returns a new [Field] instance.
  Field({
    this.id,
    this.path = const [],
    this.purpose,
    this.filter,
    this.predicate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  List<String> path;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? purpose;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Filter? filter;

  FieldPredicateEnum? predicate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Field &&
    other.id == id &&
    _deepEquality.equals(other.path, path) &&
    other.purpose == purpose &&
    other.filter == filter &&
    other.predicate == predicate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (path.hashCode) +
    (purpose == null ? 0 : purpose!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (predicate == null ? 0 : predicate!.hashCode);

  @override
  String toString() => 'Field[id=$id, path=$path, purpose=$purpose, filter=$filter, predicate=$predicate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'path'] = this.path;
    if (this.purpose != null) {
      json[r'purpose'] = this.purpose;
    } else {
      json[r'purpose'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
    if (this.predicate != null) {
      json[r'predicate'] = this.predicate;
    } else {
      json[r'predicate'] = null;
    }
    return json;
  }

  /// Returns a new [Field] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Field? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Field[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Field[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Field(
        id: mapValueOfType<String>(json, r'id'),
        path: json[r'path'] is Iterable
            ? (json[r'path'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        purpose: mapValueOfType<String>(json, r'purpose'),
        filter: Filter.fromJson(json[r'filter']),
        predicate: FieldPredicateEnum.fromJson(json[r'predicate']),
      );
    }
    return null;
  }

  static List<Field> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Field>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Field.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Field> mapFromJson(dynamic json) {
    final map = <String, Field>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Field.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Field-objects as value to a dart map
  static Map<String, List<Field>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Field>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Field.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class FieldPredicateEnum {
  /// Instantiate a new enum with the provided [value].
  const FieldPredicateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const required_ = FieldPredicateEnum._(r'required');
  static const preferred = FieldPredicateEnum._(r'preferred');

  /// List of all possible values in this [enum][FieldPredicateEnum].
  static const values = <FieldPredicateEnum>[
    required_,
    preferred,
  ];

  static FieldPredicateEnum? fromJson(dynamic value) => FieldPredicateEnumTypeTransformer().decode(value);

  static List<FieldPredicateEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FieldPredicateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FieldPredicateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FieldPredicateEnum] to String,
/// and [decode] dynamic data back to [FieldPredicateEnum].
class FieldPredicateEnumTypeTransformer {
  factory FieldPredicateEnumTypeTransformer() => _instance ??= const FieldPredicateEnumTypeTransformer._();

  const FieldPredicateEnumTypeTransformer._();

  String encode(FieldPredicateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FieldPredicateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FieldPredicateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'required': return FieldPredicateEnum.required_;
        case r'preferred': return FieldPredicateEnum.preferred;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FieldPredicateEnumTypeTransformer] instance.
  static FieldPredicateEnumTypeTransformer? _instance;
}


