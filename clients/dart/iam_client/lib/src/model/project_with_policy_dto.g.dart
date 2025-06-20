// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_with_policy_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProjectWithPolicyDto extends ProjectWithPolicyDto {
  @override
  final String id;
  @override
  final String name;
  @override
  final PolicyDto policy;

  factory _$ProjectWithPolicyDto(
          [void Function(ProjectWithPolicyDtoBuilder)? updates]) =>
      (new ProjectWithPolicyDtoBuilder()..update(updates))._build();

  _$ProjectWithPolicyDto._(
      {required this.id, required this.name, required this.policy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ProjectWithPolicyDto', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, r'ProjectWithPolicyDto', 'name');
    BuiltValueNullFieldError.checkNotNull(
        policy, r'ProjectWithPolicyDto', 'policy');
  }

  @override
  ProjectWithPolicyDto rebuild(
          void Function(ProjectWithPolicyDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectWithPolicyDtoBuilder toBuilder() =>
      new ProjectWithPolicyDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectWithPolicyDto &&
        id == other.id &&
        name == other.name &&
        policy == other.policy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectWithPolicyDto')
          ..add('id', id)
          ..add('name', name)
          ..add('policy', policy))
        .toString();
  }
}

class ProjectWithPolicyDtoBuilder
    implements Builder<ProjectWithPolicyDto, ProjectWithPolicyDtoBuilder> {
  _$ProjectWithPolicyDto? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PolicyDtoBuilder? _policy;
  PolicyDtoBuilder get policy => _$this._policy ??= new PolicyDtoBuilder();
  set policy(PolicyDtoBuilder? policy) => _$this._policy = policy;

  ProjectWithPolicyDtoBuilder() {
    ProjectWithPolicyDto._defaults(this);
  }

  ProjectWithPolicyDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _policy = $v.policy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectWithPolicyDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectWithPolicyDto;
  }

  @override
  void update(void Function(ProjectWithPolicyDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectWithPolicyDto build() => _build();

  _$ProjectWithPolicyDto _build() {
    _$ProjectWithPolicyDto _$result;
    try {
      _$result = _$v ??
          new _$ProjectWithPolicyDto._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ProjectWithPolicyDto', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'ProjectWithPolicyDto', 'name'),
            policy: policy.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policy';
        policy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectWithPolicyDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
