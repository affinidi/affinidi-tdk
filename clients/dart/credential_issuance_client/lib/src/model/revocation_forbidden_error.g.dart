// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'revocation_forbidden_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RevocationForbiddenErrorNameEnum
    _$revocationForbiddenErrorNameEnum_revocationForbiddenError =
    const RevocationForbiddenErrorNameEnum._('revocationForbiddenError');

RevocationForbiddenErrorNameEnum _$revocationForbiddenErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'revocationForbiddenError':
      return _$revocationForbiddenErrorNameEnum_revocationForbiddenError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RevocationForbiddenErrorNameEnum>
    _$revocationForbiddenErrorNameEnumValues = BuiltSet<
        RevocationForbiddenErrorNameEnum>(const <RevocationForbiddenErrorNameEnum>[
  _$revocationForbiddenErrorNameEnum_revocationForbiddenError,
]);

const RevocationForbiddenErrorMessageEnum
    _$revocationForbiddenErrorMessageEnum_relatedVCHasNotBeenClaimedYet =
    const RevocationForbiddenErrorMessageEnum._(
        'relatedVCHasNotBeenClaimedYet');

RevocationForbiddenErrorMessageEnum
    _$revocationForbiddenErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'relatedVCHasNotBeenClaimedYet':
      return _$revocationForbiddenErrorMessageEnum_relatedVCHasNotBeenClaimedYet;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RevocationForbiddenErrorMessageEnum>
    _$revocationForbiddenErrorMessageEnumValues = BuiltSet<
        RevocationForbiddenErrorMessageEnum>(const <RevocationForbiddenErrorMessageEnum>[
  _$revocationForbiddenErrorMessageEnum_relatedVCHasNotBeenClaimedYet,
]);

const RevocationForbiddenErrorHttpStatusCodeEnum
    _$revocationForbiddenErrorHttpStatusCodeEnum_number400 =
    const RevocationForbiddenErrorHttpStatusCodeEnum._('number400');

RevocationForbiddenErrorHttpStatusCodeEnum
    _$revocationForbiddenErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$revocationForbiddenErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RevocationForbiddenErrorHttpStatusCodeEnum>
    _$revocationForbiddenErrorHttpStatusCodeEnumValues = BuiltSet<
        RevocationForbiddenErrorHttpStatusCodeEnum>(const <RevocationForbiddenErrorHttpStatusCodeEnum>[
  _$revocationForbiddenErrorHttpStatusCodeEnum_number400,
]);

Serializer<RevocationForbiddenErrorNameEnum>
    _$revocationForbiddenErrorNameEnumSerializer =
    _$RevocationForbiddenErrorNameEnumSerializer();
Serializer<RevocationForbiddenErrorMessageEnum>
    _$revocationForbiddenErrorMessageEnumSerializer =
    _$RevocationForbiddenErrorMessageEnumSerializer();
Serializer<RevocationForbiddenErrorHttpStatusCodeEnum>
    _$revocationForbiddenErrorHttpStatusCodeEnumSerializer =
    _$RevocationForbiddenErrorHttpStatusCodeEnumSerializer();

class _$RevocationForbiddenErrorNameEnumSerializer
    implements PrimitiveSerializer<RevocationForbiddenErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'revocationForbiddenError': 'RevocationForbiddenError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RevocationForbiddenError': 'revocationForbiddenError',
  };

  @override
  final Iterable<Type> types = const <Type>[RevocationForbiddenErrorNameEnum];
  @override
  final String wireName = 'RevocationForbiddenErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, RevocationForbiddenErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RevocationForbiddenErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RevocationForbiddenErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RevocationForbiddenErrorMessageEnumSerializer
    implements PrimitiveSerializer<RevocationForbiddenErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'relatedVCHasNotBeenClaimedYet': 'Related VC has not been claimed yet',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Related VC has not been claimed yet': 'relatedVCHasNotBeenClaimedYet',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RevocationForbiddenErrorMessageEnum
  ];
  @override
  final String wireName = 'RevocationForbiddenErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, RevocationForbiddenErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RevocationForbiddenErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RevocationForbiddenErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RevocationForbiddenErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<RevocationForbiddenErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RevocationForbiddenErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'RevocationForbiddenErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          RevocationForbiddenErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RevocationForbiddenErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RevocationForbiddenErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RevocationForbiddenError extends RevocationForbiddenError {
  @override
  final RevocationForbiddenErrorNameEnum name;
  @override
  final RevocationForbiddenErrorMessageEnum message;
  @override
  final RevocationForbiddenErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$RevocationForbiddenError(
          [void Function(RevocationForbiddenErrorBuilder)? updates]) =>
      (RevocationForbiddenErrorBuilder()..update(updates))._build();

  _$RevocationForbiddenError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  RevocationForbiddenError rebuild(
          void Function(RevocationForbiddenErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RevocationForbiddenErrorBuilder toBuilder() =>
      RevocationForbiddenErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RevocationForbiddenError &&
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
    return (newBuiltValueToStringHelper(r'RevocationForbiddenError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class RevocationForbiddenErrorBuilder
    implements
        Builder<RevocationForbiddenError, RevocationForbiddenErrorBuilder> {
  _$RevocationForbiddenError? _$v;

  RevocationForbiddenErrorNameEnum? _name;
  RevocationForbiddenErrorNameEnum? get name => _$this._name;
  set name(RevocationForbiddenErrorNameEnum? name) => _$this._name = name;

  RevocationForbiddenErrorMessageEnum? _message;
  RevocationForbiddenErrorMessageEnum? get message => _$this._message;
  set message(RevocationForbiddenErrorMessageEnum? message) =>
      _$this._message = message;

  RevocationForbiddenErrorHttpStatusCodeEnum? _httpStatusCode;
  RevocationForbiddenErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          RevocationForbiddenErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  RevocationForbiddenErrorBuilder() {
    RevocationForbiddenError._defaults(this);
  }

  RevocationForbiddenErrorBuilder get _$this {
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
  void replace(RevocationForbiddenError other) {
    _$v = other as _$RevocationForbiddenError;
  }

  @override
  void update(void Function(RevocationForbiddenErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RevocationForbiddenError build() => _build();

  _$RevocationForbiddenError _build() {
    _$RevocationForbiddenError _$result;
    try {
      _$result = _$v ??
          _$RevocationForbiddenError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'RevocationForbiddenError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'RevocationForbiddenError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'RevocationForbiddenError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'RevocationForbiddenError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RevocationForbiddenError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
