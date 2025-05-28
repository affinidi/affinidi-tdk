// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'not_found_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const NotFoundErrorNameEnum _$notFoundErrorNameEnum_notFoundError =
    const NotFoundErrorNameEnum._('notFoundError');

NotFoundErrorNameEnum _$notFoundErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'notFoundError':
      return _$notFoundErrorNameEnum_notFoundError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotFoundErrorNameEnum> _$notFoundErrorNameEnumValues =
    BuiltSet<NotFoundErrorNameEnum>(const <NotFoundErrorNameEnum>[
  _$notFoundErrorNameEnum_notFoundError,
]);

const NotFoundErrorMessageEnum
    _$notFoundErrorMessageEnum_notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
    const NotFoundErrorMessageEnum._(
        'notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod');

NotFoundErrorMessageEnum _$notFoundErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
      return _$notFoundErrorMessageEnum_notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotFoundErrorMessageEnum> _$notFoundErrorMessageEnumValues =
    BuiltSet<NotFoundErrorMessageEnum>(const <NotFoundErrorMessageEnum>[
  _$notFoundErrorMessageEnum_notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
]);

const NotFoundErrorHttpStatusCodeEnum
    _$notFoundErrorHttpStatusCodeEnum_number404 =
    const NotFoundErrorHttpStatusCodeEnum._('number404');

NotFoundErrorHttpStatusCodeEnum _$notFoundErrorHttpStatusCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'number404':
      return _$notFoundErrorHttpStatusCodeEnum_number404;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<NotFoundErrorHttpStatusCodeEnum>
    _$notFoundErrorHttpStatusCodeEnumValues = BuiltSet<
        NotFoundErrorHttpStatusCodeEnum>(const <NotFoundErrorHttpStatusCodeEnum>[
  _$notFoundErrorHttpStatusCodeEnum_number404,
]);

Serializer<NotFoundErrorNameEnum> _$notFoundErrorNameEnumSerializer =
    _$NotFoundErrorNameEnumSerializer();
Serializer<NotFoundErrorMessageEnum> _$notFoundErrorMessageEnumSerializer =
    _$NotFoundErrorMessageEnumSerializer();
Serializer<NotFoundErrorHttpStatusCodeEnum>
    _$notFoundErrorHttpStatusCodeEnumSerializer =
    _$NotFoundErrorHttpStatusCodeEnumSerializer();

class _$NotFoundErrorNameEnumSerializer
    implements PrimitiveSerializer<NotFoundErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'notFoundError': 'NotFoundError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NotFoundError': 'notFoundError',
  };

  @override
  final Iterable<Type> types = const <Type>[NotFoundErrorNameEnum];
  @override
  final String wireName = 'NotFoundErrorNameEnum';

  @override
  Object serialize(Serializers serializers, NotFoundErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotFoundErrorNameEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotFoundErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotFoundErrorMessageEnumSerializer
    implements PrimitiveSerializer<NotFoundErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
        'Not found: \${param}.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Not found: \${param}.':
        'notFoundColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[NotFoundErrorMessageEnum];
  @override
  final String wireName = 'NotFoundErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, NotFoundErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotFoundErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotFoundErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotFoundErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<NotFoundErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number404': 404,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    404: 'number404',
  };

  @override
  final Iterable<Type> types = const <Type>[NotFoundErrorHttpStatusCodeEnum];
  @override
  final String wireName = 'NotFoundErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, NotFoundErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  NotFoundErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      NotFoundErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$NotFoundError extends NotFoundError {
  @override
  final NotFoundErrorNameEnum name;
  @override
  final NotFoundErrorMessageEnum message;
  @override
  final NotFoundErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$NotFoundError([void Function(NotFoundErrorBuilder)? updates]) =>
      (NotFoundErrorBuilder()..update(updates))._build();

  _$NotFoundError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  NotFoundError rebuild(void Function(NotFoundErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotFoundErrorBuilder toBuilder() => NotFoundErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotFoundError &&
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
    return (newBuiltValueToStringHelper(r'NotFoundError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class NotFoundErrorBuilder
    implements Builder<NotFoundError, NotFoundErrorBuilder> {
  _$NotFoundError? _$v;

  NotFoundErrorNameEnum? _name;
  NotFoundErrorNameEnum? get name => _$this._name;
  set name(NotFoundErrorNameEnum? name) => _$this._name = name;

  NotFoundErrorMessageEnum? _message;
  NotFoundErrorMessageEnum? get message => _$this._message;
  set message(NotFoundErrorMessageEnum? message) => _$this._message = message;

  NotFoundErrorHttpStatusCodeEnum? _httpStatusCode;
  NotFoundErrorHttpStatusCodeEnum? get httpStatusCode => _$this._httpStatusCode;
  set httpStatusCode(NotFoundErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  NotFoundErrorBuilder() {
    NotFoundError._defaults(this);
  }

  NotFoundErrorBuilder get _$this {
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
  void replace(NotFoundError other) {
    _$v = other as _$NotFoundError;
  }

  @override
  void update(void Function(NotFoundErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotFoundError build() => _build();

  _$NotFoundError _build() {
    _$NotFoundError _$result;
    try {
      _$result = _$v ??
          _$NotFoundError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'NotFoundError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'NotFoundError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'NotFoundError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'NotFoundError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NotFoundError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
