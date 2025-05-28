// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_names_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupNamesInput extends GroupNamesInput {
  @override
  final BuiltList<String> groupNames;

  factory _$GroupNamesInput([void Function(GroupNamesInputBuilder)? updates]) =>
      (GroupNamesInputBuilder()..update(updates))._build();

  _$GroupNamesInput._({required this.groupNames}) : super._();
  @override
  GroupNamesInput rebuild(void Function(GroupNamesInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupNamesInputBuilder toBuilder() => GroupNamesInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupNamesInput && groupNames == other.groupNames;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupNames.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupNamesInput')
          ..add('groupNames', groupNames))
        .toString();
  }
}

class GroupNamesInputBuilder
    implements Builder<GroupNamesInput, GroupNamesInputBuilder> {
  _$GroupNamesInput? _$v;

  ListBuilder<String>? _groupNames;
  ListBuilder<String> get groupNames =>
      _$this._groupNames ??= ListBuilder<String>();
  set groupNames(ListBuilder<String>? groupNames) =>
      _$this._groupNames = groupNames;

  GroupNamesInputBuilder() {
    GroupNamesInput._defaults(this);
  }

  GroupNamesInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupNames = $v.groupNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupNamesInput other) {
    _$v = other as _$GroupNamesInput;
  }

  @override
  void update(void Function(GroupNamesInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupNamesInput build() => _build();

  _$GroupNamesInput _build() {
    _$GroupNamesInput _$result;
    try {
      _$result = _$v ??
          _$GroupNamesInput._(
            groupNames: groupNames.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupNames';
        groupNames.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupNamesInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
