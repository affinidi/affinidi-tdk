// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_parameter_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidParameterErrorNameEnum
    _$invalidParameterErrorNameEnum_invalidParameterError =
    const InvalidParameterErrorNameEnum._('invalidParameterError');

InvalidParameterErrorNameEnum _$invalidParameterErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidParameterError':
      return _$invalidParameterErrorNameEnum_invalidParameterError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidParameterErrorNameEnum>
    _$invalidParameterErrorNameEnumValues = BuiltSet<
        InvalidParameterErrorNameEnum>(const <InvalidParameterErrorNameEnum>[
  _$invalidParameterErrorNameEnum_invalidParameterError,
]);

const InvalidParameterErrorMessageEnum
    _$invalidParameterErrorMessageEnum_invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
    const InvalidParameterErrorMessageEnum._(
        'invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod');

InvalidParameterErrorMessageEnum _$invalidParameterErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
      return _$invalidParameterErrorMessageEnum_invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidParameterErrorMessageEnum>
    _$invalidParameterErrorMessageEnumValues = BuiltSet<
        InvalidParameterErrorMessageEnum>(const <InvalidParameterErrorMessageEnum>[
  _$invalidParameterErrorMessageEnum_invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
]);

const InvalidParameterErrorHttpStatusCodeEnum
    _$invalidParameterErrorHttpStatusCodeEnum_number400 =
    const InvalidParameterErrorHttpStatusCodeEnum._('number400');

InvalidParameterErrorHttpStatusCodeEnum
    _$invalidParameterErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidParameterErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidParameterErrorHttpStatusCodeEnum>
    _$invalidParameterErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidParameterErrorHttpStatusCodeEnum>(const <InvalidParameterErrorHttpStatusCodeEnum>[
  _$invalidParameterErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidParameterErrorNameEnum>
    _$invalidParameterErrorNameEnumSerializer =
    _$InvalidParameterErrorNameEnumSerializer();
Serializer<InvalidParameterErrorMessageEnum>
    _$invalidParameterErrorMessageEnumSerializer =
    _$InvalidParameterErrorMessageEnumSerializer();
Serializer<InvalidParameterErrorHttpStatusCodeEnum>
    _$invalidParameterErrorHttpStatusCodeEnumSerializer =
    _$InvalidParameterErrorHttpStatusCodeEnumSerializer();

class _$InvalidParameterErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidParameterErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidParameterError': 'InvalidParameterError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidParameterError': 'invalidParameterError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidParameterErrorNameEnum];
  @override
  final String wireName = 'InvalidParameterErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidParameterErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidParameterErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidParameterErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidParameterErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidParameterErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
        'Invalid parameter: \${param}.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Invalid parameter: \${param}.':
        'invalidParameterColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidParameterErrorMessageEnum];
  @override
  final String wireName = 'InvalidParameterErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidParameterErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidParameterErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidParameterErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidParameterErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidParameterErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidParameterErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidParameterErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidParameterErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidParameterErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidParameterErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidParameterError extends InvalidParameterError {
  @override
  final InvalidParameterErrorNameEnum name;
  @override
  final InvalidParameterErrorMessageEnum message;
  @override
  final InvalidParameterErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$InvalidParameterError(
          [void Function(InvalidParameterErrorBuilder)? updates]) =>
      (InvalidParameterErrorBuilder()..update(updates))._build();

  _$InvalidParameterError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidParameterError rebuild(
          void Function(InvalidParameterErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidParameterErrorBuilder toBuilder() =>
      InvalidParameterErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidParameterError &&
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
    return (newBuiltValueToStringHelper(r'InvalidParameterError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidParameterErrorBuilder
    implements Builder<InvalidParameterError, InvalidParameterErrorBuilder> {
  _$InvalidParameterError? _$v;

  InvalidParameterErrorNameEnum? _name;
  InvalidParameterErrorNameEnum? get name => _$this._name;
  set name(InvalidParameterErrorNameEnum? name) => _$this._name = name;

  InvalidParameterErrorMessageEnum? _message;
  InvalidParameterErrorMessageEnum? get message => _$this._message;
  set message(InvalidParameterErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidParameterErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidParameterErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(InvalidParameterErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidParameterErrorBuilder() {
    InvalidParameterError._defaults(this);
  }

  InvalidParameterErrorBuilder get _$this {
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
  void replace(InvalidParameterError other) {
    _$v = other as _$InvalidParameterError;
  }

  @override
  void update(void Function(InvalidParameterErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidParameterError build() => _build();

  _$InvalidParameterError _build() {
    _$InvalidParameterError _$result;
    try {
      _$result = _$v ??
          _$InvalidParameterError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidParameterError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidParameterError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidParameterError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidParameterError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidParameterError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
