// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupsList extends GroupsList {
  @override
  final BuiltList<GroupDto>? groups;

  factory _$GroupsList([void Function(GroupsListBuilder)? updates]) =>
      (GroupsListBuilder()..update(updates))._build();

  _$GroupsList._({this.groups}) : super._();
  @override
  GroupsList rebuild(void Function(GroupsListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsListBuilder toBuilder() => GroupsListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsList && groups == other.groups;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupsList')..add('groups', groups))
        .toString();
  }
}

class GroupsListBuilder implements Builder<GroupsList, GroupsListBuilder> {
  _$GroupsList? _$v;

  ListBuilder<GroupDto>? _groups;
  ListBuilder<GroupDto> get groups =>
      _$this._groups ??= ListBuilder<GroupDto>();
  set groups(ListBuilder<GroupDto>? groups) => _$this._groups = groups;

  GroupsListBuilder() {
    GroupsList._defaults(this);
  }

  GroupsListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groups = $v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupsList other) {
    _$v = other as _$GroupsList;
  }

  @override
  void update(void Function(GroupsListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupsList build() => _build();

  _$GroupsList _build() {
    _$GroupsList _$result;
    try {
      _$result = _$v ??
          _$GroupsList._(
            groups: _groups?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GroupsList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
