// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_to_group_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddUserToGroupInput extends AddUserToGroupInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String userId;

  factory _$AddUserToGroupInput(
          [void Function(AddUserToGroupInputBuilder)? updates]) =>
      (AddUserToGroupInputBuilder()..update(updates))._build();

  _$AddUserToGroupInput._({this.name, this.description, required this.userId})
      : super._();
  @override
  AddUserToGroupInput rebuild(
          void Function(AddUserToGroupInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddUserToGroupInputBuilder toBuilder() =>
      AddUserToGroupInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddUserToGroupInput &&
        name == other.name &&
        description == other.description &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddUserToGroupInput')
          ..add('name', name)
          ..add('description', description)
          ..add('userId', userId))
        .toString();
  }
}

class AddUserToGroupInputBuilder
    implements Builder<AddUserToGroupInput, AddUserToGroupInputBuilder> {
  _$AddUserToGroupInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  AddUserToGroupInputBuilder() {
    AddUserToGroupInput._defaults(this);
  }

  AddUserToGroupInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddUserToGroupInput other) {
    _$v = other as _$AddUserToGroupInput;
  }

  @override
  void update(void Function(AddUserToGroupInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddUserToGroupInput build() => _build();

  _$AddUserToGroupInput _build() {
    final _$result = _$v ??
        _$AddUserToGroupInput._(
          name: name,
          description: description,
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'AddUserToGroupInput', 'userId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
