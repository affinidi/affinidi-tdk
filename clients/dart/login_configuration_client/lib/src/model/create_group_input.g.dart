// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateGroupInput extends CreateGroupInput {
  @override
  final String groupName;
  @override
  final String? name;
  @override
  final String? description;

  factory _$CreateGroupInput(
          [void Function(CreateGroupInputBuilder)? updates]) =>
      (CreateGroupInputBuilder()..update(updates))._build();

  _$CreateGroupInput._({required this.groupName, this.name, this.description})
      : super._();
  @override
  CreateGroupInput rebuild(void Function(CreateGroupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateGroupInputBuilder toBuilder() =>
      CreateGroupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateGroupInput &&
        groupName == other.groupName &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateGroupInput')
          ..add('groupName', groupName)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class CreateGroupInputBuilder
    implements Builder<CreateGroupInput, CreateGroupInputBuilder> {
  _$CreateGroupInput? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateGroupInputBuilder() {
    CreateGroupInput._defaults(this);
  }

  CreateGroupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateGroupInput other) {
    _$v = other as _$CreateGroupInput;
  }

  @override
  void update(void Function(CreateGroupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateGroupInput build() => _build();

  _$CreateGroupInput _build() {
    final _$result = _$v ??
        _$CreateGroupInput._(
          groupName: BuiltValueNullFieldError.checkNotNull(
              groupName, r'CreateGroupInput', 'groupName'),
          name: name,
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
