//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectCredentialConfigExistError {
  /// Returns a new [ProjectCredentialConfigExistError] instance.
  ProjectCredentialConfigExistError({
    required this.name,
    required this.message,
    required this.httpStatusCode,
    required this.traceId,
    this.details = const [],
  });

  ProjectCredentialConfigExistErrorNameEnum name;

  ProjectCredentialConfigExistErrorMessageEnum message;

  ProjectCredentialConfigExistErrorHttpStatusCodeEnum httpStatusCode;

  String traceId;

  List<ActionForbiddenErrorDetailsInner> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCredentialConfigExistError &&
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
  String toString() => 'ProjectCredentialConfigExistError[name=$name, message=$message, httpStatusCode=$httpStatusCode, traceId=$traceId, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'message'] = this.message;
      json[r'httpStatusCode'] = this.httpStatusCode;
      json[r'traceId'] = this.traceId;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [ProjectCredentialConfigExistError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectCredentialConfigExistError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectCredentialConfigExistError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectCredentialConfigExistError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectCredentialConfigExistError(
        name: ProjectCredentialConfigExistErrorNameEnum.fromJson(json[r'name'])!,
        message: ProjectCredentialConfigExistErrorMessageEnum.fromJson(json[r'message'])!,
        httpStatusCode: ProjectCredentialConfigExistErrorHttpStatusCodeEnum.fromJson(json[r'httpStatusCode'])!,
        traceId: mapValueOfType<String>(json, r'traceId')!,
        details: ActionForbiddenErrorDetailsInner.listFromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ProjectCredentialConfigExistError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigExistError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigExistError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectCredentialConfigExistError> mapFromJson(dynamic json) {
    final map = <String, ProjectCredentialConfigExistError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectCredentialConfigExistError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectCredentialConfigExistError-objects as value to a dart map
  static Map<String, List<ProjectCredentialConfigExistError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectCredentialConfigExistError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectCredentialConfigExistError.listFromJson(entry.value, growable: growable,);
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


class ProjectCredentialConfigExistErrorNameEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectCredentialConfigExistErrorNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const projectCredentialConfigExistError = ProjectCredentialConfigExistErrorNameEnum._(r'ProjectCredentialConfigExistError');

  /// List of all possible values in this [enum][ProjectCredentialConfigExistErrorNameEnum].
  static const values = <ProjectCredentialConfigExistErrorNameEnum>[
    projectCredentialConfigExistError,
  ];

  static ProjectCredentialConfigExistErrorNameEnum? fromJson(dynamic value) => ProjectCredentialConfigExistErrorNameEnumTypeTransformer().decode(value);

  static List<ProjectCredentialConfigExistErrorNameEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigExistErrorNameEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigExistErrorNameEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectCredentialConfigExistErrorNameEnum] to String,
/// and [decode] dynamic data back to [ProjectCredentialConfigExistErrorNameEnum].
class ProjectCredentialConfigExistErrorNameEnumTypeTransformer {
  factory ProjectCredentialConfigExistErrorNameEnumTypeTransformer() => _instance ??= const ProjectCredentialConfigExistErrorNameEnumTypeTransformer._();

  const ProjectCredentialConfigExistErrorNameEnumTypeTransformer._();

  String encode(ProjectCredentialConfigExistErrorNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectCredentialConfigExistErrorNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectCredentialConfigExistErrorNameEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ProjectCredentialConfigExistError': return ProjectCredentialConfigExistErrorNameEnum.projectCredentialConfigExistError;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectCredentialConfigExistErrorNameEnumTypeTransformer] instance.
  static ProjectCredentialConfigExistErrorNameEnumTypeTransformer? _instance;
}



class ProjectCredentialConfigExistErrorMessageEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectCredentialConfigExistErrorMessageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const credentialConfigIsExistForTheProjectCommaOneConfigIsAllowedForEachProject = ProjectCredentialConfigExistErrorMessageEnum._(r'Credential config is exist for the project, one config is allowed for each project');

  /// List of all possible values in this [enum][ProjectCredentialConfigExistErrorMessageEnum].
  static const values = <ProjectCredentialConfigExistErrorMessageEnum>[
    credentialConfigIsExistForTheProjectCommaOneConfigIsAllowedForEachProject,
  ];

  static ProjectCredentialConfigExistErrorMessageEnum? fromJson(dynamic value) => ProjectCredentialConfigExistErrorMessageEnumTypeTransformer().decode(value);

  static List<ProjectCredentialConfigExistErrorMessageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigExistErrorMessageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigExistErrorMessageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectCredentialConfigExistErrorMessageEnum] to String,
/// and [decode] dynamic data back to [ProjectCredentialConfigExistErrorMessageEnum].
class ProjectCredentialConfigExistErrorMessageEnumTypeTransformer {
  factory ProjectCredentialConfigExistErrorMessageEnumTypeTransformer() => _instance ??= const ProjectCredentialConfigExistErrorMessageEnumTypeTransformer._();

  const ProjectCredentialConfigExistErrorMessageEnumTypeTransformer._();

  String encode(ProjectCredentialConfigExistErrorMessageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectCredentialConfigExistErrorMessageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectCredentialConfigExistErrorMessageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Credential config is exist for the project, one config is allowed for each project': return ProjectCredentialConfigExistErrorMessageEnum.credentialConfigIsExistForTheProjectCommaOneConfigIsAllowedForEachProject;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectCredentialConfigExistErrorMessageEnumTypeTransformer] instance.
  static ProjectCredentialConfigExistErrorMessageEnumTypeTransformer? _instance;
}



class ProjectCredentialConfigExistErrorHttpStatusCodeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectCredentialConfigExistErrorHttpStatusCodeEnum._(this.value);

  /// The underlying value of this enum member.
  final int value;

  @override
  String toString() => value.toString();

  int toJson() => value;

  static const number400 = ProjectCredentialConfigExistErrorHttpStatusCodeEnum._(400);

  /// List of all possible values in this [enum][ProjectCredentialConfigExistErrorHttpStatusCodeEnum].
  static const values = <ProjectCredentialConfigExistErrorHttpStatusCodeEnum>[
    number400,
  ];

  static ProjectCredentialConfigExistErrorHttpStatusCodeEnum? fromJson(dynamic value) => ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer().decode(value);

  static List<ProjectCredentialConfigExistErrorHttpStatusCodeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCredentialConfigExistErrorHttpStatusCodeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCredentialConfigExistErrorHttpStatusCodeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectCredentialConfigExistErrorHttpStatusCodeEnum] to int,
/// and [decode] dynamic data back to [ProjectCredentialConfigExistErrorHttpStatusCodeEnum].
class ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer {
  factory ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer() => _instance ??= const ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer._();

  const ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer._();

  int encode(ProjectCredentialConfigExistErrorHttpStatusCodeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectCredentialConfigExistErrorHttpStatusCodeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectCredentialConfigExistErrorHttpStatusCodeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case 400: return ProjectCredentialConfigExistErrorHttpStatusCodeEnum.number400;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer] instance.
  static ProjectCredentialConfigExistErrorHttpStatusCodeEnumTypeTransformer? _instance;
}


