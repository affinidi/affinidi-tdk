// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_forbidden_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OperationForbiddenErrorNameEnum
    _$operationForbiddenErrorNameEnum_operationForbiddenError =
    const OperationForbiddenErrorNameEnum._('operationForbiddenError');

OperationForbiddenErrorNameEnum _$operationForbiddenErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'operationForbiddenError':
      return _$operationForbiddenErrorNameEnum_operationForbiddenError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OperationForbiddenErrorNameEnum>
    _$operationForbiddenErrorNameEnumValues = new BuiltSet<
        OperationForbiddenErrorNameEnum>(const <OperationForbiddenErrorNameEnum>[
  _$operationForbiddenErrorNameEnum_operationForbiddenError,
]);

const OperationForbiddenErrorMessageEnum
    _$operationForbiddenErrorMessageEnum_operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
    const OperationForbiddenErrorMessageEnum._(
        'operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod');

OperationForbiddenErrorMessageEnum _$operationForbiddenErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
      return _$operationForbiddenErrorMessageEnum_operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OperationForbiddenErrorMessageEnum>
    _$operationForbiddenErrorMessageEnumValues = new BuiltSet<
        OperationForbiddenErrorMessageEnum>(const <OperationForbiddenErrorMessageEnum>[
  _$operationForbiddenErrorMessageEnum_operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
]);

const OperationForbiddenErrorHttpStatusCodeEnum
    _$operationForbiddenErrorHttpStatusCodeEnum_number403 =
    const OperationForbiddenErrorHttpStatusCodeEnum._('number403');

OperationForbiddenErrorHttpStatusCodeEnum
    _$operationForbiddenErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number403':
      return _$operationForbiddenErrorHttpStatusCodeEnum_number403;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<OperationForbiddenErrorHttpStatusCodeEnum>
    _$operationForbiddenErrorHttpStatusCodeEnumValues = new BuiltSet<
        OperationForbiddenErrorHttpStatusCodeEnum>(const <OperationForbiddenErrorHttpStatusCodeEnum>[
  _$operationForbiddenErrorHttpStatusCodeEnum_number403,
]);

Serializer<OperationForbiddenErrorNameEnum>
    _$operationForbiddenErrorNameEnumSerializer =
    new _$OperationForbiddenErrorNameEnumSerializer();
Serializer<OperationForbiddenErrorMessageEnum>
    _$operationForbiddenErrorMessageEnumSerializer =
    new _$OperationForbiddenErrorMessageEnumSerializer();
Serializer<OperationForbiddenErrorHttpStatusCodeEnum>
    _$operationForbiddenErrorHttpStatusCodeEnumSerializer =
    new _$OperationForbiddenErrorHttpStatusCodeEnumSerializer();

class _$OperationForbiddenErrorNameEnumSerializer
    implements PrimitiveSerializer<OperationForbiddenErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operationForbiddenError': 'OperationForbiddenError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OperationForbiddenError': 'operationForbiddenError',
  };

  @override
  final Iterable<Type> types = const <Type>[OperationForbiddenErrorNameEnum];
  @override
  final String wireName = 'OperationForbiddenErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, OperationForbiddenErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OperationForbiddenErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OperationForbiddenErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OperationForbiddenErrorMessageEnumSerializer
    implements PrimitiveSerializer<OperationForbiddenErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
        'Operation forbidden: \${param}.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Operation forbidden: \${param}.':
        'operationForbiddenColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[OperationForbiddenErrorMessageEnum];
  @override
  final String wireName = 'OperationForbiddenErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, OperationForbiddenErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OperationForbiddenErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OperationForbiddenErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OperationForbiddenErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<OperationForbiddenErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number403': 403,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    403: 'number403',
  };

  @override
  final Iterable<Type> types = const <Type>[
    OperationForbiddenErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'OperationForbiddenErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          OperationForbiddenErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OperationForbiddenErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OperationForbiddenErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OperationForbiddenError extends OperationForbiddenError {
  @override
  final OperationForbiddenErrorNameEnum name;
  @override
  final OperationForbiddenErrorMessageEnum message;
  @override
  final OperationForbiddenErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$OperationForbiddenError(
          [void Function(OperationForbiddenErrorBuilder)? updates]) =>
      (new OperationForbiddenErrorBuilder()..update(updates))._build();

  _$OperationForbiddenError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'OperationForbiddenError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'OperationForbiddenError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'OperationForbiddenError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'OperationForbiddenError', 'traceId');
  }

  @override
  OperationForbiddenError rebuild(
          void Function(OperationForbiddenErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationForbiddenErrorBuilder toBuilder() =>
      new OperationForbiddenErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationForbiddenError &&
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
    return (newBuiltValueToStringHelper(r'OperationForbiddenError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class OperationForbiddenErrorBuilder
    implements
        Builder<OperationForbiddenError, OperationForbiddenErrorBuilder> {
  _$OperationForbiddenError? _$v;

  OperationForbiddenErrorNameEnum? _name;
  OperationForbiddenErrorNameEnum? get name => _$this._name;
  set name(OperationForbiddenErrorNameEnum? name) => _$this._name = name;

  OperationForbiddenErrorMessageEnum? _message;
  OperationForbiddenErrorMessageEnum? get message => _$this._message;
  set message(OperationForbiddenErrorMessageEnum? message) =>
      _$this._message = message;

  OperationForbiddenErrorHttpStatusCodeEnum? _httpStatusCode;
  OperationForbiddenErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          OperationForbiddenErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  OperationForbiddenErrorBuilder() {
    OperationForbiddenError._defaults(this);
  }

  OperationForbiddenErrorBuilder get _$this {
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
  void replace(OperationForbiddenError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationForbiddenError;
  }

  @override
  void update(void Function(OperationForbiddenErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationForbiddenError build() => _build();

  _$OperationForbiddenError _build() {
    _$OperationForbiddenError _$result;
    try {
      _$result = _$v ??
          new _$OperationForbiddenError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'OperationForbiddenError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'OperationForbiddenError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'OperationForbiddenError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'OperationForbiddenError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OperationForbiddenError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
