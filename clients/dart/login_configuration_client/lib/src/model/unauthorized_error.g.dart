// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unauthorized_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UnauthorizedErrorNameEnum _$unauthorizedErrorNameEnum_unauthorizedError =
    const UnauthorizedErrorNameEnum._('unauthorizedError');

UnauthorizedErrorNameEnum _$unauthorizedErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'unauthorizedError':
      return _$unauthorizedErrorNameEnum_unauthorizedError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UnauthorizedErrorNameEnum> _$unauthorizedErrorNameEnumValues =
    new BuiltSet<UnauthorizedErrorNameEnum>(const <UnauthorizedErrorNameEnum>[
  _$unauthorizedErrorNameEnum_unauthorizedError,
]);

const UnauthorizedErrorMessageEnum _$unauthorizedErrorMessageEnum_unauthorized =
    const UnauthorizedErrorMessageEnum._('unauthorized');

UnauthorizedErrorMessageEnum _$unauthorizedErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'unauthorized':
      return _$unauthorizedErrorMessageEnum_unauthorized;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UnauthorizedErrorMessageEnum>
    _$unauthorizedErrorMessageEnumValues = new BuiltSet<
        UnauthorizedErrorMessageEnum>(const <UnauthorizedErrorMessageEnum>[
  _$unauthorizedErrorMessageEnum_unauthorized,
]);

const UnauthorizedErrorHttpStatusCodeEnum
    _$unauthorizedErrorHttpStatusCodeEnum_number401 =
    const UnauthorizedErrorHttpStatusCodeEnum._('number401');

UnauthorizedErrorHttpStatusCodeEnum
    _$unauthorizedErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number401':
      return _$unauthorizedErrorHttpStatusCodeEnum_number401;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<UnauthorizedErrorHttpStatusCodeEnum>
    _$unauthorizedErrorHttpStatusCodeEnumValues = new BuiltSet<
        UnauthorizedErrorHttpStatusCodeEnum>(const <UnauthorizedErrorHttpStatusCodeEnum>[
  _$unauthorizedErrorHttpStatusCodeEnum_number401,
]);

Serializer<UnauthorizedErrorNameEnum> _$unauthorizedErrorNameEnumSerializer =
    new _$UnauthorizedErrorNameEnumSerializer();
Serializer<UnauthorizedErrorMessageEnum>
    _$unauthorizedErrorMessageEnumSerializer =
    new _$UnauthorizedErrorMessageEnumSerializer();
Serializer<UnauthorizedErrorHttpStatusCodeEnum>
    _$unauthorizedErrorHttpStatusCodeEnumSerializer =
    new _$UnauthorizedErrorHttpStatusCodeEnumSerializer();

class _$UnauthorizedErrorNameEnumSerializer
    implements PrimitiveSerializer<UnauthorizedErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unauthorizedError': 'UnauthorizedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UnauthorizedError': 'unauthorizedError',
  };

  @override
  final Iterable<Type> types = const <Type>[UnauthorizedErrorNameEnum];
  @override
  final String wireName = 'UnauthorizedErrorNameEnum';

  @override
  Object serialize(Serializers serializers, UnauthorizedErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnauthorizedErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnauthorizedErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnauthorizedErrorMessageEnumSerializer
    implements PrimitiveSerializer<UnauthorizedErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unauthorized': 'Unauthorized',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Unauthorized': 'unauthorized',
  };

  @override
  final Iterable<Type> types = const <Type>[UnauthorizedErrorMessageEnum];
  @override
  final String wireName = 'UnauthorizedErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, UnauthorizedErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnauthorizedErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnauthorizedErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnauthorizedErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<UnauthorizedErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number401': 401,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    401: 'number401',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UnauthorizedErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'UnauthorizedErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, UnauthorizedErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnauthorizedErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnauthorizedErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnauthorizedError extends UnauthorizedError {
  @override
  final UnauthorizedErrorNameEnum name;
  @override
  final UnauthorizedErrorMessageEnum message;
  @override
  final UnauthorizedErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$UnauthorizedError(
          [void Function(UnauthorizedErrorBuilder)? updates]) =>
      (new UnauthorizedErrorBuilder()..update(updates))._build();

  _$UnauthorizedError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'UnauthorizedError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'UnauthorizedError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'UnauthorizedError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'UnauthorizedError', 'traceId');
  }

  @override
  UnauthorizedError rebuild(void Function(UnauthorizedErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnauthorizedErrorBuilder toBuilder() =>
      new UnauthorizedErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnauthorizedError &&
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
    return (newBuiltValueToStringHelper(r'UnauthorizedError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class UnauthorizedErrorBuilder
    implements Builder<UnauthorizedError, UnauthorizedErrorBuilder> {
  _$UnauthorizedError? _$v;

  UnauthorizedErrorNameEnum? _name;
  UnauthorizedErrorNameEnum? get name => _$this._name;
  set name(UnauthorizedErrorNameEnum? name) => _$this._name = name;

  UnauthorizedErrorMessageEnum? _message;
  UnauthorizedErrorMessageEnum? get message => _$this._message;
  set message(UnauthorizedErrorMessageEnum? message) =>
      _$this._message = message;

  UnauthorizedErrorHttpStatusCodeEnum? _httpStatusCode;
  UnauthorizedErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(UnauthorizedErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  UnauthorizedErrorBuilder() {
    UnauthorizedError._defaults(this);
  }

  UnauthorizedErrorBuilder get _$this {
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
  void replace(UnauthorizedError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnauthorizedError;
  }

  @override
  void update(void Function(UnauthorizedErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnauthorizedError build() => _build();

  _$UnauthorizedError _build() {
    _$UnauthorizedError _$result;
    try {
      _$result = _$v ??
          new _$UnauthorizedError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UnauthorizedError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'UnauthorizedError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'UnauthorizedError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'UnauthorizedError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnauthorizedError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
