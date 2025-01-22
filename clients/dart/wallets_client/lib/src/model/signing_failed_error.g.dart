// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signing_failed_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SigningFailedErrorNameEnum
    _$signingFailedErrorNameEnum_signingFailedError =
    const SigningFailedErrorNameEnum._('signingFailedError');

SigningFailedErrorNameEnum _$signingFailedErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'signingFailedError':
      return _$signingFailedErrorNameEnum_signingFailedError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SigningFailedErrorNameEnum> _$signingFailedErrorNameEnumValues =
    new BuiltSet<SigningFailedErrorNameEnum>(const <SigningFailedErrorNameEnum>[
  _$signingFailedErrorNameEnum_signingFailedError,
]);

const SigningFailedErrorMessageEnum
    _$signingFailedErrorMessageEnum_signingFailedPeriod =
    const SigningFailedErrorMessageEnum._('signingFailedPeriod');

SigningFailedErrorMessageEnum _$signingFailedErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'signingFailedPeriod':
      return _$signingFailedErrorMessageEnum_signingFailedPeriod;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SigningFailedErrorMessageEnum>
    _$signingFailedErrorMessageEnumValues = new BuiltSet<
        SigningFailedErrorMessageEnum>(const <SigningFailedErrorMessageEnum>[
  _$signingFailedErrorMessageEnum_signingFailedPeriod,
]);

const SigningFailedErrorHttpStatusCodeEnum
    _$signingFailedErrorHttpStatusCodeEnum_number400 =
    const SigningFailedErrorHttpStatusCodeEnum._('number400');

SigningFailedErrorHttpStatusCodeEnum
    _$signingFailedErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$signingFailedErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<SigningFailedErrorHttpStatusCodeEnum>
    _$signingFailedErrorHttpStatusCodeEnumValues = new BuiltSet<
        SigningFailedErrorHttpStatusCodeEnum>(const <SigningFailedErrorHttpStatusCodeEnum>[
  _$signingFailedErrorHttpStatusCodeEnum_number400,
]);

Serializer<SigningFailedErrorNameEnum> _$signingFailedErrorNameEnumSerializer =
    new _$SigningFailedErrorNameEnumSerializer();
Serializer<SigningFailedErrorMessageEnum>
    _$signingFailedErrorMessageEnumSerializer =
    new _$SigningFailedErrorMessageEnumSerializer();
Serializer<SigningFailedErrorHttpStatusCodeEnum>
    _$signingFailedErrorHttpStatusCodeEnumSerializer =
    new _$SigningFailedErrorHttpStatusCodeEnumSerializer();

class _$SigningFailedErrorNameEnumSerializer
    implements PrimitiveSerializer<SigningFailedErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'signingFailedError': 'SigningFailedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SigningFailedError': 'signingFailedError',
  };

  @override
  final Iterable<Type> types = const <Type>[SigningFailedErrorNameEnum];
  @override
  final String wireName = 'SigningFailedErrorNameEnum';

  @override
  Object serialize(Serializers serializers, SigningFailedErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SigningFailedErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SigningFailedErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SigningFailedErrorMessageEnumSerializer
    implements PrimitiveSerializer<SigningFailedErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'signingFailedPeriod': 'Signing failed.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Signing failed.': 'signingFailedPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[SigningFailedErrorMessageEnum];
  @override
  final String wireName = 'SigningFailedErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, SigningFailedErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SigningFailedErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SigningFailedErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SigningFailedErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<SigningFailedErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    SigningFailedErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'SigningFailedErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, SigningFailedErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SigningFailedErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SigningFailedErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SigningFailedError extends SigningFailedError {
  @override
  final SigningFailedErrorNameEnum name;
  @override
  final SigningFailedErrorMessageEnum message;
  @override
  final SigningFailedErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$SigningFailedError(
          [void Function(SigningFailedErrorBuilder)? updates]) =>
      (new SigningFailedErrorBuilder()..update(updates))._build();

  _$SigningFailedError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'SigningFailedError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'SigningFailedError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'SigningFailedError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'SigningFailedError', 'traceId');
  }

  @override
  SigningFailedError rebuild(
          void Function(SigningFailedErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SigningFailedErrorBuilder toBuilder() =>
      new SigningFailedErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SigningFailedError &&
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
    return (newBuiltValueToStringHelper(r'SigningFailedError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class SigningFailedErrorBuilder
    implements Builder<SigningFailedError, SigningFailedErrorBuilder> {
  _$SigningFailedError? _$v;

  SigningFailedErrorNameEnum? _name;
  SigningFailedErrorNameEnum? get name => _$this._name;
  set name(SigningFailedErrorNameEnum? name) => _$this._name = name;

  SigningFailedErrorMessageEnum? _message;
  SigningFailedErrorMessageEnum? get message => _$this._message;
  set message(SigningFailedErrorMessageEnum? message) =>
      _$this._message = message;

  SigningFailedErrorHttpStatusCodeEnum? _httpStatusCode;
  SigningFailedErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(SigningFailedErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  SigningFailedErrorBuilder() {
    SigningFailedError._defaults(this);
  }

  SigningFailedErrorBuilder get _$this {
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
  void replace(SigningFailedError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SigningFailedError;
  }

  @override
  void update(void Function(SigningFailedErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SigningFailedError build() => _build();

  _$SigningFailedError _build() {
    _$SigningFailedError _$result;
    try {
      _$result = _$v ??
          new _$SigningFailedError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'SigningFailedError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'SigningFailedError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'SigningFailedError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'SigningFailedError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SigningFailedError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
