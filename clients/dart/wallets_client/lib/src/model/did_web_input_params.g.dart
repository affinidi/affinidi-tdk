// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'did_web_input_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DidWebInputParamsDidMethodEnum _$didWebInputParamsDidMethodEnum_web =
    const DidWebInputParamsDidMethodEnum._('web');

DidWebInputParamsDidMethodEnum _$didWebInputParamsDidMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'web':
      return _$didWebInputParamsDidMethodEnum_web;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<DidWebInputParamsDidMethodEnum>
    _$didWebInputParamsDidMethodEnumValues = BuiltSet<
        DidWebInputParamsDidMethodEnum>(const <DidWebInputParamsDidMethodEnum>[
  _$didWebInputParamsDidMethodEnum_web,
]);

Serializer<DidWebInputParamsDidMethodEnum>
    _$didWebInputParamsDidMethodEnumSerializer =
    _$DidWebInputParamsDidMethodEnumSerializer();

class _$DidWebInputParamsDidMethodEnumSerializer
    implements PrimitiveSerializer<DidWebInputParamsDidMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'web': 'web',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'web': 'web',
  };

  @override
  final Iterable<Type> types = const <Type>[DidWebInputParamsDidMethodEnum];
  @override
  final String wireName = 'DidWebInputParamsDidMethodEnum';

  @override
  Object serialize(
          Serializers serializers, DidWebInputParamsDidMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DidWebInputParamsDidMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DidWebInputParamsDidMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DidWebInputParams extends DidWebInputParams {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DidWebInputParamsDidMethodEnum didMethod;
  @override
  final String didWebUrl;

  factory _$DidWebInputParams(
          [void Function(DidWebInputParamsBuilder)? updates]) =>
      (DidWebInputParamsBuilder()..update(updates))._build();

  _$DidWebInputParams._(
      {this.name,
      this.description,
      required this.didMethod,
      required this.didWebUrl})
      : super._();
  @override
  DidWebInputParams rebuild(void Function(DidWebInputParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DidWebInputParamsBuilder toBuilder() =>
      DidWebInputParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DidWebInputParams &&
        name == other.name &&
        description == other.description &&
        didMethod == other.didMethod &&
        didWebUrl == other.didWebUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, didMethod.hashCode);
    _$hash = $jc(_$hash, didWebUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DidWebInputParams')
          ..add('name', name)
          ..add('description', description)
          ..add('didMethod', didMethod)
          ..add('didWebUrl', didWebUrl))
        .toString();
  }
}

class DidWebInputParamsBuilder
    implements Builder<DidWebInputParams, DidWebInputParamsBuilder> {
  _$DidWebInputParams? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DidWebInputParamsDidMethodEnum? _didMethod;
  DidWebInputParamsDidMethodEnum? get didMethod => _$this._didMethod;
  set didMethod(DidWebInputParamsDidMethodEnum? didMethod) =>
      _$this._didMethod = didMethod;

  String? _didWebUrl;
  String? get didWebUrl => _$this._didWebUrl;
  set didWebUrl(String? didWebUrl) => _$this._didWebUrl = didWebUrl;

  DidWebInputParamsBuilder() {
    DidWebInputParams._defaults(this);
  }

  DidWebInputParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _didMethod = $v.didMethod;
      _didWebUrl = $v.didWebUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DidWebInputParams other) {
    _$v = other as _$DidWebInputParams;
  }

  @override
  void update(void Function(DidWebInputParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DidWebInputParams build() => _build();

  _$DidWebInputParams _build() {
    final _$result = _$v ??
        _$DidWebInputParams._(
          name: name,
          description: description,
          didMethod: BuiltValueNullFieldError.checkNotNull(
              didMethod, r'DidWebInputParams', 'didMethod'),
          didWebUrl: BuiltValueNullFieldError.checkNotNull(
              didWebUrl, r'DidWebInputParams', 'didWebUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
