// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_forbidden_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActionForbiddenErrorNameEnum
    _$actionForbiddenErrorNameEnum_actionForbiddenError =
    const ActionForbiddenErrorNameEnum._('actionForbiddenError');

ActionForbiddenErrorNameEnum _$actionForbiddenErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'actionForbiddenError':
      return _$actionForbiddenErrorNameEnum_actionForbiddenError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ActionForbiddenErrorNameEnum>
    _$actionForbiddenErrorNameEnumValues = new BuiltSet<
        ActionForbiddenErrorNameEnum>(const <ActionForbiddenErrorNameEnum>[
  _$actionForbiddenErrorNameEnum_actionForbiddenError,
]);

const ActionForbiddenErrorMessageEnum
    _$actionForbiddenErrorMessageEnum_principalCanNotExecuteActionOnGivenResource =
    const ActionForbiddenErrorMessageEnum._(
        'principalCanNotExecuteActionOnGivenResource');

ActionForbiddenErrorMessageEnum _$actionForbiddenErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'principalCanNotExecuteActionOnGivenResource':
      return _$actionForbiddenErrorMessageEnum_principalCanNotExecuteActionOnGivenResource;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ActionForbiddenErrorMessageEnum>
    _$actionForbiddenErrorMessageEnumValues = new BuiltSet<
        ActionForbiddenErrorMessageEnum>(const <ActionForbiddenErrorMessageEnum>[
  _$actionForbiddenErrorMessageEnum_principalCanNotExecuteActionOnGivenResource,
]);

const ActionForbiddenErrorHttpStatusCodeEnum
    _$actionForbiddenErrorHttpStatusCodeEnum_number403 =
    const ActionForbiddenErrorHttpStatusCodeEnum._('number403');

ActionForbiddenErrorHttpStatusCodeEnum
    _$actionForbiddenErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number403':
      return _$actionForbiddenErrorHttpStatusCodeEnum_number403;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ActionForbiddenErrorHttpStatusCodeEnum>
    _$actionForbiddenErrorHttpStatusCodeEnumValues = new BuiltSet<
        ActionForbiddenErrorHttpStatusCodeEnum>(const <ActionForbiddenErrorHttpStatusCodeEnum>[
  _$actionForbiddenErrorHttpStatusCodeEnum_number403,
]);

Serializer<ActionForbiddenErrorNameEnum>
    _$actionForbiddenErrorNameEnumSerializer =
    new _$ActionForbiddenErrorNameEnumSerializer();
Serializer<ActionForbiddenErrorMessageEnum>
    _$actionForbiddenErrorMessageEnumSerializer =
    new _$ActionForbiddenErrorMessageEnumSerializer();
Serializer<ActionForbiddenErrorHttpStatusCodeEnum>
    _$actionForbiddenErrorHttpStatusCodeEnumSerializer =
    new _$ActionForbiddenErrorHttpStatusCodeEnumSerializer();

class _$ActionForbiddenErrorNameEnumSerializer
    implements PrimitiveSerializer<ActionForbiddenErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'actionForbiddenError': 'ActionForbiddenError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ActionForbiddenError': 'actionForbiddenError',
  };

  @override
  final Iterable<Type> types = const <Type>[ActionForbiddenErrorNameEnum];
  @override
  final String wireName = 'ActionForbiddenErrorNameEnum';

  @override
  Object serialize(Serializers serializers, ActionForbiddenErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActionForbiddenErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActionForbiddenErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActionForbiddenErrorMessageEnumSerializer
    implements PrimitiveSerializer<ActionForbiddenErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'principalCanNotExecuteActionOnGivenResource':
        'Principal can not execute action on given resource',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Principal can not execute action on given resource':
        'principalCanNotExecuteActionOnGivenResource',
  };

  @override
  final Iterable<Type> types = const <Type>[ActionForbiddenErrorMessageEnum];
  @override
  final String wireName = 'ActionForbiddenErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, ActionForbiddenErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActionForbiddenErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActionForbiddenErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActionForbiddenErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<ActionForbiddenErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number403': 403,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    403: 'number403',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ActionForbiddenErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'ActionForbiddenErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ActionForbiddenErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActionForbiddenErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActionForbiddenErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActionForbiddenError extends ActionForbiddenError {
  @override
  final ActionForbiddenErrorNameEnum name;
  @override
  final ActionForbiddenErrorMessageEnum message;
  @override
  final ActionForbiddenErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$ActionForbiddenError(
          [void Function(ActionForbiddenErrorBuilder)? updates]) =>
      (new ActionForbiddenErrorBuilder()..update(updates))._build();

  _$ActionForbiddenError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ActionForbiddenError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ActionForbiddenError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'ActionForbiddenError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'ActionForbiddenError', 'traceId');
  }

  @override
  ActionForbiddenError rebuild(
          void Function(ActionForbiddenErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActionForbiddenErrorBuilder toBuilder() =>
      new ActionForbiddenErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActionForbiddenError &&
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
    return (newBuiltValueToStringHelper(r'ActionForbiddenError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class ActionForbiddenErrorBuilder
    implements Builder<ActionForbiddenError, ActionForbiddenErrorBuilder> {
  _$ActionForbiddenError? _$v;

  ActionForbiddenErrorNameEnum? _name;
  ActionForbiddenErrorNameEnum? get name => _$this._name;
  set name(ActionForbiddenErrorNameEnum? name) => _$this._name = name;

  ActionForbiddenErrorMessageEnum? _message;
  ActionForbiddenErrorMessageEnum? get message => _$this._message;
  set message(ActionForbiddenErrorMessageEnum? message) =>
      _$this._message = message;

  ActionForbiddenErrorHttpStatusCodeEnum? _httpStatusCode;
  ActionForbiddenErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(ActionForbiddenErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  ActionForbiddenErrorBuilder() {
    ActionForbiddenError._defaults(this);
  }

  ActionForbiddenErrorBuilder get _$this {
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
  void replace(ActionForbiddenError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActionForbiddenError;
  }

  @override
  void update(void Function(ActionForbiddenErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActionForbiddenError build() => _build();

  _$ActionForbiddenError _build() {
    _$ActionForbiddenError _$result;
    try {
      _$result = _$v ??
          new _$ActionForbiddenError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ActionForbiddenError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ActionForbiddenError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'ActionForbiddenError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'ActionForbiddenError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActionForbiddenError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
