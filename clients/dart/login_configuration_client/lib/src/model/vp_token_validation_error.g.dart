// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vp_token_validation_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VPTokenValidationErrorNameEnum
    _$vPTokenValidationErrorNameEnum_vPTokenValidationError =
    const VPTokenValidationErrorNameEnum._('vPTokenValidationError');

VPTokenValidationErrorNameEnum _$vPTokenValidationErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'vPTokenValidationError':
      return _$vPTokenValidationErrorNameEnum_vPTokenValidationError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VPTokenValidationErrorNameEnum>
    _$vPTokenValidationErrorNameEnumValues = BuiltSet<
        VPTokenValidationErrorNameEnum>(const <VPTokenValidationErrorNameEnum>[
  _$vPTokenValidationErrorNameEnum_vPTokenValidationError,
]);

const VPTokenValidationErrorMessageEnum
    _$vPTokenValidationErrorMessageEnum_vPTokenValidationEndedWithAnError =
    const VPTokenValidationErrorMessageEnum._(
        'vPTokenValidationEndedWithAnError');

VPTokenValidationErrorMessageEnum _$vPTokenValidationErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'vPTokenValidationEndedWithAnError':
      return _$vPTokenValidationErrorMessageEnum_vPTokenValidationEndedWithAnError;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VPTokenValidationErrorMessageEnum>
    _$vPTokenValidationErrorMessageEnumValues = BuiltSet<
        VPTokenValidationErrorMessageEnum>(const <VPTokenValidationErrorMessageEnum>[
  _$vPTokenValidationErrorMessageEnum_vPTokenValidationEndedWithAnError,
]);

const VPTokenValidationErrorHttpStatusCodeEnum
    _$vPTokenValidationErrorHttpStatusCodeEnum_number400 =
    const VPTokenValidationErrorHttpStatusCodeEnum._('number400');

VPTokenValidationErrorHttpStatusCodeEnum
    _$vPTokenValidationErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$vPTokenValidationErrorHttpStatusCodeEnum_number400;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VPTokenValidationErrorHttpStatusCodeEnum>
    _$vPTokenValidationErrorHttpStatusCodeEnumValues = BuiltSet<
        VPTokenValidationErrorHttpStatusCodeEnum>(const <VPTokenValidationErrorHttpStatusCodeEnum>[
  _$vPTokenValidationErrorHttpStatusCodeEnum_number400,
]);

Serializer<VPTokenValidationErrorNameEnum>
    _$vPTokenValidationErrorNameEnumSerializer =
    _$VPTokenValidationErrorNameEnumSerializer();
Serializer<VPTokenValidationErrorMessageEnum>
    _$vPTokenValidationErrorMessageEnumSerializer =
    _$VPTokenValidationErrorMessageEnumSerializer();
Serializer<VPTokenValidationErrorHttpStatusCodeEnum>
    _$vPTokenValidationErrorHttpStatusCodeEnumSerializer =
    _$VPTokenValidationErrorHttpStatusCodeEnumSerializer();

class _$VPTokenValidationErrorNameEnumSerializer
    implements PrimitiveSerializer<VPTokenValidationErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vPTokenValidationError': 'VPTokenValidationError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VPTokenValidationError': 'vPTokenValidationError',
  };

  @override
  final Iterable<Type> types = const <Type>[VPTokenValidationErrorNameEnum];
  @override
  final String wireName = 'VPTokenValidationErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, VPTokenValidationErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VPTokenValidationErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VPTokenValidationErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VPTokenValidationErrorMessageEnumSerializer
    implements PrimitiveSerializer<VPTokenValidationErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'vPTokenValidationEndedWithAnError':
        'VP token validation ended with an error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VP token validation ended with an error':
        'vPTokenValidationEndedWithAnError',
  };

  @override
  final Iterable<Type> types = const <Type>[VPTokenValidationErrorMessageEnum];
  @override
  final String wireName = 'VPTokenValidationErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, VPTokenValidationErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VPTokenValidationErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VPTokenValidationErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VPTokenValidationErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<VPTokenValidationErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    VPTokenValidationErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'VPTokenValidationErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          VPTokenValidationErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VPTokenValidationErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VPTokenValidationErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VPTokenValidationError extends VPTokenValidationError {
  @override
  final VPTokenValidationErrorNameEnum name;
  @override
  final VPTokenValidationErrorMessageEnum message;
  @override
  final VPTokenValidationErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$VPTokenValidationError(
          [void Function(VPTokenValidationErrorBuilder)? updates]) =>
      (VPTokenValidationErrorBuilder()..update(updates))._build();

  _$VPTokenValidationError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._();
  @override
  VPTokenValidationError rebuild(
          void Function(VPTokenValidationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VPTokenValidationErrorBuilder toBuilder() =>
      VPTokenValidationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VPTokenValidationError &&
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
    return (newBuiltValueToStringHelper(r'VPTokenValidationError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class VPTokenValidationErrorBuilder
    implements Builder<VPTokenValidationError, VPTokenValidationErrorBuilder> {
  _$VPTokenValidationError? _$v;

  VPTokenValidationErrorNameEnum? _name;
  VPTokenValidationErrorNameEnum? get name => _$this._name;
  set name(VPTokenValidationErrorNameEnum? name) => _$this._name = name;

  VPTokenValidationErrorMessageEnum? _message;
  VPTokenValidationErrorMessageEnum? get message => _$this._message;
  set message(VPTokenValidationErrorMessageEnum? message) =>
      _$this._message = message;

  VPTokenValidationErrorHttpStatusCodeEnum? _httpStatusCode;
  VPTokenValidationErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          VPTokenValidationErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  VPTokenValidationErrorBuilder() {
    VPTokenValidationError._defaults(this);
  }

  VPTokenValidationErrorBuilder get _$this {
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
  void replace(VPTokenValidationError other) {
    _$v = other as _$VPTokenValidationError;
  }

  @override
  void update(void Function(VPTokenValidationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VPTokenValidationError build() => _build();

  _$VPTokenValidationError _build() {
    _$VPTokenValidationError _$result;
    try {
      _$result = _$v ??
          _$VPTokenValidationError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'VPTokenValidationError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'VPTokenValidationError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'VPTokenValidationError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'VPTokenValidationError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VPTokenValidationError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
