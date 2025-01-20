// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_status_forbidden_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChangeStatusForbiddenErrorNameEnum
    _$changeStatusForbiddenErrorNameEnum_changeStatusForbiddenError =
    const ChangeStatusForbiddenErrorNameEnum._('changeStatusForbiddenError');

ChangeStatusForbiddenErrorNameEnum _$changeStatusForbiddenErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'changeStatusForbiddenError':
      return _$changeStatusForbiddenErrorNameEnum_changeStatusForbiddenError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChangeStatusForbiddenErrorNameEnum>
    _$changeStatusForbiddenErrorNameEnumValues = new BuiltSet<
        ChangeStatusForbiddenErrorNameEnum>(const <ChangeStatusForbiddenErrorNameEnum>[
  _$changeStatusForbiddenErrorNameEnum_changeStatusForbiddenError,
]);

const ChangeStatusForbiddenErrorMessageEnum
    _$changeStatusForbiddenErrorMessageEnum_relatedVCStatusCannotBeChanged =
    const ChangeStatusForbiddenErrorMessageEnum._(
        'relatedVCStatusCannotBeChanged');

ChangeStatusForbiddenErrorMessageEnum
    _$changeStatusForbiddenErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'relatedVCStatusCannotBeChanged':
      return _$changeStatusForbiddenErrorMessageEnum_relatedVCStatusCannotBeChanged;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChangeStatusForbiddenErrorMessageEnum>
    _$changeStatusForbiddenErrorMessageEnumValues = new BuiltSet<
        ChangeStatusForbiddenErrorMessageEnum>(const <ChangeStatusForbiddenErrorMessageEnum>[
  _$changeStatusForbiddenErrorMessageEnum_relatedVCStatusCannotBeChanged,
]);

const ChangeStatusForbiddenErrorHttpStatusCodeEnum
    _$changeStatusForbiddenErrorHttpStatusCodeEnum_number400 =
    const ChangeStatusForbiddenErrorHttpStatusCodeEnum._('number400');

ChangeStatusForbiddenErrorHttpStatusCodeEnum
    _$changeStatusForbiddenErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$changeStatusForbiddenErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ChangeStatusForbiddenErrorHttpStatusCodeEnum>
    _$changeStatusForbiddenErrorHttpStatusCodeEnumValues = new BuiltSet<
        ChangeStatusForbiddenErrorHttpStatusCodeEnum>(const <ChangeStatusForbiddenErrorHttpStatusCodeEnum>[
  _$changeStatusForbiddenErrorHttpStatusCodeEnum_number400,
]);

Serializer<ChangeStatusForbiddenErrorNameEnum>
    _$changeStatusForbiddenErrorNameEnumSerializer =
    new _$ChangeStatusForbiddenErrorNameEnumSerializer();
Serializer<ChangeStatusForbiddenErrorMessageEnum>
    _$changeStatusForbiddenErrorMessageEnumSerializer =
    new _$ChangeStatusForbiddenErrorMessageEnumSerializer();
Serializer<ChangeStatusForbiddenErrorHttpStatusCodeEnum>
    _$changeStatusForbiddenErrorHttpStatusCodeEnumSerializer =
    new _$ChangeStatusForbiddenErrorHttpStatusCodeEnumSerializer();

class _$ChangeStatusForbiddenErrorNameEnumSerializer
    implements PrimitiveSerializer<ChangeStatusForbiddenErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'changeStatusForbiddenError': 'ChangeStatusForbiddenError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ChangeStatusForbiddenError': 'changeStatusForbiddenError',
  };

  @override
  final Iterable<Type> types = const <Type>[ChangeStatusForbiddenErrorNameEnum];
  @override
  final String wireName = 'ChangeStatusForbiddenErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, ChangeStatusForbiddenErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeStatusForbiddenErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeStatusForbiddenErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeStatusForbiddenErrorMessageEnumSerializer
    implements PrimitiveSerializer<ChangeStatusForbiddenErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'relatedVCStatusCannotBeChanged': 'Related VC status cannot be changed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Related VC status cannot be changed': 'relatedVCStatusCannotBeChanged',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChangeStatusForbiddenErrorMessageEnum
  ];
  @override
  final String wireName = 'ChangeStatusForbiddenErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, ChangeStatusForbiddenErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeStatusForbiddenErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeStatusForbiddenErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeStatusForbiddenErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<ChangeStatusForbiddenErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ChangeStatusForbiddenErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'ChangeStatusForbiddenErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ChangeStatusForbiddenErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ChangeStatusForbiddenErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ChangeStatusForbiddenErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ChangeStatusForbiddenError extends ChangeStatusForbiddenError {
  @override
  final ChangeStatusForbiddenErrorNameEnum name;
  @override
  final ChangeStatusForbiddenErrorMessageEnum message;
  @override
  final ChangeStatusForbiddenErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$ChangeStatusForbiddenError(
          [void Function(ChangeStatusForbiddenErrorBuilder)? updates]) =>
      (new ChangeStatusForbiddenErrorBuilder()..update(updates))._build();

  _$ChangeStatusForbiddenError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ChangeStatusForbiddenError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ChangeStatusForbiddenError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'ChangeStatusForbiddenError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'ChangeStatusForbiddenError', 'traceId');
  }

  @override
  ChangeStatusForbiddenError rebuild(
          void Function(ChangeStatusForbiddenErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeStatusForbiddenErrorBuilder toBuilder() =>
      new ChangeStatusForbiddenErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeStatusForbiddenError &&
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
    return (newBuiltValueToStringHelper(r'ChangeStatusForbiddenError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class ChangeStatusForbiddenErrorBuilder
    implements
        Builder<ChangeStatusForbiddenError, ChangeStatusForbiddenErrorBuilder> {
  _$ChangeStatusForbiddenError? _$v;

  ChangeStatusForbiddenErrorNameEnum? _name;
  ChangeStatusForbiddenErrorNameEnum? get name => _$this._name;
  set name(ChangeStatusForbiddenErrorNameEnum? name) => _$this._name = name;

  ChangeStatusForbiddenErrorMessageEnum? _message;
  ChangeStatusForbiddenErrorMessageEnum? get message => _$this._message;
  set message(ChangeStatusForbiddenErrorMessageEnum? message) =>
      _$this._message = message;

  ChangeStatusForbiddenErrorHttpStatusCodeEnum? _httpStatusCode;
  ChangeStatusForbiddenErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          ChangeStatusForbiddenErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  ChangeStatusForbiddenErrorBuilder() {
    ChangeStatusForbiddenError._defaults(this);
  }

  ChangeStatusForbiddenErrorBuilder get _$this {
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
  void replace(ChangeStatusForbiddenError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeStatusForbiddenError;
  }

  @override
  void update(void Function(ChangeStatusForbiddenErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeStatusForbiddenError build() => _build();

  _$ChangeStatusForbiddenError _build() {
    _$ChangeStatusForbiddenError _$result;
    try {
      _$result = _$v ??
          new _$ChangeStatusForbiddenError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ChangeStatusForbiddenError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ChangeStatusForbiddenError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'ChangeStatusForbiddenError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'ChangeStatusForbiddenError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChangeStatusForbiddenError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
