// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_credential_request_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidCredentialRequestErrorNameEnum
    _$invalidCredentialRequestErrorNameEnum_invalidCredentialRequestError =
    const InvalidCredentialRequestErrorNameEnum._(
        'invalidCredentialRequestError');

InvalidCredentialRequestErrorNameEnum
    _$invalidCredentialRequestErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidCredentialRequestError':
      return _$invalidCredentialRequestErrorNameEnum_invalidCredentialRequestError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidCredentialRequestErrorNameEnum>
    _$invalidCredentialRequestErrorNameEnumValues = BuiltSet<
        InvalidCredentialRequestErrorNameEnum>(const <InvalidCredentialRequestErrorNameEnum>[
  _$invalidCredentialRequestErrorNameEnum_invalidCredentialRequestError,
]);

const InvalidCredentialRequestErrorMessageEnum
    _$invalidCredentialRequestErrorMessageEnum_credentialRequestIsInvalid =
    const InvalidCredentialRequestErrorMessageEnum._(
        'credentialRequestIsInvalid');

InvalidCredentialRequestErrorMessageEnum
    _$invalidCredentialRequestErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'credentialRequestIsInvalid':
      return _$invalidCredentialRequestErrorMessageEnum_credentialRequestIsInvalid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidCredentialRequestErrorMessageEnum>
    _$invalidCredentialRequestErrorMessageEnumValues = BuiltSet<
        InvalidCredentialRequestErrorMessageEnum>(const <InvalidCredentialRequestErrorMessageEnum>[
  _$invalidCredentialRequestErrorMessageEnum_credentialRequestIsInvalid,
]);

const InvalidCredentialRequestErrorHttpStatusCodeEnum
    _$invalidCredentialRequestErrorHttpStatusCodeEnum_number400 =
    const InvalidCredentialRequestErrorHttpStatusCodeEnum._('number400');

InvalidCredentialRequestErrorHttpStatusCodeEnum
    _$invalidCredentialRequestErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidCredentialRequestErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidCredentialRequestErrorHttpStatusCodeEnum>
    _$invalidCredentialRequestErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidCredentialRequestErrorHttpStatusCodeEnum>(const <InvalidCredentialRequestErrorHttpStatusCodeEnum>[
  _$invalidCredentialRequestErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidCredentialRequestErrorNameEnum>
    _$invalidCredentialRequestErrorNameEnumSerializer =
    _$InvalidCredentialRequestErrorNameEnumSerializer();
Serializer<InvalidCredentialRequestErrorMessageEnum>
    _$invalidCredentialRequestErrorMessageEnumSerializer =
    _$InvalidCredentialRequestErrorMessageEnumSerializer();
Serializer<InvalidCredentialRequestErrorHttpStatusCodeEnum>
    _$invalidCredentialRequestErrorHttpStatusCodeEnumSerializer =
    _$InvalidCredentialRequestErrorHttpStatusCodeEnumSerializer();

class _$InvalidCredentialRequestErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidCredentialRequestErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidCredentialRequestError': 'InvalidCredentialRequestError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidCredentialRequestError': 'invalidCredentialRequestError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidCredentialRequestErrorNameEnum
  ];
  @override
  final String wireName = 'InvalidCredentialRequestErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidCredentialRequestErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidCredentialRequestErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidCredentialRequestErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidCredentialRequestErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidCredentialRequestErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialRequestIsInvalid': 'Credential Request is invalid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credential Request is invalid': 'credentialRequestIsInvalid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidCredentialRequestErrorMessageEnum
  ];
  @override
  final String wireName = 'InvalidCredentialRequestErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidCredentialRequestErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidCredentialRequestErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidCredentialRequestErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidCredentialRequestErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<InvalidCredentialRequestErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidCredentialRequestErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidCredentialRequestErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidCredentialRequestErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidCredentialRequestErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidCredentialRequestErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidCredentialRequestError extends InvalidCredentialRequestError {
  @override
  final InvalidCredentialRequestErrorNameEnum name;
  @override
  final InvalidCredentialRequestErrorMessageEnum message;
  @override
  final InvalidCredentialRequestErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$InvalidCredentialRequestError(
          [void Function(InvalidCredentialRequestErrorBuilder)? updates]) =>
      (InvalidCredentialRequestErrorBuilder()..update(updates))._build();

  _$InvalidCredentialRequestError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidCredentialRequestError rebuild(
          void Function(InvalidCredentialRequestErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidCredentialRequestErrorBuilder toBuilder() =>
      InvalidCredentialRequestErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidCredentialRequestError &&
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
    return (newBuiltValueToStringHelper(r'InvalidCredentialRequestError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidCredentialRequestErrorBuilder
    implements
        Builder<InvalidCredentialRequestError,
            InvalidCredentialRequestErrorBuilder> {
  _$InvalidCredentialRequestError? _$v;

  InvalidCredentialRequestErrorNameEnum? _name;
  InvalidCredentialRequestErrorNameEnum? get name => _$this._name;
  set name(InvalidCredentialRequestErrorNameEnum? name) => _$this._name = name;

  InvalidCredentialRequestErrorMessageEnum? _message;
  InvalidCredentialRequestErrorMessageEnum? get message => _$this._message;
  set message(InvalidCredentialRequestErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidCredentialRequestErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidCredentialRequestErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          InvalidCredentialRequestErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidCredentialRequestErrorBuilder() {
    InvalidCredentialRequestError._defaults(this);
  }

  InvalidCredentialRequestErrorBuilder get _$this {
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
  void replace(InvalidCredentialRequestError other) {
    _$v = other as _$InvalidCredentialRequestError;
  }

  @override
  void update(void Function(InvalidCredentialRequestErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidCredentialRequestError build() => _build();

  _$InvalidCredentialRequestError _build() {
    _$InvalidCredentialRequestError _$result;
    try {
      _$result = _$v ??
          _$InvalidCredentialRequestError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidCredentialRequestError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidCredentialRequestError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'InvalidCredentialRequestError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidCredentialRequestError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidCredentialRequestError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
