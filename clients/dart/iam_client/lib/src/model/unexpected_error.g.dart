// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unexpected_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UnexpectedErrorNameEnum _$unexpectedErrorNameEnum_unexpectedError =
    const UnexpectedErrorNameEnum._('unexpectedError');

UnexpectedErrorNameEnum _$unexpectedErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'unexpectedError':
      return _$unexpectedErrorNameEnum_unexpectedError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UnexpectedErrorNameEnum> _$unexpectedErrorNameEnumValues =
    BuiltSet<UnexpectedErrorNameEnum>(const <UnexpectedErrorNameEnum>[
  _$unexpectedErrorNameEnum_unexpectedError,
]);

const UnexpectedErrorMessageEnum
    _$unexpectedErrorMessageEnum_unexpectedErrorOccurredPeriod =
    const UnexpectedErrorMessageEnum._('unexpectedErrorOccurredPeriod');

UnexpectedErrorMessageEnum _$unexpectedErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'unexpectedErrorOccurredPeriod':
      return _$unexpectedErrorMessageEnum_unexpectedErrorOccurredPeriod;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UnexpectedErrorMessageEnum> _$unexpectedErrorMessageEnumValues =
    BuiltSet<UnexpectedErrorMessageEnum>(const <UnexpectedErrorMessageEnum>[
  _$unexpectedErrorMessageEnum_unexpectedErrorOccurredPeriod,
]);

const UnexpectedErrorHttpStatusCodeEnum
    _$unexpectedErrorHttpStatusCodeEnum_number500 =
    const UnexpectedErrorHttpStatusCodeEnum._('number500');

UnexpectedErrorHttpStatusCodeEnum _$unexpectedErrorHttpStatusCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'number500':
      return _$unexpectedErrorHttpStatusCodeEnum_number500;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UnexpectedErrorHttpStatusCodeEnum>
    _$unexpectedErrorHttpStatusCodeEnumValues = BuiltSet<
        UnexpectedErrorHttpStatusCodeEnum>(const <UnexpectedErrorHttpStatusCodeEnum>[
  _$unexpectedErrorHttpStatusCodeEnum_number500,
]);

Serializer<UnexpectedErrorNameEnum> _$unexpectedErrorNameEnumSerializer =
    _$UnexpectedErrorNameEnumSerializer();
Serializer<UnexpectedErrorMessageEnum> _$unexpectedErrorMessageEnumSerializer =
    _$UnexpectedErrorMessageEnumSerializer();
Serializer<UnexpectedErrorHttpStatusCodeEnum>
    _$unexpectedErrorHttpStatusCodeEnumSerializer =
    _$UnexpectedErrorHttpStatusCodeEnumSerializer();

class _$UnexpectedErrorNameEnumSerializer
    implements PrimitiveSerializer<UnexpectedErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unexpectedError': 'UnexpectedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UnexpectedError': 'unexpectedError',
  };

  @override
  final Iterable<Type> types = const <Type>[UnexpectedErrorNameEnum];
  @override
  final String wireName = 'UnexpectedErrorNameEnum';

  @override
  Object serialize(Serializers serializers, UnexpectedErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnexpectedErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnexpectedErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnexpectedErrorMessageEnumSerializer
    implements PrimitiveSerializer<UnexpectedErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unexpectedErrorOccurredPeriod': 'Unexpected Error Occurred.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Unexpected Error Occurred.': 'unexpectedErrorOccurredPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[UnexpectedErrorMessageEnum];
  @override
  final String wireName = 'UnexpectedErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, UnexpectedErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnexpectedErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnexpectedErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnexpectedErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<UnexpectedErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number500': 500,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    500: 'number500',
  };

  @override
  final Iterable<Type> types = const <Type>[UnexpectedErrorHttpStatusCodeEnum];
  @override
  final String wireName = 'UnexpectedErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, UnexpectedErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UnexpectedErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UnexpectedErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UnexpectedError extends UnexpectedError {
  @override
  final UnexpectedErrorNameEnum name;
  @override
  final UnexpectedErrorMessageEnum message;
  @override
  final UnexpectedErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$UnexpectedError([void Function(UnexpectedErrorBuilder)? updates]) =>
      (UnexpectedErrorBuilder()..update(updates))._build();

  _$UnexpectedError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  UnexpectedError rebuild(void Function(UnexpectedErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnexpectedErrorBuilder toBuilder() => UnexpectedErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnexpectedError &&
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
    return (newBuiltValueToStringHelper(r'UnexpectedError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class UnexpectedErrorBuilder
    implements Builder<UnexpectedError, UnexpectedErrorBuilder> {
  _$UnexpectedError? _$v;

  UnexpectedErrorNameEnum? _name;
  UnexpectedErrorNameEnum? get name => _$this._name;
  set name(UnexpectedErrorNameEnum? name) => _$this._name = name;

  UnexpectedErrorMessageEnum? _message;
  UnexpectedErrorMessageEnum? get message => _$this._message;
  set message(UnexpectedErrorMessageEnum? message) => _$this._message = message;

  UnexpectedErrorHttpStatusCodeEnum? _httpStatusCode;
  UnexpectedErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(UnexpectedErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  UnexpectedErrorBuilder() {
    UnexpectedError._defaults(this);
  }

  UnexpectedErrorBuilder get _$this {
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
  void replace(UnexpectedError other) {
    _$v = other as _$UnexpectedError;
  }

  @override
  void update(void Function(UnexpectedErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnexpectedError build() => _build();

  _$UnexpectedError _build() {
    _$UnexpectedError _$result;
    try {
      _$result = _$v ??
          _$UnexpectedError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'UnexpectedError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'UnexpectedError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'UnexpectedError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'UnexpectedError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UnexpectedError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
