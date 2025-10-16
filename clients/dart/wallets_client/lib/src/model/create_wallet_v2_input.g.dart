// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_v2_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateWalletV2InputDidMethodEnum _$createWalletV2InputDidMethodEnum_key =
    const CreateWalletV2InputDidMethodEnum._('key');
const CreateWalletV2InputDidMethodEnum _$createWalletV2InputDidMethodEnum_web =
    const CreateWalletV2InputDidMethodEnum._('web');
const CreateWalletV2InputDidMethodEnum
    _$createWalletV2InputDidMethodEnum_peer0 =
    const CreateWalletV2InputDidMethodEnum._('peer0');

CreateWalletV2InputDidMethodEnum _$createWalletV2InputDidMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'key':
      return _$createWalletV2InputDidMethodEnum_key;
    case 'web':
      return _$createWalletV2InputDidMethodEnum_web;
    case 'peer0':
      return _$createWalletV2InputDidMethodEnum_peer0;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateWalletV2InputDidMethodEnum>
    _$createWalletV2InputDidMethodEnumValues = BuiltSet<
        CreateWalletV2InputDidMethodEnum>(const <CreateWalletV2InputDidMethodEnum>[
  _$createWalletV2InputDidMethodEnum_key,
  _$createWalletV2InputDidMethodEnum_web,
  _$createWalletV2InputDidMethodEnum_peer0,
]);

const CreateWalletV2InputAlgorithmEnum
    _$createWalletV2InputAlgorithmEnum_secp256k1 =
    const CreateWalletV2InputAlgorithmEnum._('secp256k1');
const CreateWalletV2InputAlgorithmEnum
    _$createWalletV2InputAlgorithmEnum_ed25519 =
    const CreateWalletV2InputAlgorithmEnum._('ed25519');
const CreateWalletV2InputAlgorithmEnum _$createWalletV2InputAlgorithmEnum_p256 =
    const CreateWalletV2InputAlgorithmEnum._('p256');

CreateWalletV2InputAlgorithmEnum _$createWalletV2InputAlgorithmEnumValueOf(
    String name) {
  switch (name) {
    case 'secp256k1':
      return _$createWalletV2InputAlgorithmEnum_secp256k1;
    case 'ed25519':
      return _$createWalletV2InputAlgorithmEnum_ed25519;
    case 'p256':
      return _$createWalletV2InputAlgorithmEnum_p256;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateWalletV2InputAlgorithmEnum>
    _$createWalletV2InputAlgorithmEnumValues = BuiltSet<
        CreateWalletV2InputAlgorithmEnum>(const <CreateWalletV2InputAlgorithmEnum>[
  _$createWalletV2InputAlgorithmEnum_secp256k1,
  _$createWalletV2InputAlgorithmEnum_ed25519,
  _$createWalletV2InputAlgorithmEnum_p256,
]);

Serializer<CreateWalletV2InputDidMethodEnum>
    _$createWalletV2InputDidMethodEnumSerializer =
    _$CreateWalletV2InputDidMethodEnumSerializer();
Serializer<CreateWalletV2InputAlgorithmEnum>
    _$createWalletV2InputAlgorithmEnumSerializer =
    _$CreateWalletV2InputAlgorithmEnumSerializer();

class _$CreateWalletV2InputDidMethodEnumSerializer
    implements PrimitiveSerializer<CreateWalletV2InputDidMethodEnum> {
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
  final Iterable<Type> types = const <Type>[CreateWalletV2InputDidMethodEnum];
  @override
  final String wireName = 'CreateWalletV2InputDidMethodEnum';

  @override
  Object serialize(
          Serializers serializers, CreateWalletV2InputDidMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateWalletV2InputDidMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateWalletV2InputDidMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateWalletV2InputAlgorithmEnumSerializer
    implements PrimitiveSerializer<CreateWalletV2InputAlgorithmEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'secp256k1': 'secp256k1',
    'ed25519': 'ed25519',
    'p256': 'p256',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'secp256k1': 'secp256k1',
    'ed25519': 'ed25519',
    'p256': 'p256',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateWalletV2InputAlgorithmEnum];
  @override
  final String wireName = 'CreateWalletV2InputAlgorithmEnum';

  @override
  Object serialize(
          Serializers serializers, CreateWalletV2InputAlgorithmEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateWalletV2InputAlgorithmEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateWalletV2InputAlgorithmEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateWalletV2Input extends CreateWalletV2Input {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final CreateWalletV2InputDidMethodEnum? didMethod;
  @override
  final String? didWebUrl;
  @override
  final CreateWalletV2InputAlgorithmEnum? algorithm;

  factory _$CreateWalletV2Input(
          [void Function(CreateWalletV2InputBuilder)? updates]) =>
      (CreateWalletV2InputBuilder()..update(updates))._build();

  _$CreateWalletV2Input._(
      {this.name,
      this.description,
      this.didMethod,
      this.didWebUrl,
      this.algorithm})
      : super._();
  @override
  CreateWalletV2Input rebuild(
          void Function(CreateWalletV2InputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateWalletV2InputBuilder toBuilder() =>
      CreateWalletV2InputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateWalletV2Input &&
        name == other.name &&
        description == other.description &&
        didMethod == other.didMethod &&
        didWebUrl == other.didWebUrl &&
        algorithm == other.algorithm;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, didMethod.hashCode);
    _$hash = $jc(_$hash, didWebUrl.hashCode);
    _$hash = $jc(_$hash, algorithm.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateWalletV2Input')
          ..add('name', name)
          ..add('description', description)
          ..add('didMethod', didMethod)
          ..add('didWebUrl', didWebUrl)
          ..add('algorithm', algorithm))
        .toString();
  }
}

class CreateWalletV2InputBuilder
    implements Builder<CreateWalletV2Input, CreateWalletV2InputBuilder> {
  _$CreateWalletV2Input? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateWalletV2InputDidMethodEnum? _didMethod;
  CreateWalletV2InputDidMethodEnum? get didMethod => _$this._didMethod;
  set didMethod(CreateWalletV2InputDidMethodEnum? didMethod) =>
      _$this._didMethod = didMethod;

  String? _didWebUrl;
  String? get didWebUrl => _$this._didWebUrl;
  set didWebUrl(String? didWebUrl) => _$this._didWebUrl = didWebUrl;

  CreateWalletV2InputAlgorithmEnum? _algorithm;
  CreateWalletV2InputAlgorithmEnum? get algorithm => _$this._algorithm;
  set algorithm(CreateWalletV2InputAlgorithmEnum? algorithm) =>
      _$this._algorithm = algorithm;

  CreateWalletV2InputBuilder() {
    CreateWalletV2Input._defaults(this);
  }

  CreateWalletV2InputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _didMethod = $v.didMethod;
      _didWebUrl = $v.didWebUrl;
      _algorithm = $v.algorithm;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateWalletV2Input other) {
    _$v = other as _$CreateWalletV2Input;
  }

  @override
  void update(void Function(CreateWalletV2InputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateWalletV2Input build() => _build();

  _$CreateWalletV2Input _build() {
    final _$result = _$v ??
        _$CreateWalletV2Input._(
          name: name,
          description: description,
          didMethod: didMethod,
          didWebUrl: didWebUrl,
          algorithm: algorithm,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
