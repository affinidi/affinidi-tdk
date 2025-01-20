// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'key_not_found_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const KeyNotFoundErrorNameEnum _$keyNotFoundErrorNameEnum_keyNotFoundError =
    const KeyNotFoundErrorNameEnum._('keyNotFoundError');

KeyNotFoundErrorNameEnum _$keyNotFoundErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'keyNotFoundError':
      return _$keyNotFoundErrorNameEnum_keyNotFoundError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<KeyNotFoundErrorNameEnum> _$keyNotFoundErrorNameEnumValues =
    new BuiltSet<KeyNotFoundErrorNameEnum>(const <KeyNotFoundErrorNameEnum>[
  _$keyNotFoundErrorNameEnum_keyNotFoundError,
]);

const KeyNotFoundErrorMessageEnum _$keyNotFoundErrorMessageEnum_keyNotFound =
    const KeyNotFoundErrorMessageEnum._('keyNotFound');

KeyNotFoundErrorMessageEnum _$keyNotFoundErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'keyNotFound':
      return _$keyNotFoundErrorMessageEnum_keyNotFound;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<KeyNotFoundErrorMessageEnum>
    _$keyNotFoundErrorMessageEnumValues = new BuiltSet<
        KeyNotFoundErrorMessageEnum>(const <KeyNotFoundErrorMessageEnum>[
  _$keyNotFoundErrorMessageEnum_keyNotFound,
]);

const KeyNotFoundErrorHttpStatusCodeEnum
    _$keyNotFoundErrorHttpStatusCodeEnum_number500 =
    const KeyNotFoundErrorHttpStatusCodeEnum._('number500');

KeyNotFoundErrorHttpStatusCodeEnum _$keyNotFoundErrorHttpStatusCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'number500':
      return _$keyNotFoundErrorHttpStatusCodeEnum_number500;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<KeyNotFoundErrorHttpStatusCodeEnum>
    _$keyNotFoundErrorHttpStatusCodeEnumValues = new BuiltSet<
        KeyNotFoundErrorHttpStatusCodeEnum>(const <KeyNotFoundErrorHttpStatusCodeEnum>[
  _$keyNotFoundErrorHttpStatusCodeEnum_number500,
]);

Serializer<KeyNotFoundErrorNameEnum> _$keyNotFoundErrorNameEnumSerializer =
    new _$KeyNotFoundErrorNameEnumSerializer();
Serializer<KeyNotFoundErrorMessageEnum>
    _$keyNotFoundErrorMessageEnumSerializer =
    new _$KeyNotFoundErrorMessageEnumSerializer();
Serializer<KeyNotFoundErrorHttpStatusCodeEnum>
    _$keyNotFoundErrorHttpStatusCodeEnumSerializer =
    new _$KeyNotFoundErrorHttpStatusCodeEnumSerializer();

class _$KeyNotFoundErrorNameEnumSerializer
    implements PrimitiveSerializer<KeyNotFoundErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'keyNotFoundError': 'KeyNotFoundError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'KeyNotFoundError': 'keyNotFoundError',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyNotFoundErrorNameEnum];
  @override
  final String wireName = 'KeyNotFoundErrorNameEnum';

  @override
  Object serialize(Serializers serializers, KeyNotFoundErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  KeyNotFoundErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KeyNotFoundErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$KeyNotFoundErrorMessageEnumSerializer
    implements PrimitiveSerializer<KeyNotFoundErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'keyNotFound': 'Key not found',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Key not found': 'keyNotFound',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyNotFoundErrorMessageEnum];
  @override
  final String wireName = 'KeyNotFoundErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, KeyNotFoundErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  KeyNotFoundErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KeyNotFoundErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$KeyNotFoundErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<KeyNotFoundErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number500': 500,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    500: 'number500',
  };

  @override
  final Iterable<Type> types = const <Type>[KeyNotFoundErrorHttpStatusCodeEnum];
  @override
  final String wireName = 'KeyNotFoundErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, KeyNotFoundErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  KeyNotFoundErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      KeyNotFoundErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$KeyNotFoundError extends KeyNotFoundError {
  @override
  final KeyNotFoundErrorNameEnum name;
  @override
  final KeyNotFoundErrorMessageEnum message;
  @override
  final KeyNotFoundErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$KeyNotFoundError(
          [void Function(KeyNotFoundErrorBuilder)? updates]) =>
      (new KeyNotFoundErrorBuilder()..update(updates))._build();

  _$KeyNotFoundError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'KeyNotFoundError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'KeyNotFoundError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'KeyNotFoundError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'KeyNotFoundError', 'traceId');
  }

  @override
  KeyNotFoundError rebuild(void Function(KeyNotFoundErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeyNotFoundErrorBuilder toBuilder() =>
      new KeyNotFoundErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeyNotFoundError &&
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
    return (newBuiltValueToStringHelper(r'KeyNotFoundError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class KeyNotFoundErrorBuilder
    implements Builder<KeyNotFoundError, KeyNotFoundErrorBuilder> {
  _$KeyNotFoundError? _$v;

  KeyNotFoundErrorNameEnum? _name;
  KeyNotFoundErrorNameEnum? get name => _$this._name;
  set name(KeyNotFoundErrorNameEnum? name) => _$this._name = name;

  KeyNotFoundErrorMessageEnum? _message;
  KeyNotFoundErrorMessageEnum? get message => _$this._message;
  set message(KeyNotFoundErrorMessageEnum? message) =>
      _$this._message = message;

  KeyNotFoundErrorHttpStatusCodeEnum? _httpStatusCode;
  KeyNotFoundErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(KeyNotFoundErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  KeyNotFoundErrorBuilder() {
    KeyNotFoundError._defaults(this);
  }

  KeyNotFoundErrorBuilder get _$this {
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
  void replace(KeyNotFoundError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KeyNotFoundError;
  }

  @override
  void update(void Function(KeyNotFoundErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KeyNotFoundError build() => _build();

  _$KeyNotFoundError _build() {
    _$KeyNotFoundError _$result;
    try {
      _$result = _$v ??
          new _$KeyNotFoundError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'KeyNotFoundError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'KeyNotFoundError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'KeyNotFoundError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'KeyNotFoundError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'KeyNotFoundError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
