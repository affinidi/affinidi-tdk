// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_names.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupNames extends GroupNames {
  @override
  final BuiltList<String> groupNames;
  @override
  final JsonObject? pageToken;

  factory _$GroupNames([void Function(GroupNamesBuilder)? updates]) =>
      (new GroupNamesBuilder()..update(updates))._build();

  _$GroupNames._({required this.groupNames, this.pageToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        groupNames, r'GroupNames', 'groupNames');
  }

  @override
  GroupNames rebuild(void Function(GroupNamesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupNamesBuilder toBuilder() => new GroupNamesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupNames &&
        groupNames == other.groupNames &&
        pageToken == other.pageToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupNames.hashCode);
    _$hash = $jc(_$hash, pageToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupNames')
          ..add('groupNames', groupNames)
          ..add('pageToken', pageToken))
        .toString();
  }
}

class GroupNamesBuilder implements Builder<GroupNames, GroupNamesBuilder> {
  _$GroupNames? _$v;

  ListBuilder<String>? _groupNames;
  ListBuilder<String> get groupNames =>
      _$this._groupNames ??= new ListBuilder<String>();
  set groupNames(ListBuilder<String>? groupNames) =>
      _$this._groupNames = groupNames;

  JsonObject? _pageToken;
  JsonObject? get pageToken => _$this._pageToken;
  set pageToken(JsonObject? pageToken) => _$this._pageToken = pageToken;

  GroupNamesBuilder() {
    GroupNames._defaults(this);
  }

  GroupNamesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupNames = $v.groupNames.toBuilder();
      _pageToken = $v.pageToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupNames other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupNames;
  }

  @override
  void update(void Function(GroupNamesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupNames build() => _build();

  _$GroupNames _build() {
    _$GroupNames _$result;
    try {
      _$result = _$v ??
          new _$GroupNames._(
            groupNames: groupNames.build(),
            pageToken: pageToken,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupNames';
        groupNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GroupNames', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
