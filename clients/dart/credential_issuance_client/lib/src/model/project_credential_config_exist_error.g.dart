// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_credential_config_exist_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectCredentialConfigExistErrorNameEnum
    _$projectCredentialConfigExistErrorNameEnum_projectCredentialConfigExistError =
    const ProjectCredentialConfigExistErrorNameEnum._(
        'projectCredentialConfigExistError');

ProjectCredentialConfigExistErrorNameEnum
    _$projectCredentialConfigExistErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'projectCredentialConfigExistError':
      return _$projectCredentialConfigExistErrorNameEnum_projectCredentialConfigExistError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectCredentialConfigExistErrorNameEnum>
    _$projectCredentialConfigExistErrorNameEnumValues = BuiltSet<
        ProjectCredentialConfigExistErrorNameEnum>(const <ProjectCredentialConfigExistErrorNameEnum>[
  _$projectCredentialConfigExistErrorNameEnum_projectCredentialConfigExistError,
]);

const ProjectCredentialConfigExistErrorMessageEnum
    _$projectCredentialConfigExistErrorMessageEnum_credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject =
    const ProjectCredentialConfigExistErrorMessageEnum._(
        'credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject');

ProjectCredentialConfigExistErrorMessageEnum
    _$projectCredentialConfigExistErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject':
      return _$projectCredentialConfigExistErrorMessageEnum_credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectCredentialConfigExistErrorMessageEnum>
    _$projectCredentialConfigExistErrorMessageEnumValues = BuiltSet<
        ProjectCredentialConfigExistErrorMessageEnum>(const <ProjectCredentialConfigExistErrorMessageEnum>[
  _$projectCredentialConfigExistErrorMessageEnum_credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject,
]);

const ProjectCredentialConfigExistErrorHttpStatusCodeEnum
    _$projectCredentialConfigExistErrorHttpStatusCodeEnum_number400 =
    const ProjectCredentialConfigExistErrorHttpStatusCodeEnum._('number400');

ProjectCredentialConfigExistErrorHttpStatusCodeEnum
    _$projectCredentialConfigExistErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$projectCredentialConfigExistErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ProjectCredentialConfigExistErrorHttpStatusCodeEnum>
    _$projectCredentialConfigExistErrorHttpStatusCodeEnumValues = BuiltSet<
        ProjectCredentialConfigExistErrorHttpStatusCodeEnum>(const <ProjectCredentialConfigExistErrorHttpStatusCodeEnum>[
  _$projectCredentialConfigExistErrorHttpStatusCodeEnum_number400,
]);

Serializer<ProjectCredentialConfigExistErrorNameEnum>
    _$projectCredentialConfigExistErrorNameEnumSerializer =
    _$ProjectCredentialConfigExistErrorNameEnumSerializer();
Serializer<ProjectCredentialConfigExistErrorMessageEnum>
    _$projectCredentialConfigExistErrorMessageEnumSerializer =
    _$ProjectCredentialConfigExistErrorMessageEnumSerializer();
Serializer<ProjectCredentialConfigExistErrorHttpStatusCodeEnum>
    _$projectCredentialConfigExistErrorHttpStatusCodeEnumSerializer =
    _$ProjectCredentialConfigExistErrorHttpStatusCodeEnumSerializer();

class _$ProjectCredentialConfigExistErrorNameEnumSerializer
    implements PrimitiveSerializer<ProjectCredentialConfigExistErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'projectCredentialConfigExistError': 'ProjectCredentialConfigExistError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ProjectCredentialConfigExistError': 'projectCredentialConfigExistError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectCredentialConfigExistErrorNameEnum
  ];
  @override
  final String wireName = 'ProjectCredentialConfigExistErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectCredentialConfigExistErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectCredentialConfigExistErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectCredentialConfigExistErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectCredentialConfigExistErrorMessageEnumSerializer
    implements
        PrimitiveSerializer<ProjectCredentialConfigExistErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject':
        'Credential configuration already exists for this project and only one configuration is allowed per project',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credential configuration already exists for this project and only one configuration is allowed per project':
        'credentialConfigurationAlreadyExistsForThisProjectAndOnlyOneConfigurationIsAllowedPerProject',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectCredentialConfigExistErrorMessageEnum
  ];
  @override
  final String wireName = 'ProjectCredentialConfigExistErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectCredentialConfigExistErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectCredentialConfigExistErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectCredentialConfigExistErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectCredentialConfigExistErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            ProjectCredentialConfigExistErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectCredentialConfigExistErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'ProjectCredentialConfigExistErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectCredentialConfigExistErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectCredentialConfigExistErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectCredentialConfigExistErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectCredentialConfigExistError
    extends ProjectCredentialConfigExistError {
  @override
  final ProjectCredentialConfigExistErrorNameEnum name;
  @override
  final ProjectCredentialConfigExistErrorMessageEnum message;
  @override
  final ProjectCredentialConfigExistErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$ProjectCredentialConfigExistError(
          [void Function(ProjectCredentialConfigExistErrorBuilder)? updates]) =>
      (ProjectCredentialConfigExistErrorBuilder()..update(updates))._build();

  _$ProjectCredentialConfigExistError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  ProjectCredentialConfigExistError rebuild(
          void Function(ProjectCredentialConfigExistErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectCredentialConfigExistErrorBuilder toBuilder() =>
      ProjectCredentialConfigExistErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectCredentialConfigExistError &&
        name == other.name &&
        message == other.message &&
        httpStatusCode == other.httpStatusCode &&
        traceId == other.traceId &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, httpStatusCode.hashCode);
    _$hash = $jc(_$hash, traceId.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectCredentialConfigExistError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class ProjectCredentialConfigExistErrorBuilder
    implements
        Builder<ProjectCredentialConfigExistError,
            ProjectCredentialConfigExistErrorBuilder> {
  _$ProjectCredentialConfigExistError? _$v;

  ProjectCredentialConfigExistErrorNameEnum? _name;
  ProjectCredentialConfigExistErrorNameEnum? get name => _$this._name;
  set name(ProjectCredentialConfigExistErrorNameEnum? name) =>
      _$this._name = name;

  ProjectCredentialConfigExistErrorMessageEnum? _message;
  ProjectCredentialConfigExistErrorMessageEnum? get message => _$this._message;
  set message(ProjectCredentialConfigExistErrorMessageEnum? message) =>
      _$this._message = message;

  ProjectCredentialConfigExistErrorHttpStatusCodeEnum? _httpStatusCode;
  ProjectCredentialConfigExistErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          ProjectCredentialConfigExistErrorHttpStatusCodeEnum?
              httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  ProjectCredentialConfigExistErrorBuilder() {
    ProjectCredentialConfigExistError._defaults(this);
  }

  ProjectCredentialConfigExistErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _message = $v.message;
      _httpStatusCode = $v.httpStatusCode;
      _traceId = $v.traceId;
      _details = $v.details?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectCredentialConfigExistError other) {
    _$v = other as _$ProjectCredentialConfigExistError;
  }

  @override
  void update(
      void Function(ProjectCredentialConfigExistErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectCredentialConfigExistError build() => _build();

  _$ProjectCredentialConfigExistError _build() {
    _$ProjectCredentialConfigExistError _$result;
    try {
      _$result = _$v ??
          _$ProjectCredentialConfigExistError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ProjectCredentialConfigExistError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ProjectCredentialConfigExistError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'ProjectCredentialConfigExistError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'ProjectCredentialConfigExistError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProjectCredentialConfigExistError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
