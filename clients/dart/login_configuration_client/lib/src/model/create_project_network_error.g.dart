// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_network_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateProjectNetworkErrorNameEnum
    _$createProjectNetworkErrorNameEnum_createProjectNetworkError =
    const CreateProjectNetworkErrorNameEnum._('createProjectNetworkError');

CreateProjectNetworkErrorNameEnum _$createProjectNetworkErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'createProjectNetworkError':
      return _$createProjectNetworkErrorNameEnum_createProjectNetworkError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateProjectNetworkErrorNameEnum>
    _$createProjectNetworkErrorNameEnumValues = new BuiltSet<
        CreateProjectNetworkErrorNameEnum>(const <CreateProjectNetworkErrorNameEnum>[
  _$createProjectNetworkErrorNameEnum_createProjectNetworkError,
]);

const CreateProjectNetworkErrorMessageEnum
    _$createProjectNetworkErrorMessageEnum_createProjectNetworkError =
    const CreateProjectNetworkErrorMessageEnum._('createProjectNetworkError');

CreateProjectNetworkErrorMessageEnum
    _$createProjectNetworkErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'createProjectNetworkError':
      return _$createProjectNetworkErrorMessageEnum_createProjectNetworkError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateProjectNetworkErrorMessageEnum>
    _$createProjectNetworkErrorMessageEnumValues = new BuiltSet<
        CreateProjectNetworkErrorMessageEnum>(const <CreateProjectNetworkErrorMessageEnum>[
  _$createProjectNetworkErrorMessageEnum_createProjectNetworkError,
]);

const CreateProjectNetworkErrorHttpStatusCodeEnum
    _$createProjectNetworkErrorHttpStatusCodeEnum_number400 =
    const CreateProjectNetworkErrorHttpStatusCodeEnum._('number400');

CreateProjectNetworkErrorHttpStatusCodeEnum
    _$createProjectNetworkErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$createProjectNetworkErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateProjectNetworkErrorHttpStatusCodeEnum>
    _$createProjectNetworkErrorHttpStatusCodeEnumValues = new BuiltSet<
        CreateProjectNetworkErrorHttpStatusCodeEnum>(const <CreateProjectNetworkErrorHttpStatusCodeEnum>[
  _$createProjectNetworkErrorHttpStatusCodeEnum_number400,
]);

Serializer<CreateProjectNetworkErrorNameEnum>
    _$createProjectNetworkErrorNameEnumSerializer =
    new _$CreateProjectNetworkErrorNameEnumSerializer();
Serializer<CreateProjectNetworkErrorMessageEnum>
    _$createProjectNetworkErrorMessageEnumSerializer =
    new _$CreateProjectNetworkErrorMessageEnumSerializer();
Serializer<CreateProjectNetworkErrorHttpStatusCodeEnum>
    _$createProjectNetworkErrorHttpStatusCodeEnumSerializer =
    new _$CreateProjectNetworkErrorHttpStatusCodeEnumSerializer();

class _$CreateProjectNetworkErrorNameEnumSerializer
    implements PrimitiveSerializer<CreateProjectNetworkErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createProjectNetworkError': 'CreateProjectNetworkError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CreateProjectNetworkError': 'createProjectNetworkError',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateProjectNetworkErrorNameEnum];
  @override
  final String wireName = 'CreateProjectNetworkErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, CreateProjectNetworkErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateProjectNetworkErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateProjectNetworkErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateProjectNetworkErrorMessageEnumSerializer
    implements PrimitiveSerializer<CreateProjectNetworkErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createProjectNetworkError': 'CreateProjectNetworkError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CreateProjectNetworkError': 'createProjectNetworkError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateProjectNetworkErrorMessageEnum
  ];
  @override
  final String wireName = 'CreateProjectNetworkErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, CreateProjectNetworkErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateProjectNetworkErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateProjectNetworkErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateProjectNetworkErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<CreateProjectNetworkErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateProjectNetworkErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CreateProjectNetworkErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CreateProjectNetworkErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateProjectNetworkErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateProjectNetworkErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateProjectNetworkError extends CreateProjectNetworkError {
  @override
  final CreateProjectNetworkErrorNameEnum name;
  @override
  final CreateProjectNetworkErrorMessageEnum message;
  @override
  final CreateProjectNetworkErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$CreateProjectNetworkError(
          [void Function(CreateProjectNetworkErrorBuilder)? updates]) =>
      (new CreateProjectNetworkErrorBuilder()..update(updates))._build();

  _$CreateProjectNetworkError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateProjectNetworkError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CreateProjectNetworkError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'CreateProjectNetworkError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'CreateProjectNetworkError', 'traceId');
  }

  @override
  CreateProjectNetworkError rebuild(
          void Function(CreateProjectNetworkErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProjectNetworkErrorBuilder toBuilder() =>
      new CreateProjectNetworkErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProjectNetworkError &&
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
    return (newBuiltValueToStringHelper(r'CreateProjectNetworkError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class CreateProjectNetworkErrorBuilder
    implements
        Builder<CreateProjectNetworkError, CreateProjectNetworkErrorBuilder> {
  _$CreateProjectNetworkError? _$v;

  CreateProjectNetworkErrorNameEnum? _name;
  CreateProjectNetworkErrorNameEnum? get name => _$this._name;
  set name(CreateProjectNetworkErrorNameEnum? name) => _$this._name = name;

  CreateProjectNetworkErrorMessageEnum? _message;
  CreateProjectNetworkErrorMessageEnum? get message => _$this._message;
  set message(CreateProjectNetworkErrorMessageEnum? message) =>
      _$this._message = message;

  CreateProjectNetworkErrorHttpStatusCodeEnum? _httpStatusCode;
  CreateProjectNetworkErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          CreateProjectNetworkErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  CreateProjectNetworkErrorBuilder() {
    CreateProjectNetworkError._defaults(this);
  }

  CreateProjectNetworkErrorBuilder get _$this {
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
  void replace(CreateProjectNetworkError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateProjectNetworkError;
  }

  @override
  void update(void Function(CreateProjectNetworkErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProjectNetworkError build() => _build();

  _$CreateProjectNetworkError _build() {
    _$CreateProjectNetworkError _$result;
    try {
      _$result = _$v ??
          new _$CreateProjectNetworkError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateProjectNetworkError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CreateProjectNetworkError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'CreateProjectNetworkError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'CreateProjectNetworkError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateProjectNetworkError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
