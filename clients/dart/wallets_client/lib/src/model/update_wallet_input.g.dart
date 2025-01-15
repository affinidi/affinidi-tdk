// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_wallet_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateWalletInput extends UpdateWalletInput {
  @override
  final String? name;
  @override
  final String? description;

  factory _$UpdateWalletInput(
          [void Function(UpdateWalletInputBuilder)? updates]) =>
      (new UpdateWalletInputBuilder()..update(updates))._build();

  _$UpdateWalletInput._({this.name, this.description}) : super._();

  @override
  UpdateWalletInput rebuild(void Function(UpdateWalletInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateWalletInputBuilder toBuilder() =>
      new UpdateWalletInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateWalletInput &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateWalletInput')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class UpdateWalletInputBuilder
    implements Builder<UpdateWalletInput, UpdateWalletInputBuilder> {
  _$UpdateWalletInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  UpdateWalletInputBuilder() {
    UpdateWalletInput._defaults(this);
  }

  UpdateWalletInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateWalletInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateWalletInput;
  }

  @override
  void update(void Function(UpdateWalletInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateWalletInput build() => _build();

  _$UpdateWalletInput _build() {
    final _$result = _$v ??
        new _$UpdateWalletInput._(
          name: name,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
