// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_not_found_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityNotFoundErrorNameEnum
    _$entityNotFoundErrorNameEnum_entityNotFoundError =
    const EntityNotFoundErrorNameEnum._('entityNotFoundError');

EntityNotFoundErrorNameEnum _$entityNotFoundErrorNameEnumValueOf(String name) {
  switch (name) {
    case 'entityNotFoundError':
      return _$entityNotFoundErrorNameEnum_entityNotFoundError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EntityNotFoundErrorNameEnum>
    _$entityNotFoundErrorNameEnumValues = new BuiltSet<
        EntityNotFoundErrorNameEnum>(const <EntityNotFoundErrorNameEnum>[
  _$entityNotFoundErrorNameEnum_entityNotFoundError,
]);

const EntityNotFoundErrorMessageEnum
    _$entityNotFoundErrorMessageEnum_entityNotFound =
    const EntityNotFoundErrorMessageEnum._('entityNotFound');

EntityNotFoundErrorMessageEnum _$entityNotFoundErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'entityNotFound':
      return _$entityNotFoundErrorMessageEnum_entityNotFound;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EntityNotFoundErrorMessageEnum>
    _$entityNotFoundErrorMessageEnumValues = new BuiltSet<
        EntityNotFoundErrorMessageEnum>(const <EntityNotFoundErrorMessageEnum>[
  _$entityNotFoundErrorMessageEnum_entityNotFound,
]);

const EntityNotFoundErrorHttpStatusCodeEnum
    _$entityNotFoundErrorHttpStatusCodeEnum_number404 =
    const EntityNotFoundErrorHttpStatusCodeEnum._('number404');

EntityNotFoundErrorHttpStatusCodeEnum
    _$entityNotFoundErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number404':
      return _$entityNotFoundErrorHttpStatusCodeEnum_number404;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<EntityNotFoundErrorHttpStatusCodeEnum>
    _$entityNotFoundErrorHttpStatusCodeEnumValues = new BuiltSet<
        EntityNotFoundErrorHttpStatusCodeEnum>(const <EntityNotFoundErrorHttpStatusCodeEnum>[
  _$entityNotFoundErrorHttpStatusCodeEnum_number404,
]);

Serializer<EntityNotFoundErrorNameEnum>
    _$entityNotFoundErrorNameEnumSerializer =
    new _$EntityNotFoundErrorNameEnumSerializer();
Serializer<EntityNotFoundErrorMessageEnum>
    _$entityNotFoundErrorMessageEnumSerializer =
    new _$EntityNotFoundErrorMessageEnumSerializer();
Serializer<EntityNotFoundErrorHttpStatusCodeEnum>
    _$entityNotFoundErrorHttpStatusCodeEnumSerializer =
    new _$EntityNotFoundErrorHttpStatusCodeEnumSerializer();

class _$EntityNotFoundErrorNameEnumSerializer
    implements PrimitiveSerializer<EntityNotFoundErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'entityNotFoundError': 'EntityNotFoundError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EntityNotFoundError': 'entityNotFoundError',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityNotFoundErrorNameEnum];
  @override
  final String wireName = 'EntityNotFoundErrorNameEnum';

  @override
  Object serialize(Serializers serializers, EntityNotFoundErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityNotFoundErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityNotFoundErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityNotFoundErrorMessageEnumSerializer
    implements PrimitiveSerializer<EntityNotFoundErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'entityNotFound': 'Entity not found',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Entity not found': 'entityNotFound',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityNotFoundErrorMessageEnum];
  @override
  final String wireName = 'EntityNotFoundErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, EntityNotFoundErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityNotFoundErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityNotFoundErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityNotFoundErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<EntityNotFoundErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number404': 404,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    404: 'number404',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EntityNotFoundErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'EntityNotFoundErrorHttpStatusCodeEnum';

  @override
  Object serialize(
          Serializers serializers, EntityNotFoundErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityNotFoundErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityNotFoundErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityNotFoundError extends EntityNotFoundError {
  @override
  final EntityNotFoundErrorNameEnum name;
  @override
  final EntityNotFoundErrorMessageEnum message;
  @override
  final EntityNotFoundErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<ServiceErrorResponseDetailsInner>? details;

  factory _$EntityNotFoundError(
          [void Function(EntityNotFoundErrorBuilder)? updates]) =>
      (new EntityNotFoundErrorBuilder()..update(updates))._build();

  _$EntityNotFoundError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'EntityNotFoundError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'EntityNotFoundError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'EntityNotFoundError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'EntityNotFoundError', 'traceId');
  }

  @override
  EntityNotFoundError rebuild(
          void Function(EntityNotFoundErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityNotFoundErrorBuilder toBuilder() =>
      new EntityNotFoundErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityNotFoundError &&
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
    return (newBuiltValueToStringHelper(r'EntityNotFoundError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class EntityNotFoundErrorBuilder
    implements Builder<EntityNotFoundError, EntityNotFoundErrorBuilder> {
  _$EntityNotFoundError? _$v;

  EntityNotFoundErrorNameEnum? _name;
  EntityNotFoundErrorNameEnum? get name => _$this._name;
  set name(EntityNotFoundErrorNameEnum? name) => _$this._name = name;

  EntityNotFoundErrorMessageEnum? _message;
  EntityNotFoundErrorMessageEnum? get message => _$this._message;
  set message(EntityNotFoundErrorMessageEnum? message) =>
      _$this._message = message;

  EntityNotFoundErrorHttpStatusCodeEnum? _httpStatusCode;
  EntityNotFoundErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(EntityNotFoundErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<ServiceErrorResponseDetailsInner>? _details;
  ListBuilder<ServiceErrorResponseDetailsInner> get details =>
      _$this._details ??= new ListBuilder<ServiceErrorResponseDetailsInner>();
  set details(ListBuilder<ServiceErrorResponseDetailsInner>? details) =>
      _$this._details = details;

  EntityNotFoundErrorBuilder() {
    EntityNotFoundError._defaults(this);
  }

  EntityNotFoundErrorBuilder get _$this {
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
  void replace(EntityNotFoundError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EntityNotFoundError;
  }

  @override
  void update(void Function(EntityNotFoundErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityNotFoundError build() => _build();

  _$EntityNotFoundError _build() {
    _$EntityNotFoundError _$result;
    try {
      _$result = _$v ??
          new _$EntityNotFoundError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'EntityNotFoundError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'EntityNotFoundError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'EntityNotFoundError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'EntityNotFoundError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EntityNotFoundError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
