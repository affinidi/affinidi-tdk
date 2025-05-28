// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_groups_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InvalidGroupsErrorNameEnum
    _$invalidGroupsErrorNameEnum_invalidGroupsError =
    const InvalidGroupsErrorNameEnum._('invalidGroupsError');

InvalidGroupsErrorNameEnum _$invalidGroupsErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'invalidGroupsError':
      return _$invalidGroupsErrorNameEnum_invalidGroupsError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidGroupsErrorNameEnum> _$invalidGroupsErrorNameEnumValues =
    BuiltSet<InvalidGroupsErrorNameEnum>(const <InvalidGroupsErrorNameEnum>[
  _$invalidGroupsErrorNameEnum_invalidGroupsError,
]);

const InvalidGroupsErrorMessageEnum
    _$invalidGroupsErrorMessageEnum_invalidGroupsNames =
    const InvalidGroupsErrorMessageEnum._('invalidGroupsNames');

InvalidGroupsErrorMessageEnum _$invalidGroupsErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'invalidGroupsNames':
      return _$invalidGroupsErrorMessageEnum_invalidGroupsNames;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidGroupsErrorMessageEnum>
    _$invalidGroupsErrorMessageEnumValues = BuiltSet<
        InvalidGroupsErrorMessageEnum>(const <InvalidGroupsErrorMessageEnum>[
  _$invalidGroupsErrorMessageEnum_invalidGroupsNames,
]);

const InvalidGroupsErrorHttpStatusCodeEnum
    _$invalidGroupsErrorHttpStatusCodeEnum_number400 =
    const InvalidGroupsErrorHttpStatusCodeEnum._('number400');

InvalidGroupsErrorHttpStatusCodeEnum
    _$invalidGroupsErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$invalidGroupsErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<InvalidGroupsErrorHttpStatusCodeEnum>
    _$invalidGroupsErrorHttpStatusCodeEnumValues = BuiltSet<
        InvalidGroupsErrorHttpStatusCodeEnum>(const <InvalidGroupsErrorHttpStatusCodeEnum>[
  _$invalidGroupsErrorHttpStatusCodeEnum_number400,
]);

Serializer<InvalidGroupsErrorNameEnum> _$invalidGroupsErrorNameEnumSerializer =
    _$InvalidGroupsErrorNameEnumSerializer();
Serializer<InvalidGroupsErrorMessageEnum>
    _$invalidGroupsErrorMessageEnumSerializer =
    _$InvalidGroupsErrorMessageEnumSerializer();
Serializer<InvalidGroupsErrorHttpStatusCodeEnum>
    _$invalidGroupsErrorHttpStatusCodeEnumSerializer =
    _$InvalidGroupsErrorHttpStatusCodeEnumSerializer();

class _$InvalidGroupsErrorNameEnumSerializer
    implements PrimitiveSerializer<InvalidGroupsErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidGroupsError': 'InvalidGroupsError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'InvalidGroupsError': 'invalidGroupsError',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidGroupsErrorNameEnum];
  @override
  final String wireName = 'InvalidGroupsErrorNameEnum';

  @override
  Object serialize(Serializers serializers, InvalidGroupsErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidGroupsErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidGroupsErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidGroupsErrorMessageEnumSerializer
    implements PrimitiveSerializer<InvalidGroupsErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'invalidGroupsNames': 'Invalid groups names',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Invalid groups names': 'invalidGroupsNames',
  };

  @override
  final Iterable<Type> types = const <Type>[InvalidGroupsErrorMessageEnum];
  @override
  final String wireName = 'InvalidGroupsErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidGroupsErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidGroupsErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidGroupsErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidGroupsErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<InvalidGroupsErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    InvalidGroupsErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'InvalidGroupsErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, InvalidGroupsErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InvalidGroupsErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InvalidGroupsErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$InvalidGroupsError extends InvalidGroupsError {
  @override
  final InvalidGroupsErrorNameEnum name;
  @override
  final InvalidGroupsErrorMessageEnum message;
  @override
  final InvalidGroupsErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$InvalidGroupsError(
          [void Function(InvalidGroupsErrorBuilder)? updates]) =>
      (InvalidGroupsErrorBuilder()..update(updates))._build();

  _$InvalidGroupsError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  InvalidGroupsError rebuild(
          void Function(InvalidGroupsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidGroupsErrorBuilder toBuilder() =>
      InvalidGroupsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidGroupsError &&
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
    return (newBuiltValueToStringHelper(r'InvalidGroupsError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class InvalidGroupsErrorBuilder
    implements Builder<InvalidGroupsError, InvalidGroupsErrorBuilder> {
  _$InvalidGroupsError? _$v;

  InvalidGroupsErrorNameEnum? _name;
  InvalidGroupsErrorNameEnum? get name => _$this._name;
  set name(InvalidGroupsErrorNameEnum? name) => _$this._name = name;

  InvalidGroupsErrorMessageEnum? _message;
  InvalidGroupsErrorMessageEnum? get message => _$this._message;
  set message(InvalidGroupsErrorMessageEnum? message) =>
      _$this._message = message;

  InvalidGroupsErrorHttpStatusCodeEnum? _httpStatusCode;
  InvalidGroupsErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(InvalidGroupsErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  InvalidGroupsErrorBuilder() {
    InvalidGroupsError._defaults(this);
  }

  InvalidGroupsErrorBuilder get _$this {
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
  void replace(InvalidGroupsError other) {
    _$v = other as _$InvalidGroupsError;
  }

  @override
  void update(void Function(InvalidGroupsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidGroupsError build() => _build();

  _$InvalidGroupsError _build() {
    _$InvalidGroupsError _$result;
    try {
      _$result = _$v ??
          _$InvalidGroupsError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InvalidGroupsError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'InvalidGroupsError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'InvalidGroupsError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'InvalidGroupsError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'InvalidGroupsError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
