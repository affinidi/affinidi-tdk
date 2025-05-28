// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_key_cannot_be_resolved_from_did_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PublicKeyCannotBeResolvedFromDidErrorNameEnum
    _$publicKeyCannotBeResolvedFromDidErrorNameEnum_publicKeyCannotBeResolvedFromDidError =
    const PublicKeyCannotBeResolvedFromDidErrorNameEnum._(
        'publicKeyCannotBeResolvedFromDidError');

PublicKeyCannotBeResolvedFromDidErrorNameEnum
    _$publicKeyCannotBeResolvedFromDidErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'publicKeyCannotBeResolvedFromDidError':
      return _$publicKeyCannotBeResolvedFromDidErrorNameEnum_publicKeyCannotBeResolvedFromDidError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PublicKeyCannotBeResolvedFromDidErrorNameEnum>
    _$publicKeyCannotBeResolvedFromDidErrorNameEnumValues = BuiltSet<
        PublicKeyCannotBeResolvedFromDidErrorNameEnum>(const <PublicKeyCannotBeResolvedFromDidErrorNameEnum>[
  _$publicKeyCannotBeResolvedFromDidErrorNameEnum_publicKeyCannotBeResolvedFromDidError,
]);

const PublicKeyCannotBeResolvedFromDidErrorMessageEnum
    _$publicKeyCannotBeResolvedFromDidErrorMessageEnum_unableToResolveDIDMethodPeriodInvalidPublicKey =
    const PublicKeyCannotBeResolvedFromDidErrorMessageEnum._(
        'unableToResolveDIDMethodPeriodInvalidPublicKey');

PublicKeyCannotBeResolvedFromDidErrorMessageEnum
    _$publicKeyCannotBeResolvedFromDidErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'unableToResolveDIDMethodPeriodInvalidPublicKey':
      return _$publicKeyCannotBeResolvedFromDidErrorMessageEnum_unableToResolveDIDMethodPeriodInvalidPublicKey;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PublicKeyCannotBeResolvedFromDidErrorMessageEnum>
    _$publicKeyCannotBeResolvedFromDidErrorMessageEnumValues = BuiltSet<
        PublicKeyCannotBeResolvedFromDidErrorMessageEnum>(const <PublicKeyCannotBeResolvedFromDidErrorMessageEnum>[
  _$publicKeyCannotBeResolvedFromDidErrorMessageEnum_unableToResolveDIDMethodPeriodInvalidPublicKey,
]);

const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum
    _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum_number400 =
    const PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum._(
        'number400');

PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum
    _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumValueOf(
        String name) {
  switch (name) {
    case 'number400':
      return _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum>
    _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumValues = BuiltSet<
        PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum>(const <PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum>[
  _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum_number400,
]);

Serializer<PublicKeyCannotBeResolvedFromDidErrorNameEnum>
    _$publicKeyCannotBeResolvedFromDidErrorNameEnumSerializer =
    _$PublicKeyCannotBeResolvedFromDidErrorNameEnumSerializer();
Serializer<PublicKeyCannotBeResolvedFromDidErrorMessageEnum>
    _$publicKeyCannotBeResolvedFromDidErrorMessageEnumSerializer =
    _$PublicKeyCannotBeResolvedFromDidErrorMessageEnumSerializer();
Serializer<PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum>
    _$publicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumSerializer =
    _$PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumSerializer();

class _$PublicKeyCannotBeResolvedFromDidErrorNameEnumSerializer
    implements
        PrimitiveSerializer<PublicKeyCannotBeResolvedFromDidErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'publicKeyCannotBeResolvedFromDidError':
        'PublicKeyCannotBeResolvedFromDidError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PublicKeyCannotBeResolvedFromDidError':
        'publicKeyCannotBeResolvedFromDidError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PublicKeyCannotBeResolvedFromDidErrorNameEnum
  ];
  @override
  final String wireName = 'PublicKeyCannotBeResolvedFromDidErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          PublicKeyCannotBeResolvedFromDidErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PublicKeyCannotBeResolvedFromDidErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PublicKeyCannotBeResolvedFromDidErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PublicKeyCannotBeResolvedFromDidErrorMessageEnumSerializer
    implements
        PrimitiveSerializer<PublicKeyCannotBeResolvedFromDidErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'unableToResolveDIDMethodPeriodInvalidPublicKey':
        'Unable to resolve DID method. Invalid public key',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Unable to resolve DID method. Invalid public key':
        'unableToResolveDIDMethodPeriodInvalidPublicKey',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PublicKeyCannotBeResolvedFromDidErrorMessageEnum
  ];
  @override
  final String wireName = 'PublicKeyCannotBeResolvedFromDidErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          PublicKeyCannotBeResolvedFromDidErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PublicKeyCannotBeResolvedFromDidErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PublicKeyCannotBeResolvedFromDidErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName =
      'PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PublicKeyCannotBeResolvedFromDidError
    extends PublicKeyCannotBeResolvedFromDidError {
  @override
  final PublicKeyCannotBeResolvedFromDidErrorNameEnum name;
  @override
  final PublicKeyCannotBeResolvedFromDidErrorMessageEnum message;
  @override
  final PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$PublicKeyCannotBeResolvedFromDidError(
          [void Function(PublicKeyCannotBeResolvedFromDidErrorBuilder)?
              updates]) =>
      (PublicKeyCannotBeResolvedFromDidErrorBuilder()..update(updates))
          ._build();

  _$PublicKeyCannotBeResolvedFromDidError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  PublicKeyCannotBeResolvedFromDidError rebuild(
          void Function(PublicKeyCannotBeResolvedFromDidErrorBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PublicKeyCannotBeResolvedFromDidErrorBuilder toBuilder() =>
      PublicKeyCannotBeResolvedFromDidErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PublicKeyCannotBeResolvedFromDidError &&
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
    return (newBuiltValueToStringHelper(
            r'PublicKeyCannotBeResolvedFromDidError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class PublicKeyCannotBeResolvedFromDidErrorBuilder
    implements
        Builder<PublicKeyCannotBeResolvedFromDidError,
            PublicKeyCannotBeResolvedFromDidErrorBuilder> {
  _$PublicKeyCannotBeResolvedFromDidError? _$v;

  PublicKeyCannotBeResolvedFromDidErrorNameEnum? _name;
  PublicKeyCannotBeResolvedFromDidErrorNameEnum? get name => _$this._name;
  set name(PublicKeyCannotBeResolvedFromDidErrorNameEnum? name) =>
      _$this._name = name;

  PublicKeyCannotBeResolvedFromDidErrorMessageEnum? _message;
  PublicKeyCannotBeResolvedFromDidErrorMessageEnum? get message =>
      _$this._message;
  set message(PublicKeyCannotBeResolvedFromDidErrorMessageEnum? message) =>
      _$this._message = message;

  PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum? _httpStatusCode;
  PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          PublicKeyCannotBeResolvedFromDidErrorHttpStatusCodeEnum?
              httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  PublicKeyCannotBeResolvedFromDidErrorBuilder() {
    PublicKeyCannotBeResolvedFromDidError._defaults(this);
  }

  PublicKeyCannotBeResolvedFromDidErrorBuilder get _$this {
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
  void replace(PublicKeyCannotBeResolvedFromDidError other) {
    _$v = other as _$PublicKeyCannotBeResolvedFromDidError;
  }

  @override
  void update(
      void Function(PublicKeyCannotBeResolvedFromDidErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PublicKeyCannotBeResolvedFromDidError build() => _build();

  _$PublicKeyCannotBeResolvedFromDidError _build() {
    _$PublicKeyCannotBeResolvedFromDidError _$result;
    try {
      _$result = _$v ??
          _$PublicKeyCannotBeResolvedFromDidError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PublicKeyCannotBeResolvedFromDidError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PublicKeyCannotBeResolvedFromDidError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'PublicKeyCannotBeResolvedFromDidError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'PublicKeyCannotBeResolvedFromDidError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PublicKeyCannotBeResolvedFromDidError',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
