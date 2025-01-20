// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_cannot_be_deleted_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrincipalCannotBeDeletedErrorNameEnum
    _$principalCannotBeDeletedErrorNameEnum_principalCannotBeDeletedError =
    const PrincipalCannotBeDeletedErrorNameEnum._(
        'principalCannotBeDeletedError');

PrincipalCannotBeDeletedErrorNameEnum
    _$principalCannotBeDeletedErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'principalCannotBeDeletedError':
      return _$principalCannotBeDeletedErrorNameEnum_principalCannotBeDeletedError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PrincipalCannotBeDeletedErrorNameEnum>
    _$principalCannotBeDeletedErrorNameEnumValues = new BuiltSet<
        PrincipalCannotBeDeletedErrorNameEnum>(const <PrincipalCannotBeDeletedErrorNameEnum>[
  _$principalCannotBeDeletedErrorNameEnum_principalCannotBeDeletedError,
]);

const PrincipalCannotBeDeletedErrorMessageEnum
    _$principalCannotBeDeletedErrorMessageEnum_cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId =
    const PrincipalCannotBeDeletedErrorMessageEnum._(
        'cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId');

PrincipalCannotBeDeletedErrorMessageEnum
    _$principalCannotBeDeletedErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId':
      return _$principalCannotBeDeletedErrorMessageEnum_cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PrincipalCannotBeDeletedErrorMessageEnum>
    _$principalCannotBeDeletedErrorMessageEnumValues = new BuiltSet<
        PrincipalCannotBeDeletedErrorMessageEnum>(const <PrincipalCannotBeDeletedErrorMessageEnum>[
  _$principalCannotBeDeletedErrorMessageEnum_cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId,
]);

const PrincipalCannotBeDeletedErrorHttpStatusCodeEnum
    _$principalCannotBeDeletedErrorHttpStatusCodeEnum_number409 =
    const PrincipalCannotBeDeletedErrorHttpStatusCodeEnum._('number409');

PrincipalCannotBeDeletedErrorHttpStatusCodeEnum
    _$principalCannotBeDeletedErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number409':
      return _$principalCannotBeDeletedErrorHttpStatusCodeEnum_number409;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>
    _$principalCannotBeDeletedErrorHttpStatusCodeEnumValues = new BuiltSet<
        PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>(const <PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>[
  _$principalCannotBeDeletedErrorHttpStatusCodeEnum_number409,
]);

Serializer<PrincipalCannotBeDeletedErrorNameEnum>
    _$principalCannotBeDeletedErrorNameEnumSerializer =
    new _$PrincipalCannotBeDeletedErrorNameEnumSerializer();
Serializer<PrincipalCannotBeDeletedErrorMessageEnum>
    _$principalCannotBeDeletedErrorMessageEnumSerializer =
    new _$PrincipalCannotBeDeletedErrorMessageEnumSerializer();
Serializer<PrincipalCannotBeDeletedErrorHttpStatusCodeEnum>
    _$principalCannotBeDeletedErrorHttpStatusCodeEnumSerializer =
    new _$PrincipalCannotBeDeletedErrorHttpStatusCodeEnumSerializer();

class _$PrincipalCannotBeDeletedErrorNameEnumSerializer
    implements PrimitiveSerializer<PrincipalCannotBeDeletedErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'principalCannotBeDeletedError': 'PrincipalCannotBeDeletedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PrincipalCannotBeDeletedError': 'principalCannotBeDeletedError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrincipalCannotBeDeletedErrorNameEnum
  ];
  @override
  final String wireName = 'PrincipalCannotBeDeletedErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, PrincipalCannotBeDeletedErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalCannotBeDeletedErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalCannotBeDeletedErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrincipalCannotBeDeletedErrorMessageEnumSerializer
    implements PrimitiveSerializer<PrincipalCannotBeDeletedErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId':
        'Cannot delete own record from the project with the same principalId',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Cannot delete own record from the project with the same principalId':
        'cannotDeleteOwnRecordFromTheProjectWithTheSamePrincipalId',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrincipalCannotBeDeletedErrorMessageEnum
  ];
  @override
  final String wireName = 'PrincipalCannotBeDeletedErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          PrincipalCannotBeDeletedErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalCannotBeDeletedErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalCannotBeDeletedErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrincipalCannotBeDeletedErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<PrincipalCannotBeDeletedErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number409': 409,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    409: 'number409',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrincipalCannotBeDeletedErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'PrincipalCannotBeDeletedErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          PrincipalCannotBeDeletedErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalCannotBeDeletedErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalCannotBeDeletedErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrincipalCannotBeDeletedError extends PrincipalCannotBeDeletedError {
  @override
  final PrincipalCannotBeDeletedErrorNameEnum name;
  @override
  final PrincipalCannotBeDeletedErrorMessageEnum message;
  @override
  final PrincipalCannotBeDeletedErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$PrincipalCannotBeDeletedError(
          [void Function(PrincipalCannotBeDeletedErrorBuilder)? updates]) =>
      (new PrincipalCannotBeDeletedErrorBuilder()..update(updates))._build();

  _$PrincipalCannotBeDeletedError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'PrincipalCannotBeDeletedError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'PrincipalCannotBeDeletedError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'PrincipalCannotBeDeletedError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'PrincipalCannotBeDeletedError', 'traceId');
  }

  @override
  PrincipalCannotBeDeletedError rebuild(
          void Function(PrincipalCannotBeDeletedErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalCannotBeDeletedErrorBuilder toBuilder() =>
      new PrincipalCannotBeDeletedErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalCannotBeDeletedError &&
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
    return (newBuiltValueToStringHelper(r'PrincipalCannotBeDeletedError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class PrincipalCannotBeDeletedErrorBuilder
    implements
        Builder<PrincipalCannotBeDeletedError,
            PrincipalCannotBeDeletedErrorBuilder> {
  _$PrincipalCannotBeDeletedError? _$v;

  PrincipalCannotBeDeletedErrorNameEnum? _name;
  PrincipalCannotBeDeletedErrorNameEnum? get name => _$this._name;
  set name(PrincipalCannotBeDeletedErrorNameEnum? name) => _$this._name = name;

  PrincipalCannotBeDeletedErrorMessageEnum? _message;
  PrincipalCannotBeDeletedErrorMessageEnum? get message => _$this._message;
  set message(PrincipalCannotBeDeletedErrorMessageEnum? message) =>
      _$this._message = message;

  PrincipalCannotBeDeletedErrorHttpStatusCodeEnum? _httpStatusCode;
  PrincipalCannotBeDeletedErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          PrincipalCannotBeDeletedErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  PrincipalCannotBeDeletedErrorBuilder() {
    PrincipalCannotBeDeletedError._defaults(this);
  }

  PrincipalCannotBeDeletedErrorBuilder get _$this {
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
  void replace(PrincipalCannotBeDeletedError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrincipalCannotBeDeletedError;
  }

  @override
  void update(void Function(PrincipalCannotBeDeletedErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalCannotBeDeletedError build() => _build();

  _$PrincipalCannotBeDeletedError _build() {
    _$PrincipalCannotBeDeletedError _$result;
    try {
      _$result = _$v ??
          new _$PrincipalCannotBeDeletedError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PrincipalCannotBeDeletedError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PrincipalCannotBeDeletedError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'PrincipalCannotBeDeletedError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'PrincipalCannotBeDeletedError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrincipalCannotBeDeletedError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
