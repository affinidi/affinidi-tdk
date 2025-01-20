// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_claim_context_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidClaimContextErrorNameEnum
    _$invalidClaimContextErrorNameEnum_invalidClaimContextError =
    const InvalidClaimContextErrorNameEnum._('invalidClaimContextError');

InvalidClaimContextErrorNameEnum _$invalidClaimContextErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidClaimContextError':
      return _$invalidClaimContextErrorNameEnum_invalidClaimContextError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidClaimContextErrorNameEnum>
    _$invalidClaimContextErrorNameEnumValues = new BuiltSet<
        InvalidClaimContextErrorNameEnum>(const <InvalidClaimContextErrorNameEnum>[
  _$invalidClaimContextErrorNameEnum_invalidClaimContextError,
]);

const InvalidClaimContextErrorMessageEnum
    _$invalidClaimContextErrorMessageEnum_invalidClaimContext =
    const InvalidClaimContextErrorMessageEnum._('invalidClaimContext');

InvalidClaimContextErrorMessageEnum
    _$invalidClaimContextErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'invalidClaimContext':
      return _$invalidClaimContextErrorMessageEnum_invalidClaimContext;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidClaimContextErrorMessageEnum>
    _$invalidClaimContextErrorMessageEnumValues = new BuiltSet<
        InvalidClaimContextErrorMessageEnum>(const <InvalidClaimContextErrorMessageEnum>[
  _$invalidClaimContextErrorMessageEnum_invalidClaimContext,
]);

const InvalidClaimContextErrorHttpStatusCodeEnum
    _$invalidClaimContextErrorHttpStatusCodeEnum_number400 =
    const InvalidClaimContextErrorHttpStatusCodeEnum._('number400');

InvalidClaimContextErrorHttpStatusCodeEnum
    _$invalidClaimContextErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidClaimContextErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidClaimContextErrorHttpStatusCodeEnum>
    _$invalidClaimContextErrorHttpStatusCodeEnumValues = new BuiltSet<
        InvalidClaimContextErrorHttpStatusCodeEnum>(const <InvalidClaimContextErrorHttpStatusCodeEnum>[
  _$invalidClaimContextErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidClaimContextErrorNameEnum>
    _$invalidClaimContextErrorNameEnumSerializer =
    new _$InvalidClaimContextErrorNameEnumSerializer();
Serializer<InvalidClaimContextErrorMessageEnum>
    _$invalidClaimContextErrorMessageEnumSerializer =
    new _$InvalidClaimContextErrorMessageEnumSerializer();
Serializer<InvalidClaimContextErrorHttpStatusCodeEnum>
    _$invalidClaimContextErrorHttpStatusCodeEnumSerializer =
    new _$InvalidClaimContextErrorHttpStatusCodeEnumSerializer();

class _$InvalidClaimContextErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidClaimContextErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidClaimContextError': 'InvalidClaimContextError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidClaimContextError': 'invalidClaimContextError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidClaimContextErrorNameEnum];
  @override
  final String wireName = 'InvalidClaimContextErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidClaimContextErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidClaimContextErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidClaimContextErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidClaimContextErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidClaimContextErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidClaimContext': 'Invalid Claim Context',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Invalid Claim Context': 'invalidClaimContext',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidClaimContextErrorMessageEnum
  ];
  @override
  final String wireName = 'InvalidClaimContextErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidClaimContextErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidClaimContextErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidClaimContextErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidClaimContextErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidClaimContextErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidClaimContextErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidClaimContextErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidClaimContextErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidClaimContextErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidClaimContextErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidClaimContextError extends InvalidClaimContextError {
  @override
  final InvalidClaimContextErrorNameEnum name;
  @override
  final InvalidClaimContextErrorMessageEnum message;
  @override
  final InvalidClaimContextErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$InvalidClaimContextError(
          [void Function(InvalidClaimContextErrorBuilder)? updates]) =>
      (new InvalidClaimContextErrorBuilder()..update(updates))._build();

  _$InvalidClaimContextError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'InvalidClaimContextError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'InvalidClaimContextError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'InvalidClaimContextError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'InvalidClaimContextError', 'traceId');
  }

  @override
  InvalidClaimContextError rebuild(
          void Function(InvalidClaimContextErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidClaimContextErrorBuilder toBuilder() =>
      new InvalidClaimContextErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidClaimContextError &&
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
    return (newBuiltValueToStringHelper(r'InvalidClaimContextError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidClaimContextErrorBuilder
    implements
        Builder<InvalidClaimContextError, InvalidClaimContextErrorBuilder> {
  _$InvalidClaimContextError? _$v;

  InvalidClaimContextErrorNameEnum? _name;
  InvalidClaimContextErrorNameEnum? get name => _$this._name;
  set name(InvalidClaimContextErrorNameEnum? name) => _$this._name = name;

  InvalidClaimContextErrorMessageEnum? _message;
  InvalidClaimContextErrorMessageEnum? get message => _$this._message;
  set message(InvalidClaimContextErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidClaimContextErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidClaimContextErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          InvalidClaimContextErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidClaimContextErrorBuilder() {
    InvalidClaimContextError._defaults(this);
  }

  InvalidClaimContextErrorBuilder get _$this {
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
  void replace(InvalidClaimContextError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidClaimContextError;
  }

  @override
  void update(void Function(InvalidClaimContextErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidClaimContextError build() => _build();

  _$InvalidClaimContextError _build() {
    _$InvalidClaimContextError _$result;
    try {
      _$result = _$v ??
          new _$InvalidClaimContextError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidClaimContextError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidClaimContextError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidClaimContextError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidClaimContextError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InvalidClaimContextError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
