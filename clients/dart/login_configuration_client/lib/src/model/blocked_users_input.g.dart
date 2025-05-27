// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_users_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlockedUsersInput extends BlockedUsersInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final BuiltList<String> userIds;

  factory _$BlockedUsersInput(
          [void Function(BlockedUsersInputBuilder)? updates]) =>
      (BlockedUsersInputBuilder()..update(updates))._build();

  _$BlockedUsersInput._({this.name, this.description, required this.userIds})
      : super._();
  @override
  BlockedUsersInput rebuild(void Function(BlockedUsersInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlockedUsersInputBuilder toBuilder() =>
      BlockedUsersInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlockedUsersInput &&
        name == other.name &&
        description == other.description &&
        userIds == other.userIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlockedUsersInput')
          ..add('name', name)
          ..add('description', description)
          ..add('userIds', userIds))
        .toString();
  }
}

class BlockedUsersInputBuilder
    implements Builder<BlockedUsersInput, BlockedUsersInputBuilder> {
  _$BlockedUsersInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ListBuilder<String>? _userIds;
  ListBuilder<String> get userIds => _$this._userIds ??= ListBuilder<String>();
  set userIds(ListBuilder<String>? userIds) => _$this._userIds = userIds;

  BlockedUsersInputBuilder() {
    BlockedUsersInput._defaults(this);
  }

  BlockedUsersInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _userIds = $v.userIds.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlockedUsersInput other) {
    _$v = other as _$BlockedUsersInput;
  }

  @override
  void update(void Function(BlockedUsersInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlockedUsersInput build() => _build();

  _$BlockedUsersInput _build() {
    _$BlockedUsersInput _$result;
    try {
      _$result = _$v ??
          _$BlockedUsersInput._(
            name: name,
            description: description,
            userIds: userIds.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        userIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BlockedUsersInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
