// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_user_mapping_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupUserMappingDto extends GroupUserMappingDto {
  @override
  final String userId;
  @override
  final String addedAt;

  factory _$GroupUserMappingDto(
          [void Function(GroupUserMappingDtoBuilder)? updates]) =>
      (new GroupUserMappingDtoBuilder()..update(updates))._build();

  _$GroupUserMappingDto._({required this.userId, required this.addedAt})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userId, r'GroupUserMappingDto', 'userId');
    BuiltValueNullFieldError.checkNotNull(
        addedAt, r'GroupUserMappingDto', 'addedAt');
  }

  @override
  GroupUserMappingDto rebuild(
          void Function(GroupUserMappingDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupUserMappingDtoBuilder toBuilder() =>
      new GroupUserMappingDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupUserMappingDto &&
        userId == other.userId &&
        addedAt == other.addedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, addedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupUserMappingDto')
          ..add('userId', userId)
          ..add('addedAt', addedAt))
        .toString();
  }
}

class GroupUserMappingDtoBuilder
    implements Builder<GroupUserMappingDto, GroupUserMappingDtoBuilder> {
  _$GroupUserMappingDto? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _addedAt;
  String? get addedAt => _$this._addedAt;
  set addedAt(String? addedAt) => _$this._addedAt = addedAt;

  GroupUserMappingDtoBuilder() {
    GroupUserMappingDto._defaults(this);
  }

  GroupUserMappingDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _addedAt = $v.addedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupUserMappingDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupUserMappingDto;
  }

  @override
  void update(void Function(GroupUserMappingDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupUserMappingDto build() => _build();

  _$GroupUserMappingDto _build() {
    final _$result = _$v ??
        new _$GroupUserMappingDto._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'GroupUserMappingDto', 'userId'),
          addedAt: BuiltValueNullFieldError.checkNotNull(
              addedAt, r'GroupUserMappingDto', 'addedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
