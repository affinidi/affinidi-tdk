// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_project_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateProjectInput extends CreateProjectInput {
  @override
  final String name;
  @override
  final String? description;

  factory _$CreateProjectInput(
          [void Function(CreateProjectInputBuilder)? updates]) =>
      (new CreateProjectInputBuilder()..update(updates))._build();

  _$CreateProjectInput._({required this.name, this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'CreateProjectInput', 'name');
  }

  @override
  CreateProjectInput rebuild(
          void Function(CreateProjectInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateProjectInputBuilder toBuilder() =>
      new CreateProjectInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateProjectInput &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateProjectInput')
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class CreateProjectInputBuilder
    implements Builder<CreateProjectInput, CreateProjectInputBuilder> {
  _$CreateProjectInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateProjectInputBuilder() {
    CreateProjectInput._defaults(this);
  }

  CreateProjectInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateProjectInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateProjectInput;
  }

  @override
  void update(void Function(CreateProjectInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateProjectInput build() => _build();

  _$CreateProjectInput _build() {
    final _$result = _$v ??
        new _$CreateProjectInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreateProjectInput', 'name'),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
