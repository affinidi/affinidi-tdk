// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redirect_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RedirectResponseTypeEnum _$redirectResponseTypeEnum_REDIRECT_RESPONSE =
    const RedirectResponseTypeEnum._('REDIRECT_RESPONSE');

RedirectResponseTypeEnum _$redirectResponseTypeEnumValueOf(String name) {
  switch (name) {
    case 'REDIRECT_RESPONSE':
      return _$redirectResponseTypeEnum_REDIRECT_RESPONSE;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RedirectResponseTypeEnum> _$redirectResponseTypeEnumValues =
    new BuiltSet<RedirectResponseTypeEnum>(const <RedirectResponseTypeEnum>[
  _$redirectResponseTypeEnum_REDIRECT_RESPONSE,
]);

Serializer<RedirectResponseTypeEnum> _$redirectResponseTypeEnumSerializer =
    new _$RedirectResponseTypeEnumSerializer();

class _$RedirectResponseTypeEnumSerializer
    implements PrimitiveSerializer<RedirectResponseTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REDIRECT_RESPONSE': 'REDIRECT_RESPONSE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REDIRECT_RESPONSE': 'REDIRECT_RESPONSE',
  };

  @override
  final Iterable<Type> types = const <Type>[RedirectResponseTypeEnum];
  @override
  final String wireName = 'RedirectResponseTypeEnum';

  @override
  Object serialize(Serializers serializers, RedirectResponseTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RedirectResponseTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RedirectResponseTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RedirectResponse extends RedirectResponse {
  @override
  final RedirectResponseTypeEnum type;
  @override
  final String to;

  factory _$RedirectResponse(
          [void Function(RedirectResponseBuilder)? updates]) =>
      (new RedirectResponseBuilder()..update(updates))._build();

  _$RedirectResponse._({required this.type, required this.to}) : super._() {
    BuiltValueNullFieldError.checkNotNull(type, r'RedirectResponse', 'type');
    BuiltValueNullFieldError.checkNotNull(to, r'RedirectResponse', 'to');
  }

  @override
  RedirectResponse rebuild(void Function(RedirectResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RedirectResponseBuilder toBuilder() =>
      new RedirectResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RedirectResponse && type == other.type && to == other.to;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, to.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RedirectResponse')
          ..add('type', type)
          ..add('to', to))
        .toString();
  }
}

class RedirectResponseBuilder
    implements Builder<RedirectResponse, RedirectResponseBuilder> {
  _$RedirectResponse? _$v;

  RedirectResponseTypeEnum? _type;
  RedirectResponseTypeEnum? get type => _$this._type;
  set type(RedirectResponseTypeEnum? type) => _$this._type = type;

  String? _to;
  String? get to => _$this._to;
  set to(String? to) => _$this._to = to;

  RedirectResponseBuilder() {
    RedirectResponse._defaults(this);
  }

  RedirectResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _to = $v.to;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RedirectResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RedirectResponse;
  }

  @override
  void update(void Function(RedirectResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RedirectResponse build() => _build();

  _$RedirectResponse _build() {
    final _$result = _$v ??
        new _$RedirectResponse._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'RedirectResponse', 'type'),
          to: BuiltValueNullFieldError.checkNotNull(
              to, r'RedirectResponse', 'to'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
