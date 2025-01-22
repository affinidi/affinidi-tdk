// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupDto extends GroupDto {
  @override
  final String ari;
  @override
  final String projectId;
  @override
  final String groupName;
  @override
  final String creationDate;

  factory _$GroupDto([void Function(GroupDtoBuilder)? updates]) =>
      (new GroupDtoBuilder()..update(updates))._build();

  _$GroupDto._(
      {required this.ari,
      required this.projectId,
      required this.groupName,
      required this.creationDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ari, r'GroupDto', 'ari');
    BuiltValueNullFieldError.checkNotNull(projectId, r'GroupDto', 'projectId');
    BuiltValueNullFieldError.checkNotNull(groupName, r'GroupDto', 'groupName');
    BuiltValueNullFieldError.checkNotNull(
        creationDate, r'GroupDto', 'creationDate');
  }

  @override
  GroupDto rebuild(void Function(GroupDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupDtoBuilder toBuilder() => new GroupDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupDto &&
        ari == other.ari &&
        projectId == other.projectId &&
        groupName == other.groupName &&
        creationDate == other.creationDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ari.hashCode);
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, creationDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupDto')
          ..add('ari', ari)
          ..add('projectId', projectId)
          ..add('groupName', groupName)
          ..add('creationDate', creationDate))
        .toString();
  }
}

class GroupDtoBuilder implements Builder<GroupDto, GroupDtoBuilder> {
  _$GroupDto? _$v;

  String? _ari;
  String? get ari => _$this._ari;
  set ari(String? ari) => _$this._ari = ari;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _creationDate;
  String? get creationDate => _$this._creationDate;
  set creationDate(String? creationDate) => _$this._creationDate = creationDate;

  GroupDtoBuilder() {
    GroupDto._defaults(this);
  }

  GroupDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ari = $v.ari;
      _projectId = $v.projectId;
      _groupName = $v.groupName;
      _creationDate = $v.creationDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupDto;
  }

  @override
  void update(void Function(GroupDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupDto build() => _build();

  _$GroupDto _build() {
    final _$result = _$v ??
        new _$GroupDto._(
          ari: BuiltValueNullFieldError.checkNotNull(ari, r'GroupDto', 'ari'),
          projectId: BuiltValueNullFieldError.checkNotNull(
              projectId, r'GroupDto', 'projectId'),
          groupName: BuiltValueNullFieldError.checkNotNull(
              groupName, r'GroupDto', 'groupName'),
          creationDate: BuiltValueNullFieldError.checkNotNull(
              creationDate, r'GroupDto', 'creationDate'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
