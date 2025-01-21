// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'already_exists_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlreadyExistsErrorNameEnum
    _$alreadyExistsErrorNameEnum_alreadyExistsError =
    const AlreadyExistsErrorNameEnum._('alreadyExistsError');

AlreadyExistsErrorNameEnum _$alreadyExistsErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'alreadyExistsError':
      return _$alreadyExistsErrorNameEnum_alreadyExistsError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AlreadyExistsErrorNameEnum> _$alreadyExistsErrorNameEnumValues =
    new BuiltSet<AlreadyExistsErrorNameEnum>(const <AlreadyExistsErrorNameEnum>[
  _$alreadyExistsErrorNameEnum_alreadyExistsError,
]);

const AlreadyExistsErrorMessageEnum
    _$alreadyExistsErrorMessageEnum_alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
    const AlreadyExistsErrorMessageEnum._(
        'alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod');

AlreadyExistsErrorMessageEnum _$alreadyExistsErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
      return _$alreadyExistsErrorMessageEnum_alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AlreadyExistsErrorMessageEnum>
    _$alreadyExistsErrorMessageEnumValues = new BuiltSet<
        AlreadyExistsErrorMessageEnum>(const <AlreadyExistsErrorMessageEnum>[
  _$alreadyExistsErrorMessageEnum_alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
]);

const AlreadyExistsErrorHttpStatusCodeEnum
    _$alreadyExistsErrorHttpStatusCodeEnum_number409 =
    const AlreadyExistsErrorHttpStatusCodeEnum._('number409');

AlreadyExistsErrorHttpStatusCodeEnum
    _$alreadyExistsErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number409':
      return _$alreadyExistsErrorHttpStatusCodeEnum_number409;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AlreadyExistsErrorHttpStatusCodeEnum>
    _$alreadyExistsErrorHttpStatusCodeEnumValues = new BuiltSet<
        AlreadyExistsErrorHttpStatusCodeEnum>(const <AlreadyExistsErrorHttpStatusCodeEnum>[
  _$alreadyExistsErrorHttpStatusCodeEnum_number409,
]);

Serializer<AlreadyExistsErrorNameEnum> _$alreadyExistsErrorNameEnumSerializer =
    new _$AlreadyExistsErrorNameEnumSerializer();
Serializer<AlreadyExistsErrorMessageEnum>
    _$alreadyExistsErrorMessageEnumSerializer =
    new _$AlreadyExistsErrorMessageEnumSerializer();
Serializer<AlreadyExistsErrorHttpStatusCodeEnum>
    _$alreadyExistsErrorHttpStatusCodeEnumSerializer =
    new _$AlreadyExistsErrorHttpStatusCodeEnumSerializer();

class _$AlreadyExistsErrorNameEnumSerializer
    implements PrimitiveSerializer<AlreadyExistsErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alreadyExistsError': 'AlreadyExistsError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'AlreadyExistsError': 'alreadyExistsError',
  };

  @override
  final Iterable<Type> types = const <Type>[AlreadyExistsErrorNameEnum];
  @override
  final String wireName = 'AlreadyExistsErrorNameEnum';

  @override
  Object serialize(Serializers serializers, AlreadyExistsErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlreadyExistsErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlreadyExistsErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlreadyExistsErrorMessageEnumSerializer
    implements PrimitiveSerializer<AlreadyExistsErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
        'Already exists: \${param}.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Already exists: \${param}.':
        'alreadyExistsColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[AlreadyExistsErrorMessageEnum];
  @override
  final String wireName = 'AlreadyExistsErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, AlreadyExistsErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlreadyExistsErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlreadyExistsErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlreadyExistsErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<AlreadyExistsErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number409': 409,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    409: 'number409',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AlreadyExistsErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'AlreadyExistsErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, AlreadyExistsErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AlreadyExistsErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AlreadyExistsErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AlreadyExistsError extends AlreadyExistsError {
  @override
  final AlreadyExistsErrorNameEnum name;
  @override
  final AlreadyExistsErrorMessageEnum message;
  @override
  final AlreadyExistsErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$AlreadyExistsError(
          [void Function(AlreadyExistsErrorBuilder)? updates]) =>
      (new AlreadyExistsErrorBuilder()..update(updates))._build();

  _$AlreadyExistsError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'AlreadyExistsError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'AlreadyExistsError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'AlreadyExistsError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'AlreadyExistsError', 'traceId');
  }

  @override
  AlreadyExistsError rebuild(
          void Function(AlreadyExistsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlreadyExistsErrorBuilder toBuilder() =>
      new AlreadyExistsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlreadyExistsError &&
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
    return (newBuiltValueToStringHelper(r'AlreadyExistsError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class AlreadyExistsErrorBuilder
    implements Builder<AlreadyExistsError, AlreadyExistsErrorBuilder> {
  _$AlreadyExistsError? _$v;

  AlreadyExistsErrorNameEnum? _name;
  AlreadyExistsErrorNameEnum? get name => _$this._name;
  set name(AlreadyExistsErrorNameEnum? name) => _$this._name = name;

  AlreadyExistsErrorMessageEnum? _message;
  AlreadyExistsErrorMessageEnum? get message => _$this._message;
  set message(AlreadyExistsErrorMessageEnum? message) =>
      _$this._message = message;

  AlreadyExistsErrorHttpStatusCodeEnum? _httpStatusCode;
  AlreadyExistsErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(AlreadyExistsErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  AlreadyExistsErrorBuilder() {
    AlreadyExistsError._defaults(this);
  }

  AlreadyExistsErrorBuilder get _$this {
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
  void replace(AlreadyExistsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlreadyExistsError;
  }

  @override
  void update(void Function(AlreadyExistsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlreadyExistsError build() => _build();

  _$AlreadyExistsError _build() {
    _$AlreadyExistsError _$result;
    try {
      _$result = _$v ??
          new _$AlreadyExistsError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AlreadyExistsError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'AlreadyExistsError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'AlreadyExistsError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'AlreadyExistsError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AlreadyExistsError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
