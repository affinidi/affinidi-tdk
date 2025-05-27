// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_offer_expired_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CredentialOfferExpiredErrorNameEnum
    _$credentialOfferExpiredErrorNameEnum_credentialOfferExpiredError =
    const CredentialOfferExpiredErrorNameEnum._('credentialOfferExpiredError');

CredentialOfferExpiredErrorNameEnum
    _$credentialOfferExpiredErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'credentialOfferExpiredError':
      return _$credentialOfferExpiredErrorNameEnum_credentialOfferExpiredError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialOfferExpiredErrorNameEnum>
    _$credentialOfferExpiredErrorNameEnumValues = BuiltSet<
        CredentialOfferExpiredErrorNameEnum>(const <CredentialOfferExpiredErrorNameEnum>[
  _$credentialOfferExpiredErrorNameEnum_credentialOfferExpiredError,
]);

const CredentialOfferExpiredErrorMessageEnum
    _$credentialOfferExpiredErrorMessageEnum_credentialOfferIsExpired =
    const CredentialOfferExpiredErrorMessageEnum._('credentialOfferIsExpired');

CredentialOfferExpiredErrorMessageEnum
    _$credentialOfferExpiredErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'credentialOfferIsExpired':
      return _$credentialOfferExpiredErrorMessageEnum_credentialOfferIsExpired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialOfferExpiredErrorMessageEnum>
    _$credentialOfferExpiredErrorMessageEnumValues = BuiltSet<
        CredentialOfferExpiredErrorMessageEnum>(const <CredentialOfferExpiredErrorMessageEnum>[
  _$credentialOfferExpiredErrorMessageEnum_credentialOfferIsExpired,
]);

const CredentialOfferExpiredErrorHttpStatusCodeEnum
    _$credentialOfferExpiredErrorHttpStatusCodeEnum_number400 =
    const CredentialOfferExpiredErrorHttpStatusCodeEnum._('number400');

CredentialOfferExpiredErrorHttpStatusCodeEnum
    _$credentialOfferExpiredErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$credentialOfferExpiredErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialOfferExpiredErrorHttpStatusCodeEnum>
    _$credentialOfferExpiredErrorHttpStatusCodeEnumValues = BuiltSet<
        CredentialOfferExpiredErrorHttpStatusCodeEnum>(const <CredentialOfferExpiredErrorHttpStatusCodeEnum>[
  _$credentialOfferExpiredErrorHttpStatusCodeEnum_number400,
]);

Serializer<CredentialOfferExpiredErrorNameEnum>
    _$credentialOfferExpiredErrorNameEnumSerializer =
    _$CredentialOfferExpiredErrorNameEnumSerializer();
Serializer<CredentialOfferExpiredErrorMessageEnum>
    _$credentialOfferExpiredErrorMessageEnumSerializer =
    _$CredentialOfferExpiredErrorMessageEnumSerializer();
Serializer<CredentialOfferExpiredErrorHttpStatusCodeEnum>
    _$credentialOfferExpiredErrorHttpStatusCodeEnumSerializer =
    _$CredentialOfferExpiredErrorHttpStatusCodeEnumSerializer();

class _$CredentialOfferExpiredErrorNameEnumSerializer
    implements PrimitiveSerializer<CredentialOfferExpiredErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialOfferExpiredError': 'CredentialOfferExpiredError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CredentialOfferExpiredError': 'credentialOfferExpiredError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialOfferExpiredErrorNameEnum
  ];
  @override
  final String wireName = 'CredentialOfferExpiredErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, CredentialOfferExpiredErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialOfferExpiredErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialOfferExpiredErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialOfferExpiredErrorMessageEnumSerializer
    implements PrimitiveSerializer<CredentialOfferExpiredErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialOfferIsExpired': 'Credential offer is expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credential offer is expired': 'credentialOfferIsExpired',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialOfferExpiredErrorMessageEnum
  ];
  @override
  final String wireName = 'CredentialOfferExpiredErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialOfferExpiredErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialOfferExpiredErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialOfferExpiredErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialOfferExpiredErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<CredentialOfferExpiredErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialOfferExpiredErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CredentialOfferExpiredErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialOfferExpiredErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialOfferExpiredErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialOfferExpiredErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialOfferExpiredError extends CredentialOfferExpiredError {
  @override
  final CredentialOfferExpiredErrorNameEnum name;
  @override
  final CredentialOfferExpiredErrorMessageEnum message;
  @override
  final CredentialOfferExpiredErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$CredentialOfferExpiredError(
          [void Function(CredentialOfferExpiredErrorBuilder)? updates]) =>
      (CredentialOfferExpiredErrorBuilder()..update(updates))._build();

  _$CredentialOfferExpiredError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  CredentialOfferExpiredError rebuild(
          void Function(CredentialOfferExpiredErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialOfferExpiredErrorBuilder toBuilder() =>
      CredentialOfferExpiredErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialOfferExpiredError &&
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
    return (newBuiltValueToStringHelper(r'CredentialOfferExpiredError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class CredentialOfferExpiredErrorBuilder
    implements
        Builder<CredentialOfferExpiredError,
            CredentialOfferExpiredErrorBuilder> {
  _$CredentialOfferExpiredError? _$v;

  CredentialOfferExpiredErrorNameEnum? _name;
  CredentialOfferExpiredErrorNameEnum? get name => _$this._name;
  set name(CredentialOfferExpiredErrorNameEnum? name) => _$this._name = name;

  CredentialOfferExpiredErrorMessageEnum? _message;
  CredentialOfferExpiredErrorMessageEnum? get message => _$this._message;
  set message(CredentialOfferExpiredErrorMessageEnum? message) =>
      _$this._message = message;

  CredentialOfferExpiredErrorHttpStatusCodeEnum? _httpStatusCode;
  CredentialOfferExpiredErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          CredentialOfferExpiredErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  CredentialOfferExpiredErrorBuilder() {
    CredentialOfferExpiredError._defaults(this);
  }

  CredentialOfferExpiredErrorBuilder get _$this {
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
  void replace(CredentialOfferExpiredError other) {
    _$v = other as _$CredentialOfferExpiredError;
  }

  @override
  void update(void Function(CredentialOfferExpiredErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialOfferExpiredError build() => _build();

  _$CredentialOfferExpiredError _build() {
    _$CredentialOfferExpiredError _$result;
    try {
      _$result = _$v ??
          _$CredentialOfferExpiredError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CredentialOfferExpiredError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CredentialOfferExpiredError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'CredentialOfferExpiredError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'CredentialOfferExpiredError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialOfferExpiredError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
