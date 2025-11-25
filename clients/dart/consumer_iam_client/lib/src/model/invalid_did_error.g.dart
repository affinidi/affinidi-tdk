// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_did_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidDIDErrorNameEnum _$invalidDIDErrorNameEnum_invalidDIDError =
    const InvalidDIDErrorNameEnum._('invalidDIDError');

InvalidDIDErrorNameEnum _$invalidDIDErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidDIDError':
      return _$invalidDIDErrorNameEnum_invalidDIDError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidDIDErrorNameEnum> _$invalidDIDErrorNameEnumValues =
    BuiltSet<InvalidDIDErrorNameEnum>(const <InvalidDIDErrorNameEnum>[
  _$invalidDIDErrorNameEnum_invalidDIDError,
]);

const InvalidDIDErrorMessageEnum
    _$invalidDIDErrorMessageEnum_unableToResolveDIDMethod =
    const InvalidDIDErrorMessageEnum._('unableToResolveDIDMethod');

InvalidDIDErrorMessageEnum _$invalidDIDErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'unableToResolveDIDMethod':
      return _$invalidDIDErrorMessageEnum_unableToResolveDIDMethod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidDIDErrorMessageEnum> _$invalidDIDErrorMessageEnumValues =
    BuiltSet<InvalidDIDErrorMessageEnum>(const <InvalidDIDErrorMessageEnum>[
  _$invalidDIDErrorMessageEnum_unableToResolveDIDMethod,
]);

const InvalidDIDErrorHttpStatusCodeEnum
    _$invalidDIDErrorHttpStatusCodeEnum_number400 =
    const InvalidDIDErrorHttpStatusCodeEnum._('number400');

InvalidDIDErrorHttpStatusCodeEnum _$invalidDIDErrorHttpStatusCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'number400':
      return _$invalidDIDErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidDIDErrorHttpStatusCodeEnum>
    _$invalidDIDErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidDIDErrorHttpStatusCodeEnum>(const <InvalidDIDErrorHttpStatusCodeEnum>[
  _$invalidDIDErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidDIDErrorNameEnum> _$invalidDIDErrorNameEnumSerializer =
    _$InvalidDIDErrorNameEnumSerializer();
Serializer<InvalidDIDErrorMessageEnum> _$invalidDIDErrorMessageEnumSerializer =
    _$InvalidDIDErrorMessageEnumSerializer();
Serializer<InvalidDIDErrorHttpStatusCodeEnum>
    _$invalidDIDErrorHttpStatusCodeEnumSerializer =
    _$InvalidDIDErrorHttpStatusCodeEnumSerializer();

class _$InvalidDIDErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidDIDErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidDIDError': 'InvalidDIDError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidDIDError': 'invalidDIDError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidDIDErrorNameEnum];
  @override
  final String wireName = 'InvalidDIDErrorNameEnum';

  @override
  Object serialize(Serializers serializers, InvalidDIDErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidDIDErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidDIDErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidDIDErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidDIDErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unableToResolveDIDMethod': 'Unable to resolve DID method',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Unable to resolve DID method': 'unableToResolveDIDMethod',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidDIDErrorMessageEnum];
  @override
  final String wireName = 'InvalidDIDErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, InvalidDIDErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidDIDErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidDIDErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidDIDErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidDIDErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidDIDErrorHttpStatusCodeEnum];
  @override
  final String wireName = 'InvalidDIDErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidDIDErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidDIDErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidDIDErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidDIDError extends InvalidDIDError {
  @override
  final InvalidDIDErrorNameEnum name;
  @override
  final InvalidDIDErrorMessageEnum message;
  @override
  final InvalidDIDErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidJwtTokenErrorDetailsInner>? details;

  factory _$InvalidDIDError([void Function(InvalidDIDErrorBuilder)? updates]) =>
      (InvalidDIDErrorBuilder()..update(updates))._build();

  _$InvalidDIDError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidDIDError rebuild(void Function(InvalidDIDErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidDIDErrorBuilder toBuilder() => InvalidDIDErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidDIDError &&
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
    return (newBuiltValueToStringHelper(r'InvalidDIDError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidDIDErrorBuilder
    implements Builder<InvalidDIDError, InvalidDIDErrorBuilder> {
  _$InvalidDIDError? _$v;

  InvalidDIDErrorNameEnum? _name;
  InvalidDIDErrorNameEnum? get name => _$this._name;
  set name(InvalidDIDErrorNameEnum? name) => _$this._name = name;

  InvalidDIDErrorMessageEnum? _message;
  InvalidDIDErrorMessageEnum? get message => _$this._message;
  set message(InvalidDIDErrorMessageEnum? message) => _$this._message = message;

  InvalidDIDErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidDIDErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(InvalidDIDErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidJwtTokenErrorDetailsInner>? _details;
  ListBuilder<InvalidJwtTokenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<InvalidJwtTokenErrorDetailsInner>();
  set details(ListBuilder<InvalidJwtTokenErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidDIDErrorBuilder() {
    InvalidDIDError._defaults(this);
  }

  InvalidDIDErrorBuilder get _$this {
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
  void replace(InvalidDIDError other) {
    _$v = other as _$InvalidDIDError;
  }

  @override
  void update(void Function(InvalidDIDErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidDIDError build() => _build();

  _$InvalidDIDError _build() {
    _$InvalidDIDError _$result;
    try {
      _$result = _$v ??
          _$InvalidDIDError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidDIDError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidDIDError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidDIDError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidDIDError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidDIDError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
