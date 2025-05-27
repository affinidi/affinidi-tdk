// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectList extends ProjectList {
  @override
  final BuiltList<ProjectDto> projects;
  @override
  final String? lastEvaluatedKey;

  factory _$ProjectList([void Function(ProjectListBuilder)? updates]) =>
      (ProjectListBuilder()..update(updates))._build();

  _$ProjectList._({required this.projects, this.lastEvaluatedKey}) : super._();
  @override
  ProjectList rebuild(void Function(ProjectListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectListBuilder toBuilder() => ProjectListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectList &&
        projects == other.projects &&
        lastEvaluatedKey == other.lastEvaluatedKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projects.hashCode);
    _$hash = $jc(_$hash, lastEvaluatedKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectList')
          ..add('projects', projects)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ProjectListBuilder implements Builder<ProjectList, ProjectListBuilder> {
  _$ProjectList? _$v;

  ListBuilder<ProjectDto>? _projects;
  ListBuilder<ProjectDto> get projects =>
      _$this._projects ??= ListBuilder<ProjectDto>();
  set projects(ListBuilder<ProjectDto>? projects) =>
      _$this._projects = projects;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ProjectListBuilder() {
    ProjectList._defaults(this);
  }

  ProjectListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projects = $v.projects.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectList other) {
    _$v = other as _$ProjectList;
  }

  @override
  void update(void Function(ProjectListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectList build() => _build();

  _$ProjectList _build() {
    _$ProjectList _$result;
    try {
      _$result = _$v ??
          _$ProjectList._(
            projects: projects.build(),
            lastEvaluatedKey: lastEvaluatedKey,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'projects';
        projects.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ProjectList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
