//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectCredentialConfigNotExistError {
  /// Returns a new [ProjectCredentialConfigNotExistError] instance.
  ProjectCredentialConfigNotExistError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ProjectCredentialConfigNotExistErrorNameEnum name;

  ProjectCredentialConfigNotExistErrorMessageEnum message;

  ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCredentialConfigNotExistError &&
    other.name == name &&
    other.message == message &&
    other.httpStatusCode == httpStatusCode &&
    other.traceId == traceId &&
    _deepEquality.equals(other.details, details);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (message.hashCode) +
    (httpStatusCode.hashCode) +
    (traceId.hashCode) +
    (details.hashCode);

  @override
  String toString() => 'ProjectCredentialConfigNotExistError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ProjectCredentialConfigNotExistError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectCredentialConfigNotExistError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectCredentialConfigNotExistError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectCredentialConfigNotExistError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectCredentialConfigNotExistError(
        name: ProjectCredentialConfigNotExistErrorNameEnum.fromJson(json[r'name'])!,
        message: ProjectCredentialConfigNotExistErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ProjectCredentialConfigNotExistError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigNotExistError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigNotExistError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectCredentialConfigNotExistError> mapFromJson(dynamic json) {
    final map = <String, ProjectCredentialConfigNotExistError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectCredentialConfigNotExistError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectCredentialConfigNotExistError-objects as value to a dart map
  static Map<String, List<ProjectCredentialConfigNotExistError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectCredentialConfigNotExistError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectCredentialConfigNotExistError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'message',
    'httpStatusCode',
    'traceId',
  };
}


class ProjectCredentialConfigNotExistErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectCredentialConfigNotExistErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const projectCredentialConfigNotExistError = ProjectCredentialConfigNotExistErrorNameEnum._(r'ProjectCredentialConfigNotExistError');

  /// List of all possible values in this [enum][ProjectCredentialConfigNotExistErrorNameEnum].
  static const values = <ProjectCredentialConfigNotExistErrorNameEnum>[
    projectCredentialConfigNotExistError,
  ];

  static ProjectCredentialConfigNotExistErrorNameEnum? fromJson(dynamic value) => ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer().decode(value);

  static List<ProjectCredentialConfigNotExistErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigNotExistErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigNotExistErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectCredentialConfigNotExistErrorNameEnum] to String,
/// and [decode] dynamic data back to [ProjectCredentialConfigNotExistErrorNameEnum].
class ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer {
  factory ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer() => _instance ??= const ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer._();

  const ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer._();

  String encode(ProjectCredentialConfigNotExistErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectCredentialConfigNotExistErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectCredentialConfigNotExistErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ProjectCredentialConfigNotExistError': return ProjectCredentialConfigNotExistErrorNameEnum.projectCredentialConfigNotExistError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer] instance.
  static ProjectCredentialConfigNotExistErrorNameEnumTypeTransformer? _instance;
}



class ProjectCredentialConfigNotExistErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectCredentialConfigNotExistErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialConfigIsNotAvailableForTheProject = ProjectCredentialConfigNotExistErrorMessageEnum._(r'Credential config is not available for the project');

  /// List of all possible values in this [enum][ProjectCredentialConfigNotExistErrorMessageEnum].
  static const values = <ProjectCredentialConfigNotExistErrorMessageEnum>[
    credentialConfigIsNotAvailableForTheProject,
  ];

  static ProjectCredentialConfigNotExistErrorMessageEnum? fromJson(dynamic value) => ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer().decode(value);

  static List<ProjectCredentialConfigNotExistErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigNotExistErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigNotExistErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectCredentialConfigNotExistErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ProjectCredentialConfigNotExistErrorMessageEnum].
class ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer {
  factory ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer() => _instance ??= const ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer._();

  const ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer._();

  String encode(ProjectCredentialConfigNotExistErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectCredentialConfigNotExistErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectCredentialConfigNotExistErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Credential config is not available for the project': return ProjectCredentialConfigNotExistErrorMessageEnum.credentialConfigIsNotAvailableForTheProject;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer] instance.
  static ProjectCredentialConfigNotExistErrorMessageEnumTypeTransformer? _instance;
}



class ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum].
  static const values = <ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>[
    number400,
  ];

  static ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum? fromJson(dynamic value) => ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum].
class ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer {
  factory ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer._();

  const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


