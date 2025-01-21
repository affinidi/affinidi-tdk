// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_hydra_network_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateHydraNetworkErrorNameEnum
    _$createHydraNetworkErrorNameEnum_createHydraNetworkError =
    const CreateHydraNetworkErrorNameEnum._('createHydraNetworkError');

CreateHydraNetworkErrorNameEnum _$createHydraNetworkErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'createHydraNetworkError':
      return _$createHydraNetworkErrorNameEnum_createHydraNetworkError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateHydraNetworkErrorNameEnum>
    _$createHydraNetworkErrorNameEnumValues = new BuiltSet<
        CreateHydraNetworkErrorNameEnum>(const <CreateHydraNetworkErrorNameEnum>[
  _$createHydraNetworkErrorNameEnum_createHydraNetworkError,
]);

const CreateHydraNetworkErrorMessageEnum
    _$createHydraNetworkErrorMessageEnum_createHydraNetworkError =
    const CreateHydraNetworkErrorMessageEnum._('createHydraNetworkError');

CreateHydraNetworkErrorMessageEnum _$createHydraNetworkErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'createHydraNetworkError':
      return _$createHydraNetworkErrorMessageEnum_createHydraNetworkError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateHydraNetworkErrorMessageEnum>
    _$createHydraNetworkErrorMessageEnumValues = new BuiltSet<
        CreateHydraNetworkErrorMessageEnum>(const <CreateHydraNetworkErrorMessageEnum>[
  _$createHydraNetworkErrorMessageEnum_createHydraNetworkError,
]);

const CreateHydraNetworkErrorHttpStatusCodeEnum
    _$createHydraNetworkErrorHttpStatusCodeEnum_number400 =
    const CreateHydraNetworkErrorHttpStatusCodeEnum._('number400');

CreateHydraNetworkErrorHttpStatusCodeEnum
    _$createHydraNetworkErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number400':
      return _$createHydraNetworkErrorHttpStatusCodeEnum_number400;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CreateHydraNetworkErrorHttpStatusCodeEnum>
    _$createHydraNetworkErrorHttpStatusCodeEnumValues = new BuiltSet<
        CreateHydraNetworkErrorHttpStatusCodeEnum>(const <CreateHydraNetworkErrorHttpStatusCodeEnum>[
  _$createHydraNetworkErrorHttpStatusCodeEnum_number400,
]);

Serializer<CreateHydraNetworkErrorNameEnum>
    _$createHydraNetworkErrorNameEnumSerializer =
    new _$CreateHydraNetworkErrorNameEnumSerializer();
Serializer<CreateHydraNetworkErrorMessageEnum>
    _$createHydraNetworkErrorMessageEnumSerializer =
    new _$CreateHydraNetworkErrorMessageEnumSerializer();
Serializer<CreateHydraNetworkErrorHttpStatusCodeEnum>
    _$createHydraNetworkErrorHttpStatusCodeEnumSerializer =
    new _$CreateHydraNetworkErrorHttpStatusCodeEnumSerializer();

class _$CreateHydraNetworkErrorNameEnumSerializer
    implements PrimitiveSerializer<CreateHydraNetworkErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createHydraNetworkError': 'CreateHydraNetworkError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CreateHydraNetworkError': 'createHydraNetworkError',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateHydraNetworkErrorNameEnum];
  @override
  final String wireName = 'CreateHydraNetworkErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, CreateHydraNetworkErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateHydraNetworkErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateHydraNetworkErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateHydraNetworkErrorMessageEnumSerializer
    implements PrimitiveSerializer<CreateHydraNetworkErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'createHydraNetworkError': 'CreateHydraNetworkError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CreateHydraNetworkError': 'createHydraNetworkError',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateHydraNetworkErrorMessageEnum];
  @override
  final String wireName = 'CreateHydraNetworkErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, CreateHydraNetworkErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateHydraNetworkErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateHydraNetworkErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateHydraNetworkErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<CreateHydraNetworkErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number400': 400,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    400: 'number400',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CreateHydraNetworkErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'CreateHydraNetworkErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          CreateHydraNetworkErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateHydraNetworkErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateHydraNetworkErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateHydraNetworkError extends CreateHydraNetworkError {
  @override
  final CreateHydraNetworkErrorNameEnum name;
  @override
  final CreateHydraNetworkErrorMessageEnum message;
  @override
  final CreateHydraNetworkErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$CreateHydraNetworkError(
          [void Function(CreateHydraNetworkErrorBuilder)? updates]) =>
      (new CreateHydraNetworkErrorBuilder()..update(updates))._build();

  _$CreateHydraNetworkError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateHydraNetworkError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CreateHydraNetworkError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'CreateHydraNetworkError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'CreateHydraNetworkError', 'traceId');
  }

  @override
  CreateHydraNetworkError rebuild(
          void Function(CreateHydraNetworkErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateHydraNetworkErrorBuilder toBuilder() =>
      new CreateHydraNetworkErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateHydraNetworkError &&
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
    return (newBuiltValueToStringHelper(r'CreateHydraNetworkError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class CreateHydraNetworkErrorBuilder
    implements
        Builder<CreateHydraNetworkError, CreateHydraNetworkErrorBuilder> {
  _$CreateHydraNetworkError? _$v;

  CreateHydraNetworkErrorNameEnum? _name;
  CreateHydraNetworkErrorNameEnum? get name => _$this._name;
  set name(CreateHydraNetworkErrorNameEnum? name) => _$this._name = name;

  CreateHydraNetworkErrorMessageEnum? _message;
  CreateHydraNetworkErrorMessageEnum? get message => _$this._message;
  set message(CreateHydraNetworkErrorMessageEnum? message) =>
      _$this._message = message;

  CreateHydraNetworkErrorHttpStatusCodeEnum? _httpStatusCode;
  CreateHydraNetworkErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          CreateHydraNetworkErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  CreateHydraNetworkErrorBuilder() {
    CreateHydraNetworkError._defaults(this);
  }

  CreateHydraNetworkErrorBuilder get _$this {
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
  void replace(CreateHydraNetworkError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateHydraNetworkError;
  }

  @override
  void update(void Function(CreateHydraNetworkErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateHydraNetworkError build() => _build();

  _$CreateHydraNetworkError _build() {
    _$CreateHydraNetworkError _$result;
    try {
      _$result = _$v ??
          new _$CreateHydraNetworkError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'CreateHydraNetworkError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'CreateHydraNetworkError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'CreateHydraNetworkError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'CreateHydraNetworkError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateHydraNetworkError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
