// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserList extends UserList {
  @override
  final BuiltList<UserDto> records;
  @override
  final String? lastEvaluatedKey;

  factory _$UserList([void Function(UserListBuilder)? updates]) =>
      (UserListBuilder()..update(updates))._build();

  _$UserList._({required this.records, this.lastEvaluatedKey}) : super._();
  @override
  UserList rebuild(void Function(UserListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListBuilder toBuilder() => UserListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserList &&
        records == other.records &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, records.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserList')
          ..add('records', records)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class UserListBuilder implements Builder<UserList, UserListBuilder> {
  _$UserList? _$v;

  ListBuilder<UserDto>? _records;
  ListBuilder<UserDto> get records =>
      _$this._records ??= ListBuilder<UserDto>();
  set records(ListBuilder<UserDto>? records) => _$this._records = records;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  UserListBuilder() {
    UserList._defaults(this);
  }

  UserListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _records = $v.records.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserList other) {
    _$v = other as _$UserList;
  }

  @override
  void update(void Function(UserListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserList build() => _build();

  _$UserList _build() {
    _$UserList _$result;
    try {
      _$result = _$v ??
          _$UserList._(
            records: records.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
