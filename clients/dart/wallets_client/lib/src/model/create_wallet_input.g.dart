// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateWalletInputDidMethodEnum _$createWalletInputDidMethodEnum_key =
    const CreateWalletInputDidMethodEnum._('key');
const CreateWalletInputDidMethodEnum _$createWalletInputDidMethodEnum_web =
    const CreateWalletInputDidMethodEnum._('web');
const CreateWalletInputDidMethodEnum _$createWalletInputDidMethodEnum_peer0 =
    const CreateWalletInputDidMethodEnum._('peer0');

CreateWalletInputDidMethodEnum _$createWalletInputDidMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'key':
      return _$createWalletInputDidMethodEnum_key;
    case 'web':
      return _$createWalletInputDidMethodEnum_web;
    case 'peer0':
      return _$createWalletInputDidMethodEnum_peer0;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateWalletInputDidMethodEnum>
    _$createWalletInputDidMethodEnumValues = BuiltSet<
        CreateWalletInputDidMethodEnum>(const <CreateWalletInputDidMethodEnum>[
  _$createWalletInputDidMethodEnum_key,
  _$createWalletInputDidMethodEnum_web,
  _$createWalletInputDidMethodEnum_peer0,
]);

Serializer<CreateWalletInputDidMethodEnum>
    _$createWalletInputDidMethodEnumSerializer =
    _$CreateWalletInputDidMethodEnumSerializer();

class _$CreateWalletInputDidMethodEnumSerializer
    implements PrimitiveSerializer<CreateWalletInputDidMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'key': 'key',
    'web': 'web',
    'peer0': 'peer0',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'key': 'key',
    'web': 'web',
    'peer0': 'peer0',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateWalletInputDidMethodEnum];
  @override
  final String wireName = 'CreateWalletInputDidMethodEnum';

  @override
  Object serialize(
          Serializers serializers, CreateWalletInputDidMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateWalletInputDidMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateWalletInputDidMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateWalletInput extends CreateWalletInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final CreateWalletInputDidMethodEnum? didMethod;
  @override
  final String? didWebUrl;

  factory _$CreateWalletInput(
          [void Function(CreateWalletInputBuilder)? updates]) =>
      (CreateWalletInputBuilder()..update(updates))._build();

  _$CreateWalletInput._(
      {this.name, this.description, this.didMethod, this.didWebUrl})
      : super._();
  @override
  CreateWalletInput rebuild(void Function(CreateWalletInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateWalletInputBuilder toBuilder() =>
      CreateWalletInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateWalletInput &&
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
    return (newBuiltValueToStringHelper(r'CreateWalletInput')
          ..add('name', name)
          ..add('description', description)
          ..add('didMethod', didMethod)
          ..add('didWebUrl', didWebUrl))
        .toString();
  }
}

class CreateWalletInputBuilder
    implements Builder<CreateWalletInput, CreateWalletInputBuilder> {
  _$CreateWalletInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateWalletInputDidMethodEnum? _didMethod;
  CreateWalletInputDidMethodEnum? get didMethod => _$this._didMethod;
  set didMethod(CreateWalletInputDidMethodEnum? didMethod) =>
      _$this._didMethod = didMethod;

  String? _didWebUrl;
  String? get didWebUrl => _$this._didWebUrl;
  set didWebUrl(String? didWebUrl) => _$this._didWebUrl = didWebUrl;

  CreateWalletInputBuilder() {
    CreateWalletInput._defaults(this);
  }

  CreateWalletInputBuilder get _$this {
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
  void replace(CreateWalletInput other) {
    _$v = other as _$CreateWalletInput;
  }

  @override
  void update(void Function(CreateWalletInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateWalletInput build() => _build();

  _$CreateWalletInput _build() {
    final _$result = _$v ??
        _$CreateWalletInput._(
          name: name,
          description: description,
          didMethod: didMethod,
          didWebUrl: didWebUrl,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
