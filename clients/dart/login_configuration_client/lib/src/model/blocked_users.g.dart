// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blocked_users.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlockedUsers extends BlockedUsers {
  @override
  final BuiltList<String> userIds;
  @override
  final JsonObject? pageToken;

  factory _$BlockedUsers([void Function(BlockedUsersBuilder)? updates]) =>
      (BlockedUsersBuilder()..update(updates))._build();

  _$BlockedUsers._({required this.userIds, this.pageToken}) : super._();
  @override
  BlockedUsers rebuild(void Function(BlockedUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlockedUsersBuilder toBuilder() => BlockedUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlockedUsers &&
        userIds == other.userIds &&
        pageToken == other.pageToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, pageToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlockedUsers')
          ..add('userIds', userIds)
          ..add('pageToken', pageToken))
        .toString();
  }
}

class BlockedUsersBuilder
    implements Builder<BlockedUsers, BlockedUsersBuilder> {
  _$BlockedUsers? _$v;

  ListBuilder<String>? _userIds;
  ListBuilder<String> get userIds => _$this._userIds ??= ListBuilder<String>();
  set userIds(ListBuilder<String>? userIds) => _$this._userIds = userIds;

  JsonObject? _pageToken;
  JsonObject? get pageToken => _$this._pageToken;
  set pageToken(JsonObject? pageToken) => _$this._pageToken = pageToken;

  BlockedUsersBuilder() {
    BlockedUsers._defaults(this);
  }

  BlockedUsersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userIds = $v.userIds.toBuilder();
      _pageToken = $v.pageToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlockedUsers other) {
    _$v = other as _$BlockedUsers;
  }

  @override
  void update(void Function(BlockedUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlockedUsers build() => _build();

  _$BlockedUsers _build() {
    _$BlockedUsers _$result;
    try {
      _$result = _$v ??
          _$BlockedUsers._(
            userIds: userIds.build(),
            pageToken: pageToken,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        userIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'BlockedUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
