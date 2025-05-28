// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vc_claimed_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VcClaimedErrorNameEnum _$vcClaimedErrorNameEnum_vcClaimedError =
    const VcClaimedErrorNameEnum._('vcClaimedError');

VcClaimedErrorNameEnum _$vcClaimedErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'vcClaimedError':
      return _$vcClaimedErrorNameEnum_vcClaimedError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VcClaimedErrorNameEnum> _$vcClaimedErrorNameEnumValues =
    BuiltSet<VcClaimedErrorNameEnum>(const <VcClaimedErrorNameEnum>[
  _$vcClaimedErrorNameEnum_vcClaimedError,
]);

const VcClaimedErrorMessageEnum
    _$vcClaimedErrorMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser =
    const VcClaimedErrorMessageEnum._(
        'theRequestedVCHasAlreadyBeenClaimedByTheUser');

VcClaimedErrorMessageEnum _$vcClaimedErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'theRequestedVCHasAlreadyBeenClaimedByTheUser':
      return _$vcClaimedErrorMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VcClaimedErrorMessageEnum> _$vcClaimedErrorMessageEnumValues =
    BuiltSet<VcClaimedErrorMessageEnum>(const <VcClaimedErrorMessageEnum>[
  _$vcClaimedErrorMessageEnum_theRequestedVCHasAlreadyBeenClaimedByTheUser,
]);

const VcClaimedErrorHttpStatusCodeEnum
    _$vcClaimedErrorHttpStatusCodeEnum_number400 =
    const VcClaimedErrorHttpStatusCodeEnum._('number400');

VcClaimedErrorHttpStatusCodeEnum _$vcClaimedErrorHttpStatusCodeEnumValueOf(
    String name) {
  switch (name) {
    case 'number400':
      return _$vcClaimedErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VcClaimedErrorHttpStatusCodeEnum>
    _$vcClaimedErrorHttpStatusCodeEnumValues = BuiltSet<
        VcClaimedErrorHttpStatusCodeEnum>(const <VcClaimedErrorHttpStatusCodeEnum>[
  _$vcClaimedErrorHttpStatusCodeEnum_number400,
]);

Serializer<VcClaimedErrorNameEnum> _$vcClaimedErrorNameEnumSerializer =
    _$VcClaimedErrorNameEnumSerializer();
Serializer<VcClaimedErrorMessageEnum> _$vcClaimedErrorMessageEnumSerializer =
    _$VcClaimedErrorMessageEnumSerializer();
Serializer<VcClaimedErrorHttpStatusCodeEnum>
    _$vcClaimedErrorHttpStatusCodeEnumSerializer =
    _$VcClaimedErrorHttpStatusCodeEnumSerializer();

class _$VcClaimedErrorNameEnumSerializer
    implements PrimitiveSerializer<VcClaimedErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vcClaimedError': 'VcClaimedError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VcClaimedError': 'vcClaimedError',
  };

  @override
  final Iterable<Type> types = const <Type>[VcClaimedErrorNameEnum];
  @override
  final String wireName = 'VcClaimedErrorNameEnum';

  @override
  Object serialize(Serializers serializers, VcClaimedErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VcClaimedErrorNameEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VcClaimedErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VcClaimedErrorMessageEnumSerializer
    implements PrimitiveSerializer<VcClaimedErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'theRequestedVCHasAlreadyBeenClaimedByTheUser':
        'The requested VC has already been claimed by the user',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'The requested VC has already been claimed by the user':
        'theRequestedVCHasAlreadyBeenClaimedByTheUser',
  };

  @override
  final Iterable<Type> types = const <Type>[VcClaimedErrorMessageEnum];
  @override
  final String wireName = 'VcClaimedErrorMessageEnum';

  @override
  Object serialize(Serializers serializers, VcClaimedErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VcClaimedErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VcClaimedErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VcClaimedErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<VcClaimedErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[VcClaimedErrorHttpStatusCodeEnum];
  @override
  final String wireName = 'VcClaimedErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, VcClaimedErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VcClaimedErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VcClaimedErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VcClaimedError extends VcClaimedError {
  @override
  final VcClaimedErrorNameEnum name;
  @override
  final VcClaimedErrorMessageEnum message;
  @override
  final VcClaimedErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$VcClaimedError([void Function(VcClaimedErrorBuilder)? updates]) =>
      (VcClaimedErrorBuilder()..update(updates))._build();

  _$VcClaimedError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  VcClaimedError rebuild(void Function(VcClaimedErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VcClaimedErrorBuilder toBuilder() => VcClaimedErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VcClaimedError &&
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
    return (newBuiltValueToStringHelper(r'VcClaimedError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class VcClaimedErrorBuilder
    implements Builder<VcClaimedError, VcClaimedErrorBuilder> {
  _$VcClaimedError? _$v;

  VcClaimedErrorNameEnum? _name;
  VcClaimedErrorNameEnum? get name => _$this._name;
  set name(VcClaimedErrorNameEnum? name) => _$this._name = name;

  VcClaimedErrorMessageEnum? _message;
  VcClaimedErrorMessageEnum? get message => _$this._message;
  set message(VcClaimedErrorMessageEnum? message) => _$this._message = message;

  VcClaimedErrorHttpStatusCodeEnum? _httpStatusCode;
  VcClaimedErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(VcClaimedErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  VcClaimedErrorBuilder() {
    VcClaimedError._defaults(this);
  }

  VcClaimedErrorBuilder get _$this {
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
  void replace(VcClaimedError other) {
    _$v = other as _$VcClaimedError;
  }

  @override
  void update(void Function(VcClaimedErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VcClaimedError build() => _build();

  _$VcClaimedError _build() {
    _$VcClaimedError _$result;
    try {
      _$result = _$v ??
          _$VcClaimedError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'VcClaimedError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'VcClaimedError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'VcClaimedError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'VcClaimedError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VcClaimedError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
