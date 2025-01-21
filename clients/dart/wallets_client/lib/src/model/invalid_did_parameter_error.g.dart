// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_did_parameter_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidDidParameterErrorNameEnum
    _$invalidDidParameterErrorNameEnum_invalidDidParameterError =
    const InvalidDidParameterErrorNameEnum._('invalidDidParameterError');

InvalidDidParameterErrorNameEnum _$invalidDidParameterErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidDidParameterError':
      return _$invalidDidParameterErrorNameEnum_invalidDidParameterError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidDidParameterErrorNameEnum>
    _$invalidDidParameterErrorNameEnumValues = new BuiltSet<
        InvalidDidParameterErrorNameEnum>(const <InvalidDidParameterErrorNameEnum>[
  _$invalidDidParameterErrorNameEnum_invalidDidParameterError,
]);

const InvalidDidParameterErrorMessageEnum
    _$invalidDidParameterErrorMessageEnum_givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod =
    const InvalidDidParameterErrorMessageEnum._(
        'givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod');

InvalidDidParameterErrorMessageEnum
    _$invalidDidParameterErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod':
      return _$invalidDidParameterErrorMessageEnum_givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidDidParameterErrorMessageEnum>
    _$invalidDidParameterErrorMessageEnumValues = new BuiltSet<
        InvalidDidParameterErrorMessageEnum>(const <InvalidDidParameterErrorMessageEnum>[
  _$invalidDidParameterErrorMessageEnum_givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod,
]);

const InvalidDidParameterErrorHttpStatusCodeEnum
    _$invalidDidParameterErrorHttpStatusCodeEnum_number400 =
    const InvalidDidParameterErrorHttpStatusCodeEnum._('number400');

InvalidDidParameterErrorHttpStatusCodeEnum
    _$invalidDidParameterErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidDidParameterErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidDidParameterErrorHttpStatusCodeEnum>
    _$invalidDidParameterErrorHttpStatusCodeEnumValues = new BuiltSet<
        InvalidDidParameterErrorHttpStatusCodeEnum>(const <InvalidDidParameterErrorHttpStatusCodeEnum>[
  _$invalidDidParameterErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidDidParameterErrorNameEnum>
    _$invalidDidParameterErrorNameEnumSerializer =
    new _$InvalidDidParameterErrorNameEnumSerializer();
Serializer<InvalidDidParameterErrorMessageEnum>
    _$invalidDidParameterErrorMessageEnumSerializer =
    new _$InvalidDidParameterErrorMessageEnumSerializer();
Serializer<InvalidDidParameterErrorHttpStatusCodeEnum>
    _$invalidDidParameterErrorHttpStatusCodeEnumSerializer =
    new _$InvalidDidParameterErrorHttpStatusCodeEnumSerializer();

class _$InvalidDidParameterErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidDidParameterErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidDidParameterError': 'InvalidDidParameterError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidDidParameterError': 'invalidDidParameterError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidDidParameterErrorNameEnum];
  @override
  final String wireName = 'InvalidDidParameterErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidDidParameterErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidDidParameterErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidDidParameterErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidDidParameterErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidDidParameterErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod':
        'Given did in field toDid is invalid. Use only resolvable form of did.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Given did in field toDid is invalid. Use only resolvable form of did.':
        'givenDidInFieldToDidIsInvalidPeriodUseOnlyResolvableFormOfDidPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidDidParameterErrorMessageEnum
  ];
  @override
  final String wireName = 'InvalidDidParameterErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidDidParameterErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidDidParameterErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidDidParameterErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidDidParameterErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidDidParameterErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidDidParameterErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidDidParameterErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          InvalidDidParameterErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidDidParameterErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidDidParameterErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidDidParameterError extends InvalidDidParameterError {
  @override
  final InvalidDidParameterErrorNameEnum name;
  @override
  final InvalidDidParameterErrorMessageEnum message;
  @override
  final InvalidDidParameterErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$InvalidDidParameterError(
          [void Function(InvalidDidParameterErrorBuilder)? updates]) =>
      (new InvalidDidParameterErrorBuilder()..update(updates))._build();

  _$InvalidDidParameterError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'InvalidDidParameterError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'InvalidDidParameterError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'InvalidDidParameterError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'InvalidDidParameterError', 'traceId');
  }

  @override
  InvalidDidParameterError rebuild(
          void Function(InvalidDidParameterErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidDidParameterErrorBuilder toBuilder() =>
      new InvalidDidParameterErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidDidParameterError &&
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
    return (newBuiltValueToStringHelper(r'InvalidDidParameterError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidDidParameterErrorBuilder
    implements
        Builder<InvalidDidParameterError, InvalidDidParameterErrorBuilder> {
  _$InvalidDidParameterError? _$v;

  InvalidDidParameterErrorNameEnum? _name;
  InvalidDidParameterErrorNameEnum? get name => _$this._name;
  set name(InvalidDidParameterErrorNameEnum? name) => _$this._name = name;

  InvalidDidParameterErrorMessageEnum? _message;
  InvalidDidParameterErrorMessageEnum? get message => _$this._message;
  set message(InvalidDidParameterErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidDidParameterErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidDidParameterErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          InvalidDidParameterErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  InvalidDidParameterErrorBuilder() {
    InvalidDidParameterError._defaults(this);
  }

  InvalidDidParameterErrorBuilder get _$this {
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
  void replace(InvalidDidParameterError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidDidParameterError;
  }

  @override
  void update(void Function(InvalidDidParameterErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidDidParameterError build() => _build();

  _$InvalidDidParameterError _build() {
    _$InvalidDidParameterError _$result;
    try {
      _$result = _$v ??
          new _$InvalidDidParameterError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidDidParameterError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidDidParameterError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidDidParameterError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidDidParameterError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InvalidDidParameterError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
