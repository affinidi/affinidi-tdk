// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'missing_holder_did_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MissingHolderDidErrorNameEnum
    _$missingHolderDidErrorNameEnum_missingHolderDidError =
    const MissingHolderDidErrorNameEnum._('missingHolderDidError');

MissingHolderDidErrorNameEnum _$missingHolderDidErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'missingHolderDidError':
      return _$missingHolderDidErrorNameEnum_missingHolderDidError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MissingHolderDidErrorNameEnum>
    _$missingHolderDidErrorNameEnumValues = new BuiltSet<
        MissingHolderDidErrorNameEnum>(const <MissingHolderDidErrorNameEnum>[
  _$missingHolderDidErrorNameEnum_missingHolderDidError,
]);

const MissingHolderDidErrorMessageEnum
    _$missingHolderDidErrorMessageEnum_holderDIDIsRequiredInThisClaimMode =
    const MissingHolderDidErrorMessageEnum._(
        'holderDIDIsRequiredInThisClaimMode');

MissingHolderDidErrorMessageEnum _$missingHolderDidErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'holderDIDIsRequiredInThisClaimMode':
      return _$missingHolderDidErrorMessageEnum_holderDIDIsRequiredInThisClaimMode;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MissingHolderDidErrorMessageEnum>
    _$missingHolderDidErrorMessageEnumValues = new BuiltSet<
        MissingHolderDidErrorMessageEnum>(const <MissingHolderDidErrorMessageEnum>[
  _$missingHolderDidErrorMessageEnum_holderDIDIsRequiredInThisClaimMode,
]);

const MissingHolderDidErrorHttpStatusCodeEnum
    _$missingHolderDidErrorHttpStatusCodeEnum_number400 =
    const MissingHolderDidErrorHttpStatusCodeEnum._('number400');

MissingHolderDidErrorHttpStatusCodeEnum
    _$missingHolderDidErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$missingHolderDidErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MissingHolderDidErrorHttpStatusCodeEnum>
    _$missingHolderDidErrorHttpStatusCodeEnumValues = new BuiltSet<
        MissingHolderDidErrorHttpStatusCodeEnum>(const <MissingHolderDidErrorHttpStatusCodeEnum>[
  _$missingHolderDidErrorHttpStatusCodeEnum_number400,
]);

Serializer<MissingHolderDidErrorNameEnum>
    _$missingHolderDidErrorNameEnumSerializer =
    new _$MissingHolderDidErrorNameEnumSerializer();
Serializer<MissingHolderDidErrorMessageEnum>
    _$missingHolderDidErrorMessageEnumSerializer =
    new _$MissingHolderDidErrorMessageEnumSerializer();
Serializer<MissingHolderDidErrorHttpStatusCodeEnum>
    _$missingHolderDidErrorHttpStatusCodeEnumSerializer =
    new _$MissingHolderDidErrorHttpStatusCodeEnumSerializer();

class _$MissingHolderDidErrorNameEnumSerializer
    implements PrimitiveSerializer<MissingHolderDidErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'missingHolderDidError': 'MissingHolderDidError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MissingHolderDidError': 'missingHolderDidError',
  };

  @override
  final Iterable<Type> types = const <Type>[MissingHolderDidErrorNameEnum];
  @override
  final String wireName = 'MissingHolderDidErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, MissingHolderDidErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MissingHolderDidErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MissingHolderDidErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MissingHolderDidErrorMessageEnumSerializer
    implements PrimitiveSerializer<MissingHolderDidErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'holderDIDIsRequiredInThisClaimMode':
        'holderDID is required in this claimMode',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'holderDID is required in this claimMode':
        'holderDIDIsRequiredInThisClaimMode',
  };

  @override
  final Iterable<Type> types = const <Type>[MissingHolderDidErrorMessageEnum];
  @override
  final String wireName = 'MissingHolderDidErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, MissingHolderDidErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MissingHolderDidErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MissingHolderDidErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MissingHolderDidErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<MissingHolderDidErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    MissingHolderDidErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'MissingHolderDidErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          MissingHolderDidErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MissingHolderDidErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MissingHolderDidErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$MissingHolderDidError extends MissingHolderDidError {
  @override
  final MissingHolderDidErrorNameEnum name;
  @override
  final MissingHolderDidErrorMessageEnum message;
  @override
  final MissingHolderDidErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ActionForbiddenErrorDetailsInner>? details;

  factory _$MissingHolderDidError(
          [void Function(MissingHolderDidErrorBuilder)? updates]) =>
      (new MissingHolderDidErrorBuilder()..update(updates))._build();

  _$MissingHolderDidError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'MissingHolderDidError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'MissingHolderDidError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'MissingHolderDidError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'MissingHolderDidError', 'traceId');
  }

  @override
  MissingHolderDidError rebuild(
          void Function(MissingHolderDidErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MissingHolderDidErrorBuilder toBuilder() =>
      new MissingHolderDidErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MissingHolderDidError &&
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
    return (newBuiltValueToStringHelper(r'MissingHolderDidError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class MissingHolderDidErrorBuilder
    implements Builder<MissingHolderDidError, MissingHolderDidErrorBuilder> {
  _$MissingHolderDidError? _$v;

  MissingHolderDidErrorNameEnum? _name;
  MissingHolderDidErrorNameEnum? get name => _$this._name;
  set name(MissingHolderDidErrorNameEnum? name) => _$this._name = name;

  MissingHolderDidErrorMessageEnum? _message;
  MissingHolderDidErrorMessageEnum? get message => _$this._message;
  set message(MissingHolderDidErrorMessageEnum? message) =>
      _$this._message = message;

  MissingHolderDidErrorHttpStatusCodeEnum? _httpStatusCode;
  MissingHolderDidErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(MissingHolderDidErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ActionForbiddenErrorDetailsInner>? _details;
  ListBuilder<ActionForbiddenErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ActionForbiddenErrorDetailsInner>();
  set details(ListBuilder<ActionForbiddenErrorDetailsInner>? details) =>
      _$this._details = details;

  MissingHolderDidErrorBuilder() {
    MissingHolderDidError._defaults(this);
  }

  MissingHolderDidErrorBuilder get _$this {
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
  void replace(MissingHolderDidError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MissingHolderDidError;
  }

  @override
  void update(void Function(MissingHolderDidErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MissingHolderDidError build() => _build();

  _$MissingHolderDidError _build() {
    _$MissingHolderDidError _$result;
    try {
      _$result = _$v ??
          new _$MissingHolderDidError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'MissingHolderDidError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'MissingHolderDidError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'MissingHolderDidError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'MissingHolderDidError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MissingHolderDidError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
