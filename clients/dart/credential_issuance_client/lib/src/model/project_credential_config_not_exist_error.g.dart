// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_credential_config_not_exist_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ProjectCredentialConfigNotExistErrorNameEnum
    _$projectCredentialConfigNotExistErrorNameEnum_projectCredentialConfigNotExistError =
    const ProjectCredentialConfigNotExistErrorNameEnum._(
        'projectCredentialConfigNotExistError');

ProjectCredentialConfigNotExistErrorNameEnum
    _$projectCredentialConfigNotExistErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'projectCredentialConfigNotExistError':
      return _$projectCredentialConfigNotExistErrorNameEnum_projectCredentialConfigNotExistError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProjectCredentialConfigNotExistErrorNameEnum>
    _$projectCredentialConfigNotExistErrorNameEnumValues = new BuiltSet<
        ProjectCredentialConfigNotExistErrorNameEnum>(const <ProjectCredentialConfigNotExistErrorNameEnum>[
  _$projectCredentialConfigNotExistErrorNameEnum_projectCredentialConfigNotExistError,
]);

const ProjectCredentialConfigNotExistErrorMessageEnum
    _$projectCredentialConfigNotExistErrorMessageEnum_credentialConfigIsNotAvailableForTheProject =
    const ProjectCredentialConfigNotExistErrorMessageEnum._(
        'credentialConfigIsNotAvailableForTheProject');

ProjectCredentialConfigNotExistErrorMessageEnum
    _$projectCredentialConfigNotExistErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'credentialConfigIsNotAvailableForTheProject':
      return _$projectCredentialConfigNotExistErrorMessageEnum_credentialConfigIsNotAvailableForTheProject;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProjectCredentialConfigNotExistErrorMessageEnum>
    _$projectCredentialConfigNotExistErrorMessageEnumValues = new BuiltSet<
        ProjectCredentialConfigNotExistErrorMessageEnum>(const <ProjectCredentialConfigNotExistErrorMessageEnum>[
  _$projectCredentialConfigNotExistErrorMessageEnum_credentialConfigIsNotAvailableForTheProject,
]);

const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum
    _$projectCredentialConfigNotExistErrorHttpStatusCodeEnum_number400 =
    const ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum._('number400');

ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum
    _$projectCredentialConfigNotExistErrorHttpStatusCodeEnumValueOf(
        String name) {
  switch (name) {
    case 'number400':
      return _$projectCredentialConfigNotExistErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>
    _$projectCredentialConfigNotExistErrorHttpStatusCodeEnumValues =
    new BuiltSet<
        ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>(const <ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>[
  _$projectCredentialConfigNotExistErrorHttpStatusCodeEnum_number400,
]);

Serializer<ProjectCredentialConfigNotExistErrorNameEnum>
    _$projectCredentialConfigNotExistErrorNameEnumSerializer =
    new _$ProjectCredentialConfigNotExistErrorNameEnumSerializer();
Serializer<ProjectCredentialConfigNotExistErrorMessageEnum>
    _$projectCredentialConfigNotExistErrorMessageEnumSerializer =
    new _$ProjectCredentialConfigNotExistErrorMessageEnumSerializer();
Serializer<ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum>
    _$projectCredentialConfigNotExistErrorHttpStatusCodeEnumSerializer =
    new _$ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumSerializer();

class _$ProjectCredentialConfigNotExistErrorNameEnumSerializer
    implements
        PrimitiveSerializer<ProjectCredentialConfigNotExistErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'projectCredentialConfigNotExistError':
        'ProjectCredentialConfigNotExistError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ProjectCredentialConfigNotExistError':
        'projectCredentialConfigNotExistError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectCredentialConfigNotExistErrorNameEnum
  ];
  @override
  final String wireName = 'ProjectCredentialConfigNotExistErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectCredentialConfigNotExistErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectCredentialConfigNotExistErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectCredentialConfigNotExistErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectCredentialConfigNotExistErrorMessageEnumSerializer
    implements
        PrimitiveSerializer<ProjectCredentialConfigNotExistErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialConfigIsNotAvailableForTheProject':
        'Credential config is not available for the project',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credential config is not available for the project':
        'credentialConfigIsNotAvailableForTheProject',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectCredentialConfigNotExistErrorMessageEnum
  ];
  @override
  final String wireName = 'ProjectCredentialConfigNotExistErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectCredentialConfigNotExistErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectCredentialConfigNotExistErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectCredentialConfigNotExistErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectCredentialConfigNotExistErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName =
      'ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ProjectCredentialConfigNotExistError
    extends ProjectCredentialConfigNotExistError {
  @override
  final ProjectCredentialConfigNotExistErrorNameEnum name;
  @override
  final ProjectCredentialConfigNotExistErrorMessageEnum message;
  @override
  final ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$ProjectCredentialConfigNotExistError(
          [void Function(ProjectCredentialConfigNotExistErrorBuilder)?
              updates]) =>
      (new ProjectCredentialConfigNotExistErrorBuilder()..update(updates))
          ._build();

  _$ProjectCredentialConfigNotExistError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ProjectCredentialConfigNotExistError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ProjectCredentialConfigNotExistError', 'message');
    BuiltValueNullFieldError.checkNotNull(httpStatusCode,
        r'ProjectCredentialConfigNotExistError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'ProjectCredentialConfigNotExistError', 'traceId');
  }

  @override
  ProjectCredentialConfigNotExistError rebuild(
          void Function(ProjectCredentialConfigNotExistErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectCredentialConfigNotExistErrorBuilder toBuilder() =>
      new ProjectCredentialConfigNotExistErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectCredentialConfigNotExistError &&
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
    return (newBuiltValueToStringHelper(r'ProjectCredentialConfigNotExistError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class ProjectCredentialConfigNotExistErrorBuilder
    implements
        Builder<ProjectCredentialConfigNotExistError,
            ProjectCredentialConfigNotExistErrorBuilder> {
  _$ProjectCredentialConfigNotExistError? _$v;

  ProjectCredentialConfigNotExistErrorNameEnum? _name;
  ProjectCredentialConfigNotExistErrorNameEnum? get name => _$this._name;
  set name(ProjectCredentialConfigNotExistErrorNameEnum? name) =>
      _$this._name = name;

  ProjectCredentialConfigNotExistErrorMessageEnum? _message;
  ProjectCredentialConfigNotExistErrorMessageEnum? get message =>
      _$this._message;
  set message(ProjectCredentialConfigNotExistErrorMessageEnum? message) =>
      _$this._message = message;

  ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum? _httpStatusCode;
  ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          ProjectCredentialConfigNotExistErrorHttpStatusCodeEnum?
              httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  ProjectCredentialConfigNotExistErrorBuilder() {
    ProjectCredentialConfigNotExistError._defaults(this);
  }

  ProjectCredentialConfigNotExistErrorBuilder get _$this {
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
  void replace(ProjectCredentialConfigNotExistError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectCredentialConfigNotExistError;
  }

  @override
  void update(
      void Function(ProjectCredentialConfigNotExistErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectCredentialConfigNotExistError build() => _build();

  _$ProjectCredentialConfigNotExistError _build() {
    _$ProjectCredentialConfigNotExistError _$result;
    try {
      _$result = _$v ??
          new _$ProjectCredentialConfigNotExistError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ProjectCredentialConfigNotExistError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ProjectCredentialConfigNotExistError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'ProjectCredentialConfigNotExistError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'ProjectCredentialConfigNotExistError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectCredentialConfigNotExistError',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
