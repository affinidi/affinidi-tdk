// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_jwt_token_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidJwtTokenErrorNameEnum
    _$invalidJwtTokenErrorNameEnum_invalidJwtTokenError =
    const InvalidJwtTokenErrorNameEnum._('invalidJwtTokenError');

InvalidJwtTokenErrorNameEnum _$invalidJwtTokenErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidJwtTokenError':
      return _$invalidJwtTokenErrorNameEnum_invalidJwtTokenError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidJwtTokenErrorNameEnum>
    _$invalidJwtTokenErrorNameEnumValues =
    BuiltSet<InvalidJwtTokenErrorNameEnum>(const <InvalidJwtTokenErrorNameEnum>[
  _$invalidJwtTokenErrorNameEnum_invalidJwtTokenError,
]);

const InvalidJwtTokenErrorMessageEnum
    _$invalidJwtTokenErrorMessageEnum_jWTTokenIsInvalid =
    const InvalidJwtTokenErrorMessageEnum._('jWTTokenIsInvalid');

InvalidJwtTokenErrorMessageEnum _$invalidJwtTokenErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'jWTTokenIsInvalid':
      return _$invalidJwtTokenErrorMessageEnum_jWTTokenIsInvalid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidJwtTokenErrorMessageEnum>
    _$invalidJwtTokenErrorMessageEnumValues = BuiltSet<
        InvalidJwtTokenErrorMessageEnum>(const <InvalidJwtTokenErrorMessageEnum>[
  _$invalidJwtTokenErrorMessageEnum_jWTTokenIsInvalid,
]);

const InvalidJwtTokenErrorHttpStatusCodeEnum
    _$invalidJwtTokenErrorHttpStatusCodeEnum_number401 =
    const InvalidJwtTokenErrorHttpStatusCodeEnum._('number401');

InvalidJwtTokenErrorHttpStatusCodeEnum
    _$invalidJwtTokenErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number401':
      return _$invalidJwtTokenErrorHttpStatusCodeEnum_number401;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidJwtTokenErrorHttpStatusCodeEnum>
    _$invalidJwtTokenErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidJwtTokenErrorHttpStatusCodeEnum>(const <InvalidJwtTokenErrorHttpStatusCodeEnum>[
  _$invalidJwtTokenErrorHttpStatusCodeEnum_number401,
]);

Serializer<InvalidJwtTokenErrorNameEnum>
    _$invalidJwtTokenErrorNameEnumSerializer =
    _$InvalidJwtTokenErrorNameEnumSerializer();
Serializer<InvalidJwtTokenErrorMessageEnum>
    _$invalidJwtTokenErrorMessageEnumSerializer =
    _$InvalidJwtTokenErrorMessageEnumSerializer();
Serializer<InvalidJwtTokenErrorHttpStatusCodeEnum>
    _$invalidJwtTokenErrorHttpStatusCodeEnumSerializer =
    _$InvalidJwtTokenErrorHttpStatusCodeEnumSerializer();

class _$InvalidJwtTokenErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidJwtTokenErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidJwtTokenError': 'InvalidJwtTokenError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidJwtTokenError': 'invalidJwtTokenError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidJwtTokenErrorNameEnum];
  @override
  final String wireName = 'InvalidJwtTokenErrorNameEnum';

  @override
  Object serialize(Serializers serializers, InvalidJwtTokenErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidJwtTokenErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidJwtTokenErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidJwtTokenErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidJwtTokenErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'jWTTokenIsInvalid': 'JWT token is invalid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'JWT token is invalid': 'jWTTokenIsInvalid',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidJwtTokenErrorMessageEnum];
  @override
  final String wireName = 'InvalidJwtTokenErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidJwtTokenErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidJwtTokenErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidJwtTokenErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidJwtTokenErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidJwtTokenErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number401': 401,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    401: 'number401',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidJwtTokenErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidJwtTokenErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidJwtTokenErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidJwtTokenErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidJwtTokenErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidJwtTokenError extends InvalidJwtTokenError {
  @override
  final InvalidJwtTokenErrorNameEnum name;
  @override
  final InvalidJwtTokenErrorMessageEnum message;
  @override
  final InvalidJwtTokenErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$InvalidJwtTokenError(
          [void Function(InvalidJwtTokenErrorBuilder)? updates]) =>
      (InvalidJwtTokenErrorBuilder()..update(updates))._build();

  _$InvalidJwtTokenError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidJwtTokenError rebuild(
          void Function(InvalidJwtTokenErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidJwtTokenErrorBuilder toBuilder() =>
      InvalidJwtTokenErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidJwtTokenError &&
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
    return (newBuiltValueToStringHelper(r'InvalidJwtTokenError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidJwtTokenErrorBuilder
    implements Builder<InvalidJwtTokenError, InvalidJwtTokenErrorBuilder> {
  _$InvalidJwtTokenError? _$v;

  InvalidJwtTokenErrorNameEnum? _name;
  InvalidJwtTokenErrorNameEnum? get name => _$this._name;
  set name(InvalidJwtTokenErrorNameEnum? name) => _$this._name = name;

  InvalidJwtTokenErrorMessageEnum? _message;
  InvalidJwtTokenErrorMessageEnum? get message => _$this._message;
  set message(InvalidJwtTokenErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidJwtTokenErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidJwtTokenErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(InvalidJwtTokenErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  InvalidJwtTokenErrorBuilder() {
    InvalidJwtTokenError._defaults(this);
  }

  InvalidJwtTokenErrorBuilder get _$this {
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
  void replace(InvalidJwtTokenError other) {
    _$v = other as _$InvalidJwtTokenError;
  }

  @override
  void update(void Function(InvalidJwtTokenErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidJwtTokenError build() => _build();

  _$InvalidJwtTokenError _build() {
    _$InvalidJwtTokenError _$result;
    try {
      _$result = _$v ??
          _$InvalidJwtTokenError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidJwtTokenError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidJwtTokenError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidJwtTokenError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidJwtTokenError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidJwtTokenError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
