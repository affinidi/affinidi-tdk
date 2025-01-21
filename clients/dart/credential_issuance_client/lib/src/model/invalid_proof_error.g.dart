// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_proof_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidProofErrorNameEnum _$invalidProofErrorNameEnum_invalidProofError =
    const InvalidProofErrorNameEnum._('invalidProofError');

InvalidProofErrorNameEnum _$invalidProofErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidProofError':
      return _$invalidProofErrorNameEnum_invalidProofError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidProofErrorNameEnum> _$invalidProofErrorNameEnumValues =
    new BuiltSet<InvalidProofErrorNameEnum>(const <InvalidProofErrorNameEnum>[
  _$invalidProofErrorNameEnum_invalidProofError,
]);

const InvalidProofErrorMessageEnum
    _$invalidProofErrorMessageEnum_theProofInTheCredentialRequestIsInvalid =
    const InvalidProofErrorMessageEnum._(
        'theProofInTheCredentialRequestIsInvalid');

InvalidProofErrorMessageEnum _$invalidProofErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'theProofInTheCredentialRequestIsInvalid':
      return _$invalidProofErrorMessageEnum_theProofInTheCredentialRequestIsInvalid;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidProofErrorMessageEnum>
    _$invalidProofErrorMessageEnumValues = new BuiltSet<
        InvalidProofErrorMessageEnum>(const <InvalidProofErrorMessageEnum>[
  _$invalidProofErrorMessageEnum_theProofInTheCredentialRequestIsInvalid,
]);

const InvalidProofErrorHttpStatusCodeEnum
    _$invalidProofErrorHttpStatusCodeEnum_number400 =
    const InvalidProofErrorHttpStatusCodeEnum._('number400');

InvalidProofErrorHttpStatusCodeEnum
    _$invalidProofErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidProofErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InvalidProofErrorHttpStatusCodeEnum>
    _$invalidProofErrorHttpStatusCodeEnumValues = new BuiltSet<
        InvalidProofErrorHttpStatusCodeEnum>(const <InvalidProofErrorHttpStatusCodeEnum>[
  _$invalidProofErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidProofErrorNameEnum> _$invalidProofErrorNameEnumSerializer =
    new _$InvalidProofErrorNameEnumSerializer();
Serializer<InvalidProofErrorMessageEnum>
    _$invalidProofErrorMessageEnumSerializer =
    new _$InvalidProofErrorMessageEnumSerializer();
Serializer<InvalidProofErrorHttpStatusCodeEnum>
    _$invalidProofErrorHttpStatusCodeEnumSerializer =
    new _$InvalidProofErrorHttpStatusCodeEnumSerializer();

class _$InvalidProofErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidProofErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidProofError': 'InvalidProofError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidProofError': 'invalidProofError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidProofErrorNameEnum];
  @override
  final String wireName = 'InvalidProofErrorNameEnum';

  @override
  Object serialize(Serializers serializers, InvalidProofErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidProofErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidProofErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidProofErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidProofErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'theProofInTheCredentialRequestIsInvalid':
        'The proof in the Credential Request is invalid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'The proof in the Credential Request is invalid':
        'theProofInTheCredentialRequestIsInvalid',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidProofErrorMessageEnum];
  @override
  final String wireName = 'InvalidProofErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, InvalidProofErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidProofErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidProofErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidProofErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidProofErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidProofErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidProofErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidProofErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidProofErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidProofErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidProofError extends InvalidProofError {
  @override
  final InvalidProofErrorNameEnum name;
  @override
  final InvalidProofErrorMessageEnum message;
  @override
  final InvalidProofErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$InvalidProofError(
          [void Function(InvalidProofErrorBuilder)? updates]) =>
      (new InvalidProofErrorBuilder()..update(updates))._build();

  _$InvalidProofError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'InvalidProofError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'InvalidProofError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'InvalidProofError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'InvalidProofError', 'traceId');
  }

  @override
  InvalidProofError rebuild(void Function(InvalidProofErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidProofErrorBuilder toBuilder() =>
      new InvalidProofErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidProofError &&
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
    return (newBuiltValueToStringHelper(r'InvalidProofError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidProofErrorBuilder
    implements Builder<InvalidProofError, InvalidProofErrorBuilder> {
  _$InvalidProofError? _$v;

  InvalidProofErrorNameEnum? _name;
  InvalidProofErrorNameEnum? get name => _$this._name;
  set name(InvalidProofErrorNameEnum? name) => _$this._name = name;

  InvalidProofErrorMessageEnum? _message;
  InvalidProofErrorMessageEnum? get message => _$this._message;
  set message(InvalidProofErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidProofErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidProofErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(InvalidProofErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidProofErrorBuilder() {
    InvalidProofError._defaults(this);
  }

  InvalidProofErrorBuilder get _$this {
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
  void replace(InvalidProofError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidProofError;
  }

  @override
  void update(void Function(InvalidProofErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidProofError build() => _build();

  _$InvalidProofError _build() {
    _$InvalidProofError _$result;
    try {
      _$result = _$v ??
          new _$InvalidProofError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidProofError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidProofError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidProofError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidProofError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InvalidProofError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
