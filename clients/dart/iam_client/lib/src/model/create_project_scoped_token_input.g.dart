// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_scoped_token_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateProjectScopedTokenInput extends CreateProjectScopedTokenInput {
  @override
  final String projectId;

  factory _$CreateProjectScopedTokenInput(
          [void Function(CreateProjectScopedTokenInputBuilder)? updates]) =>
      (new CreateProjectScopedTokenInputBuilder()..update(updates))._build();

  _$CreateProjectScopedTokenInput._({required this.projectId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        projectId, r'CreateProjectScopedTokenInput', 'projectId');
  }

  @override
  CreateProjectScopedTokenInput rebuild(
          void Function(CreateProjectScopedTokenInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProjectScopedTokenInputBuilder toBuilder() =>
      new CreateProjectScopedTokenInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProjectScopedTokenInput &&
        projectId == other.projectId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, projectId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProjectScopedTokenInput')
          ..add('projectId', projectId))
        .toString();
  }
}

class CreateProjectScopedTokenInputBuilder
    implements
        Builder<CreateProjectScopedTokenInput,
            CreateProjectScopedTokenInputBuilder> {
  _$CreateProjectScopedTokenInput? _$v;

  String? _projectId;
  String? get projectId => _$this._projectId;
  set projectId(String? projectId) => _$this._projectId = projectId;

  CreateProjectScopedTokenInputBuilder() {
    CreateProjectScopedTokenInput._defaults(this);
  }

  CreateProjectScopedTokenInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectId = $v.projectId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProjectScopedTokenInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateProjectScopedTokenInput;
  }

  @override
  void update(void Function(CreateProjectScopedTokenInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProjectScopedTokenInput build() => _build();

  _$CreateProjectScopedTokenInput _build() {
    final _$result = _$v ??
        new _$CreateProjectScopedTokenInput._(
          projectId: BuiltValueNullFieldError.checkNotNull(
              projectId, r'CreateProjectScopedTokenInput', 'projectId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
