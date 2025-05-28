// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectDto extends ProjectDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final String? ownerId;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$ProjectDto([void Function(ProjectDtoBuilder)? updates]) =>
      (ProjectDtoBuilder()..update(updates))._build();

  _$ProjectDto._(
      {required this.id,
      required this.name,
      this.ownerId,
      this.description,
      this.createdAt,
      this.updatedAt})
      : super._();
  @override
  ProjectDto rebuild(void Function(ProjectDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectDtoBuilder toBuilder() => ProjectDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectDto &&
        id == other.id &&
        name == other.name &&
        ownerId == other.ownerId &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectDto')
          ..add('id', id)
          ..add('name', name)
          ..add('ownerId', ownerId)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ProjectDtoBuilder implements Builder<ProjectDto, ProjectDtoBuilder> {
  _$ProjectDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  ProjectDtoBuilder() {
    ProjectDto._defaults(this);
  }

  ProjectDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _ownerId = $v.ownerId;
      _description = $v.description;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectDto other) {
    _$v = other as _$ProjectDto;
  }

  @override
  void update(void Function(ProjectDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectDto build() => _build();

  _$ProjectDto _build() {
    final _$result = _$v ??
        _$ProjectDto._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'ProjectDto', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ProjectDto', 'name'),
          ownerId: ownerId,
          description: description,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
