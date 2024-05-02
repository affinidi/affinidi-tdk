//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Filter {
  /// Returns a new [Filter] instance.
  Filter({
    this.const_,
    this.enum_ = const [],
    this.exclusiveMinimum,
    this.exclusiveMaximum,
    this.format,
    this.formatMaximum,
    this.formatMinimum,
    this.formatExclusiveMaximum,
    this.formatExclusiveMinimum,
    this.minLength,
    this.maxLength,
    this.minimum,
    this.maximum,
    this.not,
    this.pattern,
    this.contains,
    this.items,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterConst? const_;

  List<FilterConst> enum_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterConst? exclusiveMinimum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterConst? exclusiveMaximum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? format;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatMaximum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatMinimum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatExclusiveMaximum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? formatExclusiveMinimum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? minLength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxLength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterConst? minimum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterConst? maximum;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? not;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pattern;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Filter? contains;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FilterItems? items;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Filter &&
    other.const_ == const_ &&
    _deepEquality.equals(other.enum_, enum_) &&
    other.exclusiveMinimum == exclusiveMinimum &&
    other.exclusiveMaximum == exclusiveMaximum &&
    other.format == format &&
    other.formatMaximum == formatMaximum &&
    other.formatMinimum == formatMinimum &&
    other.formatExclusiveMaximum == formatExclusiveMaximum &&
    other.formatExclusiveMinimum == formatExclusiveMinimum &&
    other.minLength == minLength &&
    other.maxLength == maxLength &&
    other.minimum == minimum &&
    other.maximum == maximum &&
    other.not == not &&
    other.pattern == pattern &&
    other.contains == contains &&
    other.items == items &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (const_ == null ? 0 : const_!.hashCode) +
    (enum_.hashCode) +
    (exclusiveMinimum == null ? 0 : exclusiveMinimum!.hashCode) +
    (exclusiveMaximum == null ? 0 : exclusiveMaximum!.hashCode) +
    (format == null ? 0 : format!.hashCode) +
    (formatMaximum == null ? 0 : formatMaximum!.hashCode) +
    (formatMinimum == null ? 0 : formatMinimum!.hashCode) +
    (formatExclusiveMaximum == null ? 0 : formatExclusiveMaximum!.hashCode) +
    (formatExclusiveMinimum == null ? 0 : formatExclusiveMinimum!.hashCode) +
    (minLength == null ? 0 : minLength!.hashCode) +
    (maxLength == null ? 0 : maxLength!.hashCode) +
    (minimum == null ? 0 : minimum!.hashCode) +
    (maximum == null ? 0 : maximum!.hashCode) +
    (not == null ? 0 : not!.hashCode) +
    (pattern == null ? 0 : pattern!.hashCode) +
    (contains == null ? 0 : contains!.hashCode) +
    (items == null ? 0 : items!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'Filter[const_=$const_, enum_=$enum_, exclusiveMinimum=$exclusiveMinimum, exclusiveMaximum=$exclusiveMaximum, format=$format, formatMaximum=$formatMaximum, formatMinimum=$formatMinimum, formatExclusiveMaximum=$formatExclusiveMaximum, formatExclusiveMinimum=$formatExclusiveMinimum, minLength=$minLength, maxLength=$maxLength, minimum=$minimum, maximum=$maximum, not=$not, pattern=$pattern, contains=$contains, items=$items, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.const_ != null) {
      json[r'_const'] = this.const_;
    } else {
      json[r'_const'] = null;
    }
      json[r'_enum'] = this.enum_;
    if (this.exclusiveMinimum != null) {
      json[r'exclusiveMinimum'] = this.exclusiveMinimum;
    } else {
      json[r'exclusiveMinimum'] = null;
    }
    if (this.exclusiveMaximum != null) {
      json[r'exclusiveMaximum'] = this.exclusiveMaximum;
    } else {
      json[r'exclusiveMaximum'] = null;
    }
    if (this.format != null) {
      json[r'format'] = this.format;
    } else {
      json[r'format'] = null;
    }
    if (this.formatMaximum != null) {
      json[r'formatMaximum'] = this.formatMaximum;
    } else {
      json[r'formatMaximum'] = null;
    }
    if (this.formatMinimum != null) {
      json[r'formatMinimum'] = this.formatMinimum;
    } else {
      json[r'formatMinimum'] = null;
    }
    if (this.formatExclusiveMaximum != null) {
      json[r'formatExclusiveMaximum'] = this.formatExclusiveMaximum;
    } else {
      json[r'formatExclusiveMaximum'] = null;
    }
    if (this.formatExclusiveMinimum != null) {
      json[r'formatExclusiveMinimum'] = this.formatExclusiveMinimum;
    } else {
      json[r'formatExclusiveMinimum'] = null;
    }
    if (this.minLength != null) {
      json[r'minLength'] = this.minLength;
    } else {
      json[r'minLength'] = null;
    }
    if (this.maxLength != null) {
      json[r'maxLength'] = this.maxLength;
    } else {
      json[r'maxLength'] = null;
    }
    if (this.minimum != null) {
      json[r'minimum'] = this.minimum;
    } else {
      json[r'minimum'] = null;
    }
    if (this.maximum != null) {
      json[r'maximum'] = this.maximum;
    } else {
      json[r'maximum'] = null;
    }
    if (this.not != null) {
      json[r'not'] = this.not;
    } else {
      json[r'not'] = null;
    }
    if (this.pattern != null) {
      json[r'pattern'] = this.pattern;
    } else {
      json[r'pattern'] = null;
    }
    if (this.contains != null) {
      json[r'contains'] = this.contains;
    } else {
      json[r'contains'] = null;
    }
    if (this.items != null) {
      json[r'items'] = this.items;
    } else {
      json[r'items'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [Filter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Filter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Filter[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Filter[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Filter(
        const_: FilterConst.fromJson(json[r'_const']),
        enum_: FilterConst.listFromJson(json[r'_enum']),
        exclusiveMinimum: FilterConst.fromJson(json[r'exclusiveMinimum']),
        exclusiveMaximum: FilterConst.fromJson(json[r'exclusiveMaximum']),
        format: mapValueOfType<String>(json, r'format'),
        formatMaximum: mapValueOfType<String>(json, r'formatMaximum'),
        formatMinimum: mapValueOfType<String>(json, r'formatMinimum'),
        formatExclusiveMaximum: mapValueOfType<String>(json, r'formatExclusiveMaximum'),
        formatExclusiveMinimum: mapValueOfType<String>(json, r'formatExclusiveMinimum'),
        minLength: mapValueOfType<int>(json, r'minLength'),
        maxLength: mapValueOfType<int>(json, r'maxLength'),
        minimum: FilterConst.fromJson(json[r'minimum']),
        maximum: FilterConst.fromJson(json[r'maximum']),
        not: mapValueOfType<Object>(json, r'not'),
        pattern: mapValueOfType<String>(json, r'pattern'),
        contains: Filter.fromJson(json[r'contains']),
        items: FilterItems.fromJson(json[r'items']),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<Filter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Filter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Filter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Filter> mapFromJson(dynamic json) {
    final map = <String, Filter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Filter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Filter-objects as value to a dart map
  static Map<String, List<Filter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Filter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Filter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

