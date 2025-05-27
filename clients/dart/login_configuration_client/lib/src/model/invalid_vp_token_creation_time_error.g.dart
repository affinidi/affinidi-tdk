// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_vp_token_creation_time_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidVPTokenCreationTimeErrorNameEnum
    _$invalidVPTokenCreationTimeErrorNameEnum_invalidVPTokenCreationTimeError =
    const InvalidVPTokenCreationTimeErrorNameEnum._(
        'invalidVPTokenCreationTimeError');

InvalidVPTokenCreationTimeErrorNameEnum
    _$invalidVPTokenCreationTimeErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidVPTokenCreationTimeError':
      return _$invalidVPTokenCreationTimeErrorNameEnum_invalidVPTokenCreationTimeError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidVPTokenCreationTimeErrorNameEnum>
    _$invalidVPTokenCreationTimeErrorNameEnumValues = BuiltSet<
        InvalidVPTokenCreationTimeErrorNameEnum>(const <InvalidVPTokenCreationTimeErrorNameEnum>[
  _$invalidVPTokenCreationTimeErrorNameEnum_invalidVPTokenCreationTimeError,
]);

const InvalidVPTokenCreationTimeErrorMessageEnum
    _$invalidVPTokenCreationTimeErrorMessageEnum_vPTokenHasExpired =
    const InvalidVPTokenCreationTimeErrorMessageEnum._('vPTokenHasExpired');

InvalidVPTokenCreationTimeErrorMessageEnum
    _$invalidVPTokenCreationTimeErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'vPTokenHasExpired':
      return _$invalidVPTokenCreationTimeErrorMessageEnum_vPTokenHasExpired;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidVPTokenCreationTimeErrorMessageEnum>
    _$invalidVPTokenCreationTimeErrorMessageEnumValues = BuiltSet<
        InvalidVPTokenCreationTimeErrorMessageEnum>(const <InvalidVPTokenCreationTimeErrorMessageEnum>[
  _$invalidVPTokenCreationTimeErrorMessageEnum_vPTokenHasExpired,
]);

const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum
    _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnum_number400 =
    const InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum._('number400');

InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum
    _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>
    _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>(const <InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>[
  _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidVPTokenCreationTimeErrorNameEnum>
    _$invalidVPTokenCreationTimeErrorNameEnumSerializer =
    _$InvalidVPTokenCreationTimeErrorNameEnumSerializer();
Serializer<InvalidVPTokenCreationTimeErrorMessageEnum>
    _$invalidVPTokenCreationTimeErrorMessageEnumSerializer =
    _$InvalidVPTokenCreationTimeErrorMessageEnumSerializer();
Serializer<InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum>
    _$invalidVPTokenCreationTimeErrorHttpStatusCodeEnumSerializer =
    _$InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumSerializer();

class _$InvalidVPTokenCreationTimeErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidVPTokenCreationTimeErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidVPTokenCreationTimeError': 'InvalidVPTokenCreationTimeError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidVPTokenCreationTimeError': 'invalidVPTokenCreationTimeError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidVPTokenCreationTimeErrorNameEnum
  ];
  @override
  final String wireName = 'InvalidVPTokenCreationTimeErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidVPTokenCreationTimeErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidVPTokenCreationTimeErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidVPTokenCreationTimeErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidVPTokenCreationTimeErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidVPTokenCreationTimeErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vPTokenHasExpired': 'VP token has expired',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VP token has expired': 'vPTokenHasExpired',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidVPTokenCreationTimeErrorMessageEnum
  ];
  @override
  final String wireName = 'InvalidVPTokenCreationTimeErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidVPTokenCreationTimeErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidVPTokenCreationTimeErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidVPTokenCreationTimeErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidVPTokenCreationTimeErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidVPTokenCreationTimeError
    extends InvalidVPTokenCreationTimeError {
  @override
  final InvalidVPTokenCreationTimeErrorNameEnum name;
  @override
  final InvalidVPTokenCreationTimeErrorMessageEnum message;
  @override
  final InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$InvalidVPTokenCreationTimeError(
          [void Function(InvalidVPTokenCreationTimeErrorBuilder)? updates]) =>
      (InvalidVPTokenCreationTimeErrorBuilder()..update(updates))._build();

  _$InvalidVPTokenCreationTimeError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidVPTokenCreationTimeError rebuild(
          void Function(InvalidVPTokenCreationTimeErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidVPTokenCreationTimeErrorBuilder toBuilder() =>
      InvalidVPTokenCreationTimeErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidVPTokenCreationTimeError &&
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
    return (newBuiltValueToStringHelper(r'InvalidVPTokenCreationTimeError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidVPTokenCreationTimeErrorBuilder
    implements
        Builder<InvalidVPTokenCreationTimeError,
            InvalidVPTokenCreationTimeErrorBuilder> {
  _$InvalidVPTokenCreationTimeError? _$v;

  InvalidVPTokenCreationTimeErrorNameEnum? _name;
  InvalidVPTokenCreationTimeErrorNameEnum? get name => _$this._name;
  set name(InvalidVPTokenCreationTimeErrorNameEnum? name) =>
      _$this._name = name;

  InvalidVPTokenCreationTimeErrorMessageEnum? _message;
  InvalidVPTokenCreationTimeErrorMessageEnum? get message => _$this._message;
  set message(InvalidVPTokenCreationTimeErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          InvalidVPTokenCreationTimeErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidVPTokenCreationTimeErrorBuilder() {
    InvalidVPTokenCreationTimeError._defaults(this);
  }

  InvalidVPTokenCreationTimeErrorBuilder get _$this {
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
  void replace(InvalidVPTokenCreationTimeError other) {
    _$v = other as _$InvalidVPTokenCreationTimeError;
  }

  @override
  void update(void Function(InvalidVPTokenCreationTimeErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidVPTokenCreationTimeError build() => _build();

  _$InvalidVPTokenCreationTimeError _build() {
    _$InvalidVPTokenCreationTimeError _$result;
    try {
      _$result = _$v ??
          _$InvalidVPTokenCreationTimeError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidVPTokenCreationTimeError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidVPTokenCreationTimeError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'InvalidVPTokenCreationTimeError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidVPTokenCreationTimeError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidVPTokenCreationTimeError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
