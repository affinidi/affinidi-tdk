// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user_mappings_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupUserMappingsList extends GroupUserMappingsList {
  @override
  final BuiltList<GroupUserMappingDto>? users;
  @override
  final String? lastEvaluatedKey;
  @override
  final int? totalUserCount;

  factory _$GroupUserMappingsList(
          [void Function(GroupUserMappingsListBuilder)? updates]) =>
      (new GroupUserMappingsListBuilder()..update(updates))._build();

  _$GroupUserMappingsList._(
      {this.users, this.lastEvaluatedKey, this.totalUserCount})
      : super._();

  @override
  GroupUserMappingsList rebuild(
          void Function(GroupUserMappingsListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupUserMappingsListBuilder toBuilder() =>
      new GroupUserMappingsListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupUserMappingsList &&
        users == other.users &&
        lastEvaluatedKey == other.lastEvaluatedKey &&
        totalUserCount == other.totalUserCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, users.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jc(_$hash, totalUserCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupUserMappingsList')
          ..add('users', users)
          ..add('lastEvaluatedKey', lastEvaluatedKey)
          ..add('totalUserCount', totalUserCount))
        .toString();
  }
}

class GroupUserMappingsListBuilder
    implements Builder<GroupUserMappingsList, GroupUserMappingsListBuilder> {
  _$GroupUserMappingsList? _$v;

  ListBuilder<GroupUserMappingDto>? _users;
  ListBuilder<GroupUserMappingDto> get users =>
      _$this._users ??= new ListBuilder<GroupUserMappingDto>();
  set users(ListBuilder<GroupUserMappingDto>? users) => _$this._users = users;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  int? _totalUserCount;
  int? get totalUserCount => _$this._totalUserCount;
  set totalUserCount(int? totalUserCount) =>
      _$this._totalUserCount = totalUserCount;

  GroupUserMappingsListBuilder() {
    GroupUserMappingsList._defaults(this);
  }

  GroupUserMappingsListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _totalUserCount = $v.totalUserCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupUserMappingsList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupUserMappingsList;
  }

  @override
  void update(void Function(GroupUserMappingsListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupUserMappingsList build() => _build();

  _$GroupUserMappingsList _build() {
    _$GroupUserMappingsList _$result;
    try {
      _$result = _$v ??
          new _$GroupUserMappingsList._(
            users: _users?.build(),
            lastEvaluatedKey: lastEvaluatedKey,
            totalUserCount: totalUserCount,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GroupUserMappingsList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
