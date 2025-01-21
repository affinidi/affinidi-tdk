// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'did_key_input_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DidKeyInputParamsDidMethodEnum _$didKeyInputParamsDidMethodEnum_key =
    const DidKeyInputParamsDidMethodEnum._('key');

DidKeyInputParamsDidMethodEnum _$didKeyInputParamsDidMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'key':
      return _$didKeyInputParamsDidMethodEnum_key;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<DidKeyInputParamsDidMethodEnum>
    _$didKeyInputParamsDidMethodEnumValues = new BuiltSet<
        DidKeyInputParamsDidMethodEnum>(const <DidKeyInputParamsDidMethodEnum>[
  _$didKeyInputParamsDidMethodEnum_key,
]);

Serializer<DidKeyInputParamsDidMethodEnum>
    _$didKeyInputParamsDidMethodEnumSerializer =
    new _$DidKeyInputParamsDidMethodEnumSerializer();

class _$DidKeyInputParamsDidMethodEnumSerializer
    implements PrimitiveSerializer<DidKeyInputParamsDidMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'key': 'key',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'key': 'key',
  };

  @override
  final Iterable<Type> types = const <Type>[DidKeyInputParamsDidMethodEnum];
  @override
  final String wireName = 'DidKeyInputParamsDidMethodEnum';

  @override
  Object serialize(
          Serializers serializers, DidKeyInputParamsDidMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  DidKeyInputParamsDidMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      DidKeyInputParamsDidMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$DidKeyInputParams extends DidKeyInputParams {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DidKeyInputParamsDidMethodEnum? didMethod;

  factory _$DidKeyInputParams(
          [void Function(DidKeyInputParamsBuilder)? updates]) =>
      (new DidKeyInputParamsBuilder()..update(updates))._build();

  _$DidKeyInputParams._({this.name, this.description, this.didMethod})
      : super._();

  @override
  DidKeyInputParams rebuild(void Function(DidKeyInputParamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DidKeyInputParamsBuilder toBuilder() =>
      new DidKeyInputParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DidKeyInputParams &&
        name == other.name &&
        description == other.description &&
        didMethod == other.didMethod;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, didMethod.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DidKeyInputParams')
          ..add('name', name)
          ..add('description', description)
          ..add('didMethod', didMethod))
        .toString();
  }
}

class DidKeyInputParamsBuilder
    implements Builder<DidKeyInputParams, DidKeyInputParamsBuilder> {
  _$DidKeyInputParams? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DidKeyInputParamsDidMethodEnum? _didMethod;
  DidKeyInputParamsDidMethodEnum? get didMethod => _$this._didMethod;
  set didMethod(DidKeyInputParamsDidMethodEnum? didMethod) =>
      _$this._didMethod = didMethod;

  DidKeyInputParamsBuilder() {
    DidKeyInputParams._defaults(this);
  }

  DidKeyInputParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _didMethod = $v.didMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DidKeyInputParams other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DidKeyInputParams;
  }

  @override
  void update(void Function(DidKeyInputParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DidKeyInputParams build() => _build();

  _$DidKeyInputParams _build() {
    final _$result = _$v ??
        new _$DidKeyInputParams._(
          name: name,
          description: description,
          didMethod: didMethod,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
