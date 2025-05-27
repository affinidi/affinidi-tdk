// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_credential_type_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidCredentialTypeErrorNameEnum
    _$invalidCredentialTypeErrorNameEnum_invalidCredentialTypeError =
    const InvalidCredentialTypeErrorNameEnum._('invalidCredentialTypeError');

InvalidCredentialTypeErrorNameEnum _$invalidCredentialTypeErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidCredentialTypeError':
      return _$invalidCredentialTypeErrorNameEnum_invalidCredentialTypeError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidCredentialTypeErrorNameEnum>
    _$invalidCredentialTypeErrorNameEnumValues = BuiltSet<
        InvalidCredentialTypeErrorNameEnum>(const <InvalidCredentialTypeErrorNameEnum>[
  _$invalidCredentialTypeErrorNameEnum_invalidCredentialTypeError,
]);

const InvalidCredentialTypeErrorMessageEnum
    _$invalidCredentialTypeErrorMessageEnum_theRequestedCredentialTypeIsNotSupported =
    const InvalidCredentialTypeErrorMessageEnum._(
        'theRequestedCredentialTypeIsNotSupported');

InvalidCredentialTypeErrorMessageEnum
    _$invalidCredentialTypeErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'theRequestedCredentialTypeIsNotSupported':
      return _$invalidCredentialTypeErrorMessageEnum_theRequestedCredentialTypeIsNotSupported;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidCredentialTypeErrorMessageEnum>
    _$invalidCredentialTypeErrorMessageEnumValues = BuiltSet<
        InvalidCredentialTypeErrorMessageEnum>(const <InvalidCredentialTypeErrorMessageEnum>[
  _$invalidCredentialTypeErrorMessageEnum_theRequestedCredentialTypeIsNotSupported,
]);

const InvalidCredentialTypeErrorHttpStatusCodeEnum
    _$invalidCredentialTypeErrorHttpStatusCodeEnum_number400 =
    const InvalidCredentialTypeErrorHttpStatusCodeEnum._('number400');

InvalidCredentialTypeErrorHttpStatusCodeEnum
    _$invalidCredentialTypeErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidCredentialTypeErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidCredentialTypeErrorHttpStatusCodeEnum>
    _$invalidCredentialTypeErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidCredentialTypeErrorHttpStatusCodeEnum>(const <InvalidCredentialTypeErrorHttpStatusCodeEnum>[
  _$invalidCredentialTypeErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidCredentialTypeErrorNameEnum>
    _$invalidCredentialTypeErrorNameEnumSerializer =
    _$InvalidCredentialTypeErrorNameEnumSerializer();
Serializer<InvalidCredentialTypeErrorMessageEnum>
    _$invalidCredentialTypeErrorMessageEnumSerializer =
    _$InvalidCredentialTypeErrorMessageEnumSerializer();
Serializer<InvalidCredentialTypeErrorHttpStatusCodeEnum>
    _$invalidCredentialTypeErrorHttpStatusCodeEnumSerializer =
    _$InvalidCredentialTypeErrorHttpStatusCodeEnumSerializer();

class _$InvalidCredentialTypeErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidCredentialTypeErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidCredentialTypeError': 'InvalidCredentialTypeError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidCredentialTypeError': 'invalidCredentialTypeError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidCredentialTypeErrorNameEnum];
  @override
  final String wireName = 'InvalidCredentialTypeErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidCredentialTypeErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidCredentialTypeErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidCredentialTypeErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidCredentialTypeErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidCredentialTypeErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'theRequestedCredentialTypeIsNotSupported':
        'The requested credential type is not supported',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'The requested credential type is not supported':
        'theRequestedCredentialTypeIsNotSupported',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidCredentialTypeErrorMessageEnum
  ];
  @override
  final String wireName = 'InvalidCredentialTypeErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidCredentialTypeErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidCredentialTypeErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidCredentialTypeErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidCredentialTypeErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<InvalidCredentialTypeErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidCredentialTypeErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidCredentialTypeErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidCredentialTypeErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidCredentialTypeErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidCredentialTypeErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidCredentialTypeError extends InvalidCredentialTypeError {
  @override
  final InvalidCredentialTypeErrorNameEnum name;
  @override
  final InvalidCredentialTypeErrorMessageEnum message;
  @override
  final InvalidCredentialTypeErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$InvalidCredentialTypeError(
          [void Function(InvalidCredentialTypeErrorBuilder)? updates]) =>
      (InvalidCredentialTypeErrorBuilder()..update(updates))._build();

  _$InvalidCredentialTypeError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidCredentialTypeError rebuild(
          void Function(InvalidCredentialTypeErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidCredentialTypeErrorBuilder toBuilder() =>
      InvalidCredentialTypeErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidCredentialTypeError &&
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
    return (newBuiltValueToStringHelper(r'InvalidCredentialTypeError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidCredentialTypeErrorBuilder
    implements
        Builder<InvalidCredentialTypeError, InvalidCredentialTypeErrorBuilder> {
  _$InvalidCredentialTypeError? _$v;

  InvalidCredentialTypeErrorNameEnum? _name;
  InvalidCredentialTypeErrorNameEnum? get name => _$this._name;
  set name(InvalidCredentialTypeErrorNameEnum? name) => _$this._name = name;

  InvalidCredentialTypeErrorMessageEnum? _message;
  InvalidCredentialTypeErrorMessageEnum? get message => _$this._message;
  set message(InvalidCredentialTypeErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidCredentialTypeErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidCredentialTypeErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          InvalidCredentialTypeErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidCredentialTypeErrorBuilder() {
    InvalidCredentialTypeError._defaults(this);
  }

  InvalidCredentialTypeErrorBuilder get _$this {
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
  void replace(InvalidCredentialTypeError other) {
    _$v = other as _$InvalidCredentialTypeError;
  }

  @override
  void update(void Function(InvalidCredentialTypeErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidCredentialTypeError build() => _build();

  _$InvalidCredentialTypeError _build() {
    _$InvalidCredentialTypeError _$result;
    try {
      _$result = _$v ??
          _$InvalidCredentialTypeError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidCredentialTypeError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidCredentialTypeError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'InvalidCredentialTypeError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidCredentialTypeError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidCredentialTypeError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
