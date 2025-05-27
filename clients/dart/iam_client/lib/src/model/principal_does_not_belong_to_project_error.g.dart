// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_does_not_belong_to_project_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrincipalDoesNotBelongToProjectErrorNameEnum
    _$principalDoesNotBelongToProjectErrorNameEnum_principalDoesNotBelongToProjectError =
    const PrincipalDoesNotBelongToProjectErrorNameEnum._(
        'principalDoesNotBelongToProjectError');

PrincipalDoesNotBelongToProjectErrorNameEnum
    _$principalDoesNotBelongToProjectErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'principalDoesNotBelongToProjectError':
      return _$principalDoesNotBelongToProjectErrorNameEnum_principalDoesNotBelongToProjectError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrincipalDoesNotBelongToProjectErrorNameEnum>
    _$principalDoesNotBelongToProjectErrorNameEnumValues = BuiltSet<
        PrincipalDoesNotBelongToProjectErrorNameEnum>(const <PrincipalDoesNotBelongToProjectErrorNameEnum>[
  _$principalDoesNotBelongToProjectErrorNameEnum_principalDoesNotBelongToProjectError,
]);

const PrincipalDoesNotBelongToProjectErrorMessageEnum
    _$principalDoesNotBelongToProjectErrorMessageEnum_principalDoesNotBelongToTheGivenProject =
    const PrincipalDoesNotBelongToProjectErrorMessageEnum._(
        'principalDoesNotBelongToTheGivenProject');

PrincipalDoesNotBelongToProjectErrorMessageEnum
    _$principalDoesNotBelongToProjectErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'principalDoesNotBelongToTheGivenProject':
      return _$principalDoesNotBelongToProjectErrorMessageEnum_principalDoesNotBelongToTheGivenProject;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrincipalDoesNotBelongToProjectErrorMessageEnum>
    _$principalDoesNotBelongToProjectErrorMessageEnumValues = BuiltSet<
        PrincipalDoesNotBelongToProjectErrorMessageEnum>(const <PrincipalDoesNotBelongToProjectErrorMessageEnum>[
  _$principalDoesNotBelongToProjectErrorMessageEnum_principalDoesNotBelongToTheGivenProject,
]);

const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum
    _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnum_number403 =
    const PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum._('number403');

PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum
    _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnumValueOf(
        String name) {
  switch (name) {
    case 'number403':
      return _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnum_number403;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>
    _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnumValues = BuiltSet<
        PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>(const <PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>[
  _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnum_number403,
]);

Serializer<PrincipalDoesNotBelongToProjectErrorNameEnum>
    _$principalDoesNotBelongToProjectErrorNameEnumSerializer =
    _$PrincipalDoesNotBelongToProjectErrorNameEnumSerializer();
Serializer<PrincipalDoesNotBelongToProjectErrorMessageEnum>
    _$principalDoesNotBelongToProjectErrorMessageEnumSerializer =
    _$PrincipalDoesNotBelongToProjectErrorMessageEnumSerializer();
Serializer<PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum>
    _$principalDoesNotBelongToProjectErrorHttpStatusCodeEnumSerializer =
    _$PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumSerializer();

class _$PrincipalDoesNotBelongToProjectErrorNameEnumSerializer
    implements
        PrimitiveSerializer<PrincipalDoesNotBelongToProjectErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'principalDoesNotBelongToProjectError':
        'PrincipalDoesNotBelongToProjectError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PrincipalDoesNotBelongToProjectError':
        'principalDoesNotBelongToProjectError',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrincipalDoesNotBelongToProjectErrorNameEnum
  ];
  @override
  final String wireName = 'PrincipalDoesNotBelongToProjectErrorNameEnum';

  @override
  Object serialize(Serializers serializers,
          PrincipalDoesNotBelongToProjectErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalDoesNotBelongToProjectErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalDoesNotBelongToProjectErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrincipalDoesNotBelongToProjectErrorMessageEnumSerializer
    implements
        PrimitiveSerializer<PrincipalDoesNotBelongToProjectErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'principalDoesNotBelongToTheGivenProject':
        'Principal does not belong to the given project',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Principal does not belong to the given project':
        'principalDoesNotBelongToTheGivenProject',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrincipalDoesNotBelongToProjectErrorMessageEnum
  ];
  @override
  final String wireName = 'PrincipalDoesNotBelongToProjectErrorMessageEnum';

  @override
  Object serialize(Serializers serializers,
          PrincipalDoesNotBelongToProjectErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalDoesNotBelongToProjectErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalDoesNotBelongToProjectErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<
            PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number403': 403,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    403: 'number403',
  };

  @override
  final Iterable<Type> types = const <Type>[
    PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName =
      'PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PrincipalDoesNotBelongToProjectError
    extends PrincipalDoesNotBelongToProjectError {
  @override
  final PrincipalDoesNotBelongToProjectErrorNameEnum name;
  @override
  final PrincipalDoesNotBelongToProjectErrorMessageEnum message;
  @override
  final PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$PrincipalDoesNotBelongToProjectError(
          [void Function(PrincipalDoesNotBelongToProjectErrorBuilder)?
              updates]) =>
      (PrincipalDoesNotBelongToProjectErrorBuilder()..update(updates))._build();

  _$PrincipalDoesNotBelongToProjectError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  PrincipalDoesNotBelongToProjectError rebuild(
          void Function(PrincipalDoesNotBelongToProjectErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrincipalDoesNotBelongToProjectErrorBuilder toBuilder() =>
      PrincipalDoesNotBelongToProjectErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrincipalDoesNotBelongToProjectError &&
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
    return (newBuiltValueToStringHelper(r'PrincipalDoesNotBelongToProjectError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class PrincipalDoesNotBelongToProjectErrorBuilder
    implements
        Builder<PrincipalDoesNotBelongToProjectError,
            PrincipalDoesNotBelongToProjectErrorBuilder> {
  _$PrincipalDoesNotBelongToProjectError? _$v;

  PrincipalDoesNotBelongToProjectErrorNameEnum? _name;
  PrincipalDoesNotBelongToProjectErrorNameEnum? get name => _$this._name;
  set name(PrincipalDoesNotBelongToProjectErrorNameEnum? name) =>
      _$this._name = name;

  PrincipalDoesNotBelongToProjectErrorMessageEnum? _message;
  PrincipalDoesNotBelongToProjectErrorMessageEnum? get message =>
      _$this._message;
  set message(PrincipalDoesNotBelongToProjectErrorMessageEnum? message) =>
      _$this._message = message;

  PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum? _httpStatusCode;
  PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          PrincipalDoesNotBelongToProjectErrorHttpStatusCodeEnum?
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

  PrincipalDoesNotBelongToProjectErrorBuilder() {
    PrincipalDoesNotBelongToProjectError._defaults(this);
  }

  PrincipalDoesNotBelongToProjectErrorBuilder get _$this {
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
  void replace(PrincipalDoesNotBelongToProjectError other) {
    _$v = other as _$PrincipalDoesNotBelongToProjectError;
  }

  @override
  void update(
      void Function(PrincipalDoesNotBelongToProjectErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrincipalDoesNotBelongToProjectError build() => _build();

  _$PrincipalDoesNotBelongToProjectError _build() {
    _$PrincipalDoesNotBelongToProjectError _$result;
    try {
      _$result = _$v ??
          _$PrincipalDoesNotBelongToProjectError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'PrincipalDoesNotBelongToProjectError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'PrincipalDoesNotBelongToProjectError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'PrincipalDoesNotBelongToProjectError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'PrincipalDoesNotBelongToProjectError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PrincipalDoesNotBelongToProjectError',
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
