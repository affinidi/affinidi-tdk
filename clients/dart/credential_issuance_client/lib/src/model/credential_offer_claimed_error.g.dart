// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_offer_claimed_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CredentialOfferClaimedErrorNameEnum
    _$credentialOfferClaimedErrorNameEnum_credentialOfferClaimedError =
    const CredentialOfferClaimedErrorNameEnum._('credentialOfferClaimedError');

CredentialOfferClaimedErrorNameEnum
    _$credentialOfferClaimedErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'credentialOfferClaimedError':
      return _$credentialOfferClaimedErrorNameEnum_credentialOfferClaimedError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialOfferClaimedErrorNameEnum>
    _$credentialOfferClaimedErrorNameEnumValues = BuiltSet<
        CredentialOfferClaimedErrorNameEnum>(const <CredentialOfferClaimedErrorNameEnum>[
  _$credentialOfferClaimedErrorNameEnum_credentialOfferClaimedError,
]);

const CredentialOfferClaimedErrorMessageEnum
    _$credentialOfferClaimedErrorMessageEnum_credentialOfferIsAlreadyClaimed =
    const CredentialOfferClaimedErrorMessageEnum._(
        'credentialOfferIsAlreadyClaimed');

CredentialOfferClaimedErrorMessageEnum
    _$credentialOfferClaimedErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'credentialOfferIsAlreadyClaimed':
      return _$credentialOfferClaimedErrorMessageEnum_credentialOfferIsAlreadyClaimed;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialOfferClaimedErrorMessageEnum>
    _$credentialOfferClaimedErrorMessageEnumValues = BuiltSet<
        CredentialOfferClaimedErrorMessageEnum>(const <CredentialOfferClaimedErrorMessageEnum>[
  _$credentialOfferClaimedErrorMessageEnum_credentialOfferIsAlreadyClaimed,
]);

const CredentialOfferClaimedErrorHttpStatusCodeEnum
    _$credentialOfferClaimedErrorHttpStatusCodeEnum_number400 =
    const CredentialOfferClaimedErrorHttpStatusCodeEnum._('number400');

CredentialOfferClaimedErrorHttpStatusCodeEnum
    _$credentialOfferClaimedErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$credentialOfferClaimedErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CredentialOfferClaimedErrorHttpStatusCodeEnum>
    _$credentialOfferClaimedErrorHttpStatusCodeEnumValues = BuiltSet<
        CredentialOfferClaimedErrorHttpStatusCodeEnum>(const <CredentialOfferClaimedErrorHttpStatusCodeEnum>[
  _$credentialOfferClaimedErrorHttpStatusCodeEnum_number400,
]);

Serializer<CredentialOfferClaimedErrorNameEnum>
    _$credentialOfferClaimedErrorNameEnumSerializer =
    _$CredentialOfferClaimedErrorNameEnumSerializer();
Serializer<CredentialOfferClaimedErrorMessageEnum>
    _$credentialOfferClaimedErrorMessageEnumSerializer =
    _$CredentialOfferClaimedErrorMessageEnumSerializer();
Serializer<CredentialOfferClaimedErrorHttpStatusCodeEnum>
    _$credentialOfferClaimedErrorHttpStatusCodeEnumSerializer =
    _$CredentialOfferClaimedErrorHttpStatusCodeEnumSerializer();

class _$CredentialOfferClaimedErrorNameEnumSerializer
    implements PrimitiveSerializer<CredentialOfferClaimedErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialOfferClaimedError': 'CredentialOfferClaimedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CredentialOfferClaimedError': 'credentialOfferClaimedError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialOfferClaimedErrorNameEnum
  ];
  @override
  final String wireName = 'CredentialOfferClaimedErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, CredentialOfferClaimedErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialOfferClaimedErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialOfferClaimedErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialOfferClaimedErrorMessageEnumSerializer
    implements PrimitiveSerializer<CredentialOfferClaimedErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'credentialOfferIsAlreadyClaimed': 'Credential offer is already claimed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Credential offer is already claimed': 'credentialOfferIsAlreadyClaimed',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialOfferClaimedErrorMessageEnum
  ];
  @override
  final String wireName = 'CredentialOfferClaimedErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialOfferClaimedErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialOfferClaimedErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialOfferClaimedErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialOfferClaimedErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<CredentialOfferClaimedErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CredentialOfferClaimedErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CredentialOfferClaimedErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CredentialOfferClaimedErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CredentialOfferClaimedErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CredentialOfferClaimedErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CredentialOfferClaimedError extends CredentialOfferClaimedError {
  @override
  final CredentialOfferClaimedErrorNameEnum name;
  @override
  final CredentialOfferClaimedErrorMessageEnum message;
  @override
  final CredentialOfferClaimedErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$CredentialOfferClaimedError(
          [void Function(CredentialOfferClaimedErrorBuilder)? updates]) =>
      (CredentialOfferClaimedErrorBuilder()..update(updates))._build();

  _$CredentialOfferClaimedError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  CredentialOfferClaimedError rebuild(
          void Function(CredentialOfferClaimedErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialOfferClaimedErrorBuilder toBuilder() =>
      CredentialOfferClaimedErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialOfferClaimedError &&
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
    return (newBuiltValueToStringHelper(r'CredentialOfferClaimedError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class CredentialOfferClaimedErrorBuilder
    implements
        Builder<CredentialOfferClaimedError,
            CredentialOfferClaimedErrorBuilder> {
  _$CredentialOfferClaimedError? _$v;

  CredentialOfferClaimedErrorNameEnum? _name;
  CredentialOfferClaimedErrorNameEnum? get name => _$this._name;
  set name(CredentialOfferClaimedErrorNameEnum? name) => _$this._name = name;

  CredentialOfferClaimedErrorMessageEnum? _message;
  CredentialOfferClaimedErrorMessageEnum? get message => _$this._message;
  set message(CredentialOfferClaimedErrorMessageEnum? message) =>
      _$this._message = message;

  CredentialOfferClaimedErrorHttpStatusCodeEnum? _httpStatusCode;
  CredentialOfferClaimedErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          CredentialOfferClaimedErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  CredentialOfferClaimedErrorBuilder() {
    CredentialOfferClaimedError._defaults(this);
  }

  CredentialOfferClaimedErrorBuilder get _$this {
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
  void replace(CredentialOfferClaimedError other) {
    _$v = other as _$CredentialOfferClaimedError;
  }

  @override
  void update(void Function(CredentialOfferClaimedErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CredentialOfferClaimedError build() => _build();

  _$CredentialOfferClaimedError _build() {
    _$CredentialOfferClaimedError _$result;
    try {
      _$result = _$v ??
          _$CredentialOfferClaimedError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CredentialOfferClaimedError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CredentialOfferClaimedError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'CredentialOfferClaimedError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'CredentialOfferClaimedError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'CredentialOfferClaimedError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
