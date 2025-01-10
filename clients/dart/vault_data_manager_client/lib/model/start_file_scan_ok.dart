//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class StartFileScanOK {
  /// Returns a new [StartFileScanOK] instance.
  StartFileScanOK({
    required this.jobId,
    required this.status,
  });

  String jobId;

  StartFileScanOKStatusEnum status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StartFileScanOK &&
    other.jobId == jobId &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jobId.hashCode) +
    (status.hashCode);

  @override
  String toString() => 'StartFileScanOK[jobId=$jobId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'jobId'] = this.jobId;
      json[r'status'] = this.status;
    return json;
  }

  /// Returns a new [StartFileScanOK] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StartFileScanOK? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StartFileScanOK[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StartFileScanOK[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StartFileScanOK(
        jobId: mapValueOfType<String>(json, r'jobId')!,
        status: StartFileScanOKStatusEnum.fromJson(json[r'status'])!,
      );
    }
    return null;
  }

  static List<StartFileScanOK> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartFileScanOK>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartFileScanOK.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StartFileScanOK> mapFromJson(dynamic json) {
    final map = <String, StartFileScanOK>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StartFileScanOK.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StartFileScanOK-objects as value to a dart map
  static Map<String, List<StartFileScanOK>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StartFileScanOK>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StartFileScanOK.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'jobId',
    'status',
  };
}


class StartFileScanOKStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const StartFileScanOKStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STARTED = StartFileScanOKStatusEnum._(r'STARTED');
  static const FAILED = StartFileScanOKStatusEnum._(r'FAILED');
  static const COMPLETED = StartFileScanOKStatusEnum._(r'COMPLETED');

  /// List of all possible values in this [enum][StartFileScanOKStatusEnum].
  static const values = <StartFileScanOKStatusEnum>[
    STARTED,
    FAILED,
    COMPLETED,
  ];

  static StartFileScanOKStatusEnum? fromJson(dynamic value) => StartFileScanOKStatusEnumTypeTransformer().decode(value);

  static List<StartFileScanOKStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StartFileScanOKStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StartFileScanOKStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StartFileScanOKStatusEnum] to String,
/// and [decode] dynamic data back to [StartFileScanOKStatusEnum].
class StartFileScanOKStatusEnumTypeTransformer {
  factory StartFileScanOKStatusEnumTypeTransformer() => _instance ??= const StartFileScanOKStatusEnumTypeTransformer._();

  const StartFileScanOKStatusEnumTypeTransformer._();

  String encode(StartFileScanOKStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StartFileScanOKStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StartFileScanOKStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STARTED': return StartFileScanOKStatusEnum.STARTED;
        case r'FAILED': return StartFileScanOKStatusEnum.FAILED;
        case r'COMPLETED': return StartFileScanOKStatusEnum.COMPLETED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StartFileScanOKStatusEnumTypeTransformer] instance.
  static StartFileScanOKStatusEnumTypeTransformer? _instance;
}


