// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_wallet_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateWalletInputDidMethodEnum _$createWalletInputDidMethodEnum_key =
    const CreateWalletInputDidMethodEnum._('key');

CreateWalletInputDidMethodEnum _$createWalletInputDidMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'key':
      return _$createWalletInputDidMethodEnum_key;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateWalletInputDidMethodEnum>
    _$createWalletInputDidMethodEnumValues = BuiltSet<
        CreateWalletInputDidMethodEnum>(const <CreateWalletInputDidMethodEnum>[
  _$createWalletInputDidMethodEnum_key,
]);

Serializer<CreateWalletInputDidMethodEnum>
    _$createWalletInputDidMethodEnumSerializer =
    _$CreateWalletInputDidMethodEnumSerializer();

class _$CreateWalletInputDidMethodEnumSerializer
    implements PrimitiveSerializer<CreateWalletInputDidMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'key': 'key',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'key': 'key',
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
  final OneOf oneOf;

  factory _$CreateWalletInput(
          [void Function(CreateWalletInputBuilder)? updates]) =>
      (CreateWalletInputBuilder()..update(updates))._build();

  _$CreateWalletInput._({required this.oneOf}) : super._();
  @override
  CreateWalletInput rebuild(void Function(CreateWalletInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateWalletInputBuilder toBuilder() =>
      CreateWalletInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateWalletInput && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateWalletInput')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class CreateWalletInputBuilder
    implements Builder<CreateWalletInput, CreateWalletInputBuilder> {
  _$CreateWalletInput? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  CreateWalletInputBuilder() {
    CreateWalletInput._defaults(this);
  }

  CreateWalletInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
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
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'CreateWalletInput', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
