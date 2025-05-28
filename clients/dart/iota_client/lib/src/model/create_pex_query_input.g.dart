// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_pex_query_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreatePexQueryInput extends CreatePexQueryInput {
  @override
  final String name;
  @override
  final String vpDefinition;
  @override
  final String? description;

  factory _$CreatePexQueryInput(
          [void Function(CreatePexQueryInputBuilder)? updates]) =>
      (CreatePexQueryInputBuilder()..update(updates))._build();

  _$CreatePexQueryInput._(
      {required this.name, required this.vpDefinition, this.description})
      : super._();
  @override
  CreatePexQueryInput rebuild(
          void Function(CreatePexQueryInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePexQueryInputBuilder toBuilder() =>
      CreatePexQueryInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePexQueryInput &&
        name == other.name &&
        vpDefinition == other.vpDefinition &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, vpDefinition.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreatePexQueryInput')
          ..add('name', name)
          ..add('vpDefinition', vpDefinition)
          ..add('description', description))
        .toString();
  }
}

class CreatePexQueryInputBuilder
    implements Builder<CreatePexQueryInput, CreatePexQueryInputBuilder> {
  _$CreatePexQueryInput? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _vpDefinition;
  String? get vpDefinition => _$this._vpDefinition;
  set vpDefinition(String? vpDefinition) => _$this._vpDefinition = vpDefinition;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreatePexQueryInputBuilder() {
    CreatePexQueryInput._defaults(this);
  }

  CreatePexQueryInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _vpDefinition = $v.vpDefinition;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePexQueryInput other) {
    _$v = other as _$CreatePexQueryInput;
  }

  @override
  void update(void Function(CreatePexQueryInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePexQueryInput build() => _build();

  _$CreatePexQueryInput _build() {
    final _$result = _$v ??
        _$CreatePexQueryInput._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'CreatePexQueryInput', 'name'),
          vpDefinition: BuiltValueNullFieldError.checkNotNull(
              vpDefinition, r'CreatePexQueryInput', 'vpDefinition'),
          description: description,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
