// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_project_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProjectInput extends UpdateProjectInput {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? identityVerificationEnabled;

  factory _$UpdateProjectInput(
          [void Function(UpdateProjectInputBuilder)? updates]) =>
      (UpdateProjectInputBuilder()..update(updates))._build();

  _$UpdateProjectInput._(
      {this.name, this.description, this.identityVerificationEnabled})
      : super._();
  @override
  UpdateProjectInput rebuild(
          void Function(UpdateProjectInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateProjectInputBuilder toBuilder() =>
      UpdateProjectInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProjectInput &&
        name == other.name &&
        description == other.description &&
        identityVerificationEnabled == other.identityVerificationEnabled;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, identityVerificationEnabled.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateProjectInput')
          ..add('name', name)
          ..add('description', description)
          ..add('identityVerificationEnabled', identityVerificationEnabled))
        .toString();
  }
}

class UpdateProjectInputBuilder
    implements Builder<UpdateProjectInput, UpdateProjectInputBuilder> {
  _$UpdateProjectInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _identityVerificationEnabled;
  bool? get identityVerificationEnabled => _$this._identityVerificationEnabled;
  set identityVerificationEnabled(bool? identityVerificationEnabled) =>
      _$this._identityVerificationEnabled = identityVerificationEnabled;

  UpdateProjectInputBuilder() {
    UpdateProjectInput._defaults(this);
  }

  UpdateProjectInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _identityVerificationEnabled = $v.identityVerificationEnabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProjectInput other) {
    _$v = other as _$UpdateProjectInput;
  }

  @override
  void update(void Function(UpdateProjectInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProjectInput build() => _build();

  _$UpdateProjectInput _build() {
    final _$result = _$v ??
        _$UpdateProjectInput._(
          name: name,
          description: description,
          identityVerificationEnabled: identityVerificationEnabled,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
