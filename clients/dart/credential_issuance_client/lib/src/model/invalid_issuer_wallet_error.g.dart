// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_issuer_wallet_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidIssuerWalletErrorNameEnum
    _$invalidIssuerWalletErrorNameEnum_invalidIssuerWalletError =
    const InvalidIssuerWalletErrorNameEnum._('invalidIssuerWalletError');

InvalidIssuerWalletErrorNameEnum _$invalidIssuerWalletErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidIssuerWalletError':
      return _$invalidIssuerWalletErrorNameEnum_invalidIssuerWalletError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidIssuerWalletErrorNameEnum>
    _$invalidIssuerWalletErrorNameEnumValues = BuiltSet<
        InvalidIssuerWalletErrorNameEnum>(const <InvalidIssuerWalletErrorNameEnum>[
  _$invalidIssuerWalletErrorNameEnum_invalidIssuerWalletError,
]);

const InvalidIssuerWalletErrorMessageEnum
    _$invalidIssuerWalletErrorMessageEnum_issuerWalletIdIsInvalid =
    const InvalidIssuerWalletErrorMessageEnum._('issuerWalletIdIsInvalid');

InvalidIssuerWalletErrorMessageEnum
    _$invalidIssuerWalletErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'issuerWalletIdIsInvalid':
      return _$invalidIssuerWalletErrorMessageEnum_issuerWalletIdIsInvalid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidIssuerWalletErrorMessageEnum>
    _$invalidIssuerWalletErrorMessageEnumValues = BuiltSet<
        InvalidIssuerWalletErrorMessageEnum>(const <InvalidIssuerWalletErrorMessageEnum>[
  _$invalidIssuerWalletErrorMessageEnum_issuerWalletIdIsInvalid,
]);

const InvalidIssuerWalletErrorHttpStatusCodeEnum
    _$invalidIssuerWalletErrorHttpStatusCodeEnum_number400 =
    const InvalidIssuerWalletErrorHttpStatusCodeEnum._('number400');

InvalidIssuerWalletErrorHttpStatusCodeEnum
    _$invalidIssuerWalletErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidIssuerWalletErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidIssuerWalletErrorHttpStatusCodeEnum>
    _$invalidIssuerWalletErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidIssuerWalletErrorHttpStatusCodeEnum>(const <InvalidIssuerWalletErrorHttpStatusCodeEnum>[
  _$invalidIssuerWalletErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidIssuerWalletErrorNameEnum>
    _$invalidIssuerWalletErrorNameEnumSerializer =
    _$InvalidIssuerWalletErrorNameEnumSerializer();
Serializer<InvalidIssuerWalletErrorMessageEnum>
    _$invalidIssuerWalletErrorMessageEnumSerializer =
    _$InvalidIssuerWalletErrorMessageEnumSerializer();
Serializer<InvalidIssuerWalletErrorHttpStatusCodeEnum>
    _$invalidIssuerWalletErrorHttpStatusCodeEnumSerializer =
    _$InvalidIssuerWalletErrorHttpStatusCodeEnumSerializer();

class _$InvalidIssuerWalletErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidIssuerWalletErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidIssuerWalletError': 'InvalidIssuerWalletError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidIssuerWalletError': 'invalidIssuerWalletError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidIssuerWalletErrorNameEnum];
  @override
  final String wireName = 'InvalidIssuerWalletErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidIssuerWalletErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidIssuerWalletErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidIssuerWalletErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidIssuerWalletErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidIssuerWalletErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'issuerWalletIdIsInvalid': 'issuer wallet id is invalid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'issuer wallet id is invalid': 'issuerWalletIdIsInvalid',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidIssuerWalletErrorMessageEnum
  ];
  @override
  final String wireName = 'InvalidIssuerWalletErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidIssuerWalletErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidIssuerWalletErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidIssuerWalletErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidIssuerWalletErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidIssuerWalletErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidIssuerWalletErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidIssuerWalletErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidIssuerWalletErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidIssuerWalletErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidIssuerWalletErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidIssuerWalletError extends InvalidIssuerWalletError {
  @override
  final InvalidIssuerWalletErrorNameEnum name;
  @override
  final InvalidIssuerWalletErrorMessageEnum message;
  @override
  final InvalidIssuerWalletErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$InvalidIssuerWalletError(
          [void Function(InvalidIssuerWalletErrorBuilder)? updates]) =>
      (InvalidIssuerWalletErrorBuilder()..update(updates))._build();

  _$InvalidIssuerWalletError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidIssuerWalletError rebuild(
          void Function(InvalidIssuerWalletErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidIssuerWalletErrorBuilder toBuilder() =>
      InvalidIssuerWalletErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidIssuerWalletError &&
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
    return (newBuiltValueToStringHelper(r'InvalidIssuerWalletError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidIssuerWalletErrorBuilder
    implements
        Builder<InvalidIssuerWalletError, InvalidIssuerWalletErrorBuilder> {
  _$InvalidIssuerWalletError? _$v;

  InvalidIssuerWalletErrorNameEnum? _name;
  InvalidIssuerWalletErrorNameEnum? get name => _$this._name;
  set name(InvalidIssuerWalletErrorNameEnum? name) => _$this._name = name;

  InvalidIssuerWalletErrorMessageEnum? _message;
  InvalidIssuerWalletErrorMessageEnum? get message => _$this._message;
  set message(InvalidIssuerWalletErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidIssuerWalletErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidIssuerWalletErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          InvalidIssuerWalletErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidIssuerWalletErrorBuilder() {
    InvalidIssuerWalletError._defaults(this);
  }

  InvalidIssuerWalletErrorBuilder get _$this {
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
  void replace(InvalidIssuerWalletError other) {
    _$v = other as _$InvalidIssuerWalletError;
  }

  @override
  void update(void Function(InvalidIssuerWalletErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidIssuerWalletError build() => _build();

  _$InvalidIssuerWalletError _build() {
    _$InvalidIssuerWalletError _$result;
    try {
      _$result = _$v ??
          _$InvalidIssuerWalletError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidIssuerWalletError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidIssuerWalletError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidIssuerWalletError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidIssuerWalletError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidIssuerWalletError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
