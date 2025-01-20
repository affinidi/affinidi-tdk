// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_creation_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceCreationErrorNameEnum
    _$resourceCreationErrorNameEnum_resourceCreationError =
    const ResourceCreationErrorNameEnum._('resourceCreationError');

ResourceCreationErrorNameEnum _$resourceCreationErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'resourceCreationError':
      return _$resourceCreationErrorNameEnum_resourceCreationError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceCreationErrorNameEnum>
    _$resourceCreationErrorNameEnumValues = new BuiltSet<
        ResourceCreationErrorNameEnum>(const <ResourceCreationErrorNameEnum>[
  _$resourceCreationErrorNameEnum_resourceCreationError,
]);

const ResourceCreationErrorMessageEnum
    _$resourceCreationErrorMessageEnum_failedToCreateResourcesPeriod =
    const ResourceCreationErrorMessageEnum._('failedToCreateResourcesPeriod');

ResourceCreationErrorMessageEnum _$resourceCreationErrorMessageEnumValueOf(
    String name) {
  switch (name) {
    case 'failedToCreateResourcesPeriod':
      return _$resourceCreationErrorMessageEnum_failedToCreateResourcesPeriod;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceCreationErrorMessageEnum>
    _$resourceCreationErrorMessageEnumValues = new BuiltSet<
        ResourceCreationErrorMessageEnum>(const <ResourceCreationErrorMessageEnum>[
  _$resourceCreationErrorMessageEnum_failedToCreateResourcesPeriod,
]);

const ResourceCreationErrorHttpStatusCodeEnum
    _$resourceCreationErrorHttpStatusCodeEnum_number424 =
    const ResourceCreationErrorHttpStatusCodeEnum._('number424');

ResourceCreationErrorHttpStatusCodeEnum
    _$resourceCreationErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number424':
      return _$resourceCreationErrorHttpStatusCodeEnum_number424;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceCreationErrorHttpStatusCodeEnum>
    _$resourceCreationErrorHttpStatusCodeEnumValues = new BuiltSet<
        ResourceCreationErrorHttpStatusCodeEnum>(const <ResourceCreationErrorHttpStatusCodeEnum>[
  _$resourceCreationErrorHttpStatusCodeEnum_number424,
]);

Serializer<ResourceCreationErrorNameEnum>
    _$resourceCreationErrorNameEnumSerializer =
    new _$ResourceCreationErrorNameEnumSerializer();
Serializer<ResourceCreationErrorMessageEnum>
    _$resourceCreationErrorMessageEnumSerializer =
    new _$ResourceCreationErrorMessageEnumSerializer();
Serializer<ResourceCreationErrorHttpStatusCodeEnum>
    _$resourceCreationErrorHttpStatusCodeEnumSerializer =
    new _$ResourceCreationErrorHttpStatusCodeEnumSerializer();

class _$ResourceCreationErrorNameEnumSerializer
    implements PrimitiveSerializer<ResourceCreationErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'resourceCreationError': 'ResourceCreationError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ResourceCreationError': 'resourceCreationError',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceCreationErrorNameEnum];
  @override
  final String wireName = 'ResourceCreationErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, ResourceCreationErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceCreationErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceCreationErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResourceCreationErrorMessageEnumSerializer
    implements PrimitiveSerializer<ResourceCreationErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'failedToCreateResourcesPeriod': 'Failed to create resources.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Failed to create resources.': 'failedToCreateResourcesPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceCreationErrorMessageEnum];
  @override
  final String wireName = 'ResourceCreationErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, ResourceCreationErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceCreationErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceCreationErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResourceCreationErrorHttpStatusCodeEnumSerializer
    implements PrimitiveSerializer<ResourceCreationErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number424': 424,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    424: 'number424',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ResourceCreationErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'ResourceCreationErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ResourceCreationErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceCreationErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceCreationErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResourceCreationError extends ResourceCreationError {
  @override
  final ResourceCreationErrorNameEnum name;
  @override
  final ResourceCreationErrorMessageEnum message;
  @override
  final ResourceCreationErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$ResourceCreationError(
          [void Function(ResourceCreationErrorBuilder)? updates]) =>
      (new ResourceCreationErrorBuilder()..update(updates))._build();

  _$ResourceCreationError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ResourceCreationError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ResourceCreationError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'ResourceCreationError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'ResourceCreationError', 'traceId');
  }

  @override
  ResourceCreationError rebuild(
          void Function(ResourceCreationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceCreationErrorBuilder toBuilder() =>
      new ResourceCreationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceCreationError &&
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
    return (newBuiltValueToStringHelper(r'ResourceCreationError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class ResourceCreationErrorBuilder
    implements Builder<ResourceCreationError, ResourceCreationErrorBuilder> {
  _$ResourceCreationError? _$v;

  ResourceCreationErrorNameEnum? _name;
  ResourceCreationErrorNameEnum? get name => _$this._name;
  set name(ResourceCreationErrorNameEnum? name) => _$this._name = name;

  ResourceCreationErrorMessageEnum? _message;
  ResourceCreationErrorMessageEnum? get message => _$this._message;
  set message(ResourceCreationErrorMessageEnum? message) =>
      _$this._message = message;

  ResourceCreationErrorHttpStatusCodeEnum? _httpStatusCode;
  ResourceCreationErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(ResourceCreationErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  ResourceCreationErrorBuilder() {
    ResourceCreationError._defaults(this);
  }

  ResourceCreationErrorBuilder get _$this {
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
  void replace(ResourceCreationError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceCreationError;
  }

  @override
  void update(void Function(ResourceCreationErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceCreationError build() => _build();

  _$ResourceCreationError _build() {
    _$ResourceCreationError _$result;
    try {
      _$result = _$v ??
          new _$ResourceCreationError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ResourceCreationError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ResourceCreationError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode, r'ResourceCreationError', 'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'ResourceCreationError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceCreationError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
