// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_with_policy_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectWithPolicyList extends ProjectWithPolicyList {
  @override
  final BuiltList<ProjectWithPolicyDto> projects;
  @override
  final String? lastEvaluatedKey;

  factory _$ProjectWithPolicyList(
          [void Function(ProjectWithPolicyListBuilder)? updates]) =>
      (ProjectWithPolicyListBuilder()..update(updates))._build();

  _$ProjectWithPolicyList._({required this.projects, this.lastEvaluatedKey})
      : super._();
  @override
  ProjectWithPolicyList rebuild(
          void Function(ProjectWithPolicyListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectWithPolicyListBuilder toBuilder() =>
      ProjectWithPolicyListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectWithPolicyList &&
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
    return (newBuiltValueToStringHelper(r'ProjectWithPolicyList')
          ..add('projects', projects)
          ..add('lastEvaluatedKey', lastEvaluatedKey))
        .toString();
  }
}

class ProjectWithPolicyListBuilder
    implements Builder<ProjectWithPolicyList, ProjectWithPolicyListBuilder> {
  _$ProjectWithPolicyList? _$v;

  ListBuilder<ProjectWithPolicyDto>? _projects;
  ListBuilder<ProjectWithPolicyDto> get projects =>
      _$this._projects ??= ListBuilder<ProjectWithPolicyDto>();
  set projects(ListBuilder<ProjectWithPolicyDto>? projects) =>
      _$this._projects = projects;

  String? _lastEvaluatedKey;
  String? get lastEvaluatedKey => _$this._lastEvaluatedKey;
  set lastEvaluatedKey(String? lastEvaluatedKey) =>
      _$this._lastEvaluatedKey = lastEvaluatedKey;

  ProjectWithPolicyListBuilder() {
    ProjectWithPolicyList._defaults(this);
  }

  ProjectWithPolicyListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projects = $v.projects.toBuilder();
      _lastEvaluatedKey = $v.lastEvaluatedKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectWithPolicyList other) {
    _$v = other as _$ProjectWithPolicyList;
  }

  @override
  void update(void Function(ProjectWithPolicyListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectWithPolicyList build() => _build();

  _$ProjectWithPolicyList _build() {
    _$ProjectWithPolicyList _$result;
    try {
      _$result = _$v ??
          _$ProjectWithPolicyList._(
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
            r'ProjectWithPolicyList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
