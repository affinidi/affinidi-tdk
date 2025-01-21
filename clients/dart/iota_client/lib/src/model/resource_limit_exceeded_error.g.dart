// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_limit_exceeded_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceLimitExceededErrorNameEnum
    _$resourceLimitExceededErrorNameEnum_resourceLimitExceededError =
    const ResourceLimitExceededErrorNameEnum._('resourceLimitExceededError');

ResourceLimitExceededErrorNameEnum _$resourceLimitExceededErrorNameEnumValueOf(
    String name) {
  switch (name) {
    case 'resourceLimitExceededError':
      return _$resourceLimitExceededErrorNameEnum_resourceLimitExceededError;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceLimitExceededErrorNameEnum>
    _$resourceLimitExceededErrorNameEnumValues = new BuiltSet<
        ResourceLimitExceededErrorNameEnum>(const <ResourceLimitExceededErrorNameEnum>[
  _$resourceLimitExceededErrorNameEnum_resourceLimitExceededError,
]);

const ResourceLimitExceededErrorMessageEnum
    _$resourceLimitExceededErrorMessageEnum_resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod =
    const ResourceLimitExceededErrorMessageEnum._(
        'resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod');

ResourceLimitExceededErrorMessageEnum
    _$resourceLimitExceededErrorMessageEnumValueOf(String name) {
  switch (name) {
    case 'resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
      return _$resourceLimitExceededErrorMessageEnum_resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceLimitExceededErrorMessageEnum>
    _$resourceLimitExceededErrorMessageEnumValues = new BuiltSet<
        ResourceLimitExceededErrorMessageEnum>(const <ResourceLimitExceededErrorMessageEnum>[
  _$resourceLimitExceededErrorMessageEnum_resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod,
]);

const ResourceLimitExceededErrorHttpStatusCodeEnum
    _$resourceLimitExceededErrorHttpStatusCodeEnum_number422 =
    const ResourceLimitExceededErrorHttpStatusCodeEnum._('number422');

ResourceLimitExceededErrorHttpStatusCodeEnum
    _$resourceLimitExceededErrorHttpStatusCodeEnumValueOf(String name) {
  switch (name) {
    case 'number422':
      return _$resourceLimitExceededErrorHttpStatusCodeEnum_number422;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ResourceLimitExceededErrorHttpStatusCodeEnum>
    _$resourceLimitExceededErrorHttpStatusCodeEnumValues = new BuiltSet<
        ResourceLimitExceededErrorHttpStatusCodeEnum>(const <ResourceLimitExceededErrorHttpStatusCodeEnum>[
  _$resourceLimitExceededErrorHttpStatusCodeEnum_number422,
]);

Serializer<ResourceLimitExceededErrorNameEnum>
    _$resourceLimitExceededErrorNameEnumSerializer =
    new _$ResourceLimitExceededErrorNameEnumSerializer();
Serializer<ResourceLimitExceededErrorMessageEnum>
    _$resourceLimitExceededErrorMessageEnumSerializer =
    new _$ResourceLimitExceededErrorMessageEnumSerializer();
Serializer<ResourceLimitExceededErrorHttpStatusCodeEnum>
    _$resourceLimitExceededErrorHttpStatusCodeEnumSerializer =
    new _$ResourceLimitExceededErrorHttpStatusCodeEnumSerializer();

class _$ResourceLimitExceededErrorNameEnumSerializer
    implements PrimitiveSerializer<ResourceLimitExceededErrorNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'resourceLimitExceededError': 'ResourceLimitExceededError',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ResourceLimitExceededError': 'resourceLimitExceededError',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceLimitExceededErrorNameEnum];
  @override
  final String wireName = 'ResourceLimitExceededErrorNameEnum';

  @override
  Object serialize(
          Serializers serializers, ResourceLimitExceededErrorNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceLimitExceededErrorNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceLimitExceededErrorNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResourceLimitExceededErrorMessageEnumSerializer
    implements PrimitiveSerializer<ResourceLimitExceededErrorMessageEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod':
        'Resource limit exceeded: \${param}.',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'Resource limit exceeded: \${param}.':
        'resourceLimitExceededColonDollarLeftCurlyBracketParamRightCurlyBracketPeriod',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ResourceLimitExceededErrorMessageEnum
  ];
  @override
  final String wireName = 'ResourceLimitExceededErrorMessageEnum';

  @override
  Object serialize(
          Serializers serializers, ResourceLimitExceededErrorMessageEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceLimitExceededErrorMessageEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceLimitExceededErrorMessageEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResourceLimitExceededErrorHttpStatusCodeEnumSerializer
    implements
        PrimitiveSerializer<ResourceLimitExceededErrorHttpStatusCodeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number422': 422,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    422: 'number422',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ResourceLimitExceededErrorHttpStatusCodeEnum
  ];
  @override
  final String wireName = 'ResourceLimitExceededErrorHttpStatusCodeEnum';

  @override
  Object serialize(Serializers serializers,
          ResourceLimitExceededErrorHttpStatusCodeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ResourceLimitExceededErrorHttpStatusCodeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ResourceLimitExceededErrorHttpStatusCodeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ResourceLimitExceededError extends ResourceLimitExceededError {
  @override
  final ResourceLimitExceededErrorNameEnum name;
  @override
  final ResourceLimitExceededErrorMessageEnum message;
  @override
  final ResourceLimitExceededErrorHttpStatusCodeEnum httpStatusCode;
  @override
  final String traceId;
  @override
  final BuiltList<InvalidParameterErrorDetailsInner>? details;

  factory _$ResourceLimitExceededError(
          [void Function(ResourceLimitExceededErrorBuilder)? updates]) =>
      (new ResourceLimitExceededErrorBuilder()..update(updates))._build();

  _$ResourceLimitExceededError._(
      {required this.name,
      required this.message,
      required this.httpStatusCode,
      required this.traceId,
      this.details})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'ResourceLimitExceededError', 'name');
    BuiltValueNullFieldError.checkNotNull(
        message, r'ResourceLimitExceededError', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpStatusCode, r'ResourceLimitExceededError', 'httpStatusCode');
    BuiltValueNullFieldError.checkNotNull(
        traceId, r'ResourceLimitExceededError', 'traceId');
  }

  @override
  ResourceLimitExceededError rebuild(
          void Function(ResourceLimitExceededErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourceLimitExceededErrorBuilder toBuilder() =>
      new ResourceLimitExceededErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourceLimitExceededError &&
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
    return (newBuiltValueToStringHelper(r'ResourceLimitExceededError')
          ..add('name', name)
          ..add('message', message)
          ..add('httpStatusCode', httpStatusCode)
          ..add('traceId', traceId)
          ..add('details', details))
        .toString();
  }
}

class ResourceLimitExceededErrorBuilder
    implements
        Builder<ResourceLimitExceededError, ResourceLimitExceededErrorBuilder> {
  _$ResourceLimitExceededError? _$v;

  ResourceLimitExceededErrorNameEnum? _name;
  ResourceLimitExceededErrorNameEnum? get name => _$this._name;
  set name(ResourceLimitExceededErrorNameEnum? name) => _$this._name = name;

  ResourceLimitExceededErrorMessageEnum? _message;
  ResourceLimitExceededErrorMessageEnum? get message => _$this._message;
  set message(ResourceLimitExceededErrorMessageEnum? message) =>
      _$this._message = message;

  ResourceLimitExceededErrorHttpStatusCodeEnum? _httpStatusCode;
  ResourceLimitExceededErrorHttpStatusCodeEnum? get httpStatusCode =>
      _$this._httpStatusCode;
  set httpStatusCode(
          ResourceLimitExceededErrorHttpStatusCodeEnum? httpStatusCode) =>
      _$this._httpStatusCode = httpStatusCode;

  String? _traceId;
  String? get traceId => _$this._traceId;
  set traceId(String? traceId) => _$this._traceId = traceId;

  ListBuilder<InvalidParameterErrorDetailsInner>? _details;
  ListBuilder<InvalidParameterErrorDetailsInner> get details =>
      _$this._details ??= new ListBuilder<InvalidParameterErrorDetailsInner>();
  set details(ListBuilder<InvalidParameterErrorDetailsInner>? details) =>
      _$this._details = details;

  ResourceLimitExceededErrorBuilder() {
    ResourceLimitExceededError._defaults(this);
  }

  ResourceLimitExceededErrorBuilder get _$this {
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
  void replace(ResourceLimitExceededError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourceLimitExceededError;
  }

  @override
  void update(void Function(ResourceLimitExceededErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourceLimitExceededError build() => _build();

  _$ResourceLimitExceededError _build() {
    _$ResourceLimitExceededError _$result;
    try {
      _$result = _$v ??
          new _$ResourceLimitExceededError._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ResourceLimitExceededError', 'name'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ResourceLimitExceededError', 'message'),
            httpStatusCode: BuiltValueNullFieldError.checkNotNull(
                httpStatusCode,
                r'ResourceLimitExceededError',
                'httpStatusCode'),
            traceId: BuiltValueNullFieldError.checkNotNull(
                traceId, r'ResourceLimitExceededError', 'traceId'),
            details: _details?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'details';
        _details?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResourceLimitExceededError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
